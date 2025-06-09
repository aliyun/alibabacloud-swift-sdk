import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewaySLS
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._productId = "Sls"
        var gatewayClient: AlibabacloudGatewaySLS.Client = try AlibabacloudGatewaySLS.Client()
        self._spi = gatewayClient
        self._endpointRule = "central"
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyConfigToMachineGroupWithOptions(_ project: String, _ machineGroup: String, _ configName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyConfigToMachineGroupResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyConfigToMachineGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/machinegroups/" + (machineGroup as! String) + "/configs/" + (configName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyConfigToMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyConfigToMachineGroup(_ project: String, _ machineGroup: String, _ configName: String) async throws -> ApplyConfigToMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await applyConfigToMachineGroupWithOptions(project as! String, machineGroup as! String, configName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func callAiToolsWithOptions(_ request: CallAiToolsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CallAiToolsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["params"] = request.params ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toolName)) {
            body["toolName"] = request.toolName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CallAiTools",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/tool/call",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CallAiToolsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func callAiTools(_ request: CallAiToolsRequest) async throws -> CallAiToolsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await callAiToolsWithOptions(request as! CallAiToolsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroupWithOptions(_ project: String, _ request: ChangeResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["resourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/resourcegroup",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroup(_ project: String, _ request: ChangeResourceGroupRequest) async throws -> ChangeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await changeResourceGroupWithOptions(project as! String, request as! ChangeResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func consumerGroupHeartBeatWithOptions(_ project: String, _ logstore: String, _ consumerGroup: String, _ request: ConsumerGroupHeartBeatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ConsumerGroupHeartBeatResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consumer)) {
            query["consumer"] = request.consumer ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? []
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConsumerGroupHeartBeat",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/consumergroups/" + (consumerGroup as! String) + "?type=heartbeat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConsumerGroupHeartBeatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func consumerGroupHeartBeat(_ project: String, _ logstore: String, _ consumerGroup: String, _ request: ConsumerGroupHeartBeatRequest) async throws -> ConsumerGroupHeartBeatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await consumerGroupHeartBeatWithOptions(project as! String, logstore as! String, consumerGroup as! String, request as! ConsumerGroupHeartBeatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func consumerGroupUpdateCheckPointWithOptions(_ project: String, _ logstore: String, _ consumerGroup: String, _ request: ConsumerGroupUpdateCheckPointRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ConsumerGroupUpdateCheckPointResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consumer)) {
            query["consumer"] = request.consumer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceSuccess)) {
            query["forceSuccess"] = request.forceSuccess!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkpoint)) {
            body["checkpoint"] = request.checkpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shard)) {
            body["shard"] = request.shard!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConsumerGroupUpdateCheckPoint",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/consumergroups/" + (consumerGroup as! String) + "?type=checkpoint",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConsumerGroupUpdateCheckPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func consumerGroupUpdateCheckPoint(_ project: String, _ logstore: String, _ consumerGroup: String, _ request: ConsumerGroupUpdateCheckPointRequest) async throws -> ConsumerGroupUpdateCheckPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await consumerGroupUpdateCheckPointWithOptions(project as! String, logstore as! String, consumerGroup as! String, request as! ConsumerGroupUpdateCheckPointRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgentInstanceConfigWithOptions(_ request: CreateAgentInstanceConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAgentInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributes)) {
            body["attributes"] = request.attributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configType)) {
            body["configType"] = request.configType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grayConfigs)) {
            body["grayConfigs"] = request.grayConfigs ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAgentInstanceConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/agentinstanceconfigs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAgentInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgentInstanceConfig(_ request: CreateAgentInstanceConfigRequest) async throws -> CreateAgentInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAgentInstanceConfigWithOptions(request as! CreateAgentInstanceConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlertWithOptions(_ project: String, _ request: CreateAlertRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            body["schedule"] = request.schedule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAlert",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/alerts",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlert(_ project: String, _ request: CreateAlertRequest) async throws -> CreateAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAlertWithOptions(project as! String, request as! CreateAlertRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAnnotationDataSetWithOptions(_ request: CreateAnnotationDataSetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAnnotationDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["datasetId"] = request.datasetId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAnnotationDataSet",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationdataset",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAnnotationDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAnnotationDataSet(_ request: CreateAnnotationDataSetRequest) async throws -> CreateAnnotationDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAnnotationDataSetWithOptions(request as! CreateAnnotationDataSetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAnnotationLabelWithOptions(_ request: CreateAnnotationLabelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAnnotationLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAnnotationLabel",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationlabel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAnnotationLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAnnotationLabel(_ request: CreateAnnotationLabelRequest) async throws -> CreateAnnotationLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAnnotationLabelWithOptions(request as! CreateAnnotationLabelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConfigWithOptions(_ project: String, _ request: CreateConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/configs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConfig(_ project: String, _ request: CreateConfigRequest) async throws -> CreateConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createConfigWithOptions(project as! String, request as! CreateConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerGroupWithOptions(_ project: String, _ logstore: String, _ request: CreateConsumerGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConsumerGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consumerGroup)) {
            body["consumerGroup"] = request.consumerGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["order"] = request.order!;
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            body["timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConsumerGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/consumergroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConsumerGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerGroup(_ project: String, _ logstore: String, _ request: CreateConsumerGroupRequest) async throws -> CreateConsumerGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createConsumerGroupWithOptions(project as! String, logstore as! String, request as! CreateConsumerGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDashboardWithOptions(_ project: String, _ request: CreateDashboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDashboardResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDashboard",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/dashboards",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDashboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDashboard(_ project: String, _ request: CreateDashboardRequest) async throws -> CreateDashboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDashboardWithOptions(project as! String, request as! CreateDashboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDomainWithOptions(_ project: String, _ request: CreateDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            body["domainName"] = request.domainName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDomain",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/domains",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDomain(_ project: String, _ request: CreateDomainRequest) async throws -> CreateDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDomainWithOptions(project as! String, request as! CreateDomainRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDownloadJobWithOptions(_ project: String, _ request: CreateDownloadJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDownloadJobResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDownloadJob",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/downloadjobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDownloadJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDownloadJob(_ project: String, _ request: CreateDownloadJobRequest) async throws -> CreateDownloadJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDownloadJobWithOptions(project as! String, request as! CreateDownloadJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createETLWithOptions(_ project: String, _ request: CreateETLRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateETLResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateETL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/etls",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateETLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createETL(_ project: String, _ request: CreateETLRequest) async throws -> CreateETLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createETLWithOptions(project as! String, request as! CreateETLRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIndexWithOptions(_ project: String, _ logstore: String, _ request: CreateIndexRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIndexResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIndex",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/index",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIndex(_ project: String, _ logstore: String, _ request: CreateIndexRequest) async throws -> CreateIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIndexWithOptions(project as! String, logstore as! String, request as! CreateIndexRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogStoreWithOptions(_ project: String, _ request: CreateLogStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLogStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appendMeta)) {
            body["appendMeta"] = request.appendMeta!;
        }
        if (!TeaUtils.Client.isUnset(request.autoSplit)) {
            body["autoSplit"] = request.autoSplit!;
        }
        if (!TeaUtils.Client.isUnset(request.enableTracking)) {
            body["enable_tracking"] = request.enableTracking!;
        }
        if (!TeaUtils.Client.isUnset(request.encryptConf)) {
            body["encrypt_conf"] = request.encryptConf!;
        }
        if (!TeaUtils.Client.isUnset(request.hotTtl)) {
            body["hot_ttl"] = request.hotTtl!;
        }
        if (!TeaUtils.Client.isUnset(request.infrequentAccessTTL)) {
            body["infrequentAccessTTL"] = request.infrequentAccessTTL!;
        }
        if (!TeaUtils.Client.isUnset(request.logstoreName)) {
            body["logstoreName"] = request.logstoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxSplitShard)) {
            body["maxSplitShard"] = request.maxSplitShard!;
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processorId)) {
            body["processorId"] = request.processorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shardCount)) {
            body["shardCount"] = request.shardCount!;
        }
        if (!TeaUtils.Client.isUnset(request.telemetryType)) {
            body["telemetryType"] = request.telemetryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttl)) {
            body["ttl"] = request.ttl!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLogStore",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogStore(_ project: String, _ request: CreateLogStoreRequest) async throws -> CreateLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createLogStoreWithOptions(project as! String, request as! CreateLogStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoggingWithOptions(_ project: String, _ request: CreateLoggingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLoggingResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.loggingDetails)) {
            body["loggingDetails"] = request.loggingDetails ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.loggingProject)) {
            body["loggingProject"] = request.loggingProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLogging",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logging",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogging(_ project: String, _ request: CreateLoggingRequest) async throws -> CreateLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createLoggingWithOptions(project as! String, request as! CreateLoggingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogtailPipelineConfigWithOptions(_ project: String, _ request: CreateLogtailPipelineConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLogtailPipelineConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregators)) {
            body["aggregators"] = request.aggregators ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.configName)) {
            body["configName"] = request.configName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flushers)) {
            body["flushers"] = request.flushers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.global)) {
            body["global"] = request.global ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.inputs)) {
            body["inputs"] = request.inputs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.logSample)) {
            body["logSample"] = request.logSample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processors)) {
            body["processors"] = request.processors ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLogtailPipelineConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/pipelineconfigs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLogtailPipelineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogtailPipelineConfig(_ project: String, _ request: CreateLogtailPipelineConfigRequest) async throws -> CreateLogtailPipelineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createLogtailPipelineConfigWithOptions(project as! String, request as! CreateLogtailPipelineConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMachineGroupWithOptions(_ project: String, _ request: CreateMachineGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMachineGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupAttribute)) {
            body["groupAttribute"] = request.groupAttribute!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["groupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            body["groupType"] = request.groupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.machineIdentifyType)) {
            body["machineIdentifyType"] = request.machineIdentifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.machineList)) {
            body["machineList"] = request.machineList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMachineGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/machinegroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMachineGroup(_ project: String, _ request: CreateMachineGroupRequest) async throws -> CreateMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMachineGroupWithOptions(project as! String, request as! CreateMachineGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMaxComputeExportWithOptions(_ project: String, _ request: CreateMaxComputeExportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMaxComputeExportResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMaxComputeExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/maxcomputeexports",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMaxComputeExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMaxComputeExport(_ project: String, _ request: CreateMaxComputeExportRequest) async throws -> CreateMaxComputeExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMaxComputeExportWithOptions(project as! String, request as! CreateMaxComputeExportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMetricStoreWithOptions(_ project: String, _ request: CreateMetricStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMetricStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoSplit)) {
            body["autoSplit"] = request.autoSplit!;
        }
        if (!TeaUtils.Client.isUnset(request.hotTtl)) {
            body["hot_ttl"] = request.hotTtl!;
        }
        if (!TeaUtils.Client.isUnset(request.infrequentAccessTTL)) {
            body["infrequentAccessTTL"] = request.infrequentAccessTTL!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSplitShard)) {
            body["maxSplitShard"] = request.maxSplitShard!;
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            body["metricType"] = request.metricType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shardCount)) {
            body["shardCount"] = request.shardCount!;
        }
        if (!TeaUtils.Client.isUnset(request.ttl)) {
            body["ttl"] = request.ttl!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMetricStore",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/metricstores",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMetricStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMetricStore(_ project: String, _ request: CreateMetricStoreRequest) async throws -> CreateMetricStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMetricStoreWithOptions(project as! String, request as! CreateMetricStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOSSExportWithOptions(_ project: String, _ request: CreateOSSExportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOSSExportResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOSSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossexports",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOSSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOSSExport(_ project: String, _ request: CreateOSSExportRequest) async throws -> CreateOSSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createOSSExportWithOptions(project as! String, request as! CreateOSSExportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOSSHDFSExportWithOptions(_ project: String, _ request: CreateOSSHDFSExportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOSSHDFSExportResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOSSHDFSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/osshdfsexports",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOSSHDFSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOSSHDFSExport(_ project: String, _ request: CreateOSSHDFSExportRequest) async throws -> CreateOSSHDFSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createOSSHDFSExportWithOptions(project as! String, request as! CreateOSSHDFSExportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOSSIngestionWithOptions(_ project: String, _ request: CreateOSSIngestionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOSSIngestionResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            body["schedule"] = request.schedule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOSSIngestion",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossingestions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOSSIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOSSIngestion(_ project: String, _ request: CreateOSSIngestionRequest) async throws -> CreateOSSIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createOSSIngestionWithOptions(project as! String, request as! CreateOSSIngestionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProjectWithOptions(_ request: CreateProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataRedundancyType)) {
            body["dataRedundancyType"] = request.dataRedundancyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["projectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recycleBinEnabled)) {
            body["recycleBinEnabled"] = request.recycleBinEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProject",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProject(_ request: CreateProjectRequest) async throws -> CreateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProjectWithOptions(request as! CreateProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSavedSearchWithOptions(_ project: String, _ request: CreateSavedSearchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSavedSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logstore)) {
            body["logstore"] = request.logstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.savedsearchName)) {
            body["savedsearchName"] = request.savedsearchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchQuery)) {
            body["searchQuery"] = request.searchQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSavedSearch",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/savedsearches",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSavedSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSavedSearch(_ project: String, _ request: CreateSavedSearchRequest) async throws -> CreateSavedSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSavedSearchWithOptions(project as! String, request as! CreateSavedSearchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduledSQLWithOptions(_ project: String, _ request: CreateScheduledSQLRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScheduledSQLResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            body["schedule"] = request.schedule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScheduledSQL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/scheduledsqls",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScheduledSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduledSQL(_ project: String, _ request: CreateScheduledSQLRequest) async throws -> CreateScheduledSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createScheduledSQLWithOptions(project as! String, request as! CreateScheduledSQLRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSqlInstanceWithOptions(_ project: String, _ request: CreateSqlInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSqlInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cu)) {
            body["cu"] = request.cu!;
        }
        if (!TeaUtils.Client.isUnset(request.useAsDefault)) {
            body["useAsDefault"] = request.useAsDefault!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSqlInstance",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/sqlinstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSqlInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSqlInstance(_ project: String, _ request: CreateSqlInstanceRequest) async throws -> CreateSqlInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSqlInstanceWithOptions(project as! String, request as! CreateSqlInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStoreViewWithOptions(_ project: String, _ request: CreateStoreViewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStoreViewResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeType)) {
            body["storeType"] = request.storeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stores)) {
            body["stores"] = request.stores ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStoreView",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/storeviews",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStoreViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStoreView(_ project: String, _ request: CreateStoreViewRequest) async throws -> CreateStoreViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createStoreViewWithOptions(project as! String, request as! CreateStoreViewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTicketWithOptions(_ request: CreateTicketRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessTokenExpirationTime)) {
            query["accessTokenExpirationTime"] = request.accessTokenExpirationTime!;
        }
        if (!TeaUtils.Client.isUnset(request.expirationTime)) {
            query["expirationTime"] = request.expirationTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTicket",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/tickets",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTicket(_ request: CreateTicketRequest) async throws -> CreateTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTicketWithOptions(request as! CreateTicketRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAgentInstanceConfigWithOptions(_ configType: String, _ request: DeleteAgentInstanceConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAgentInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributes)) {
            query["attributes"] = request.attributes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAgentInstanceConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/agentinstanceconfigs/" + (configType as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAgentInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAgentInstanceConfig(_ configType: String, _ request: DeleteAgentInstanceConfigRequest) async throws -> DeleteAgentInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAgentInstanceConfigWithOptions(configType as! String, request as! DeleteAgentInstanceConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlertWithOptions(_ project: String, _ alertName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAlertResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAlert",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/alerts/" + (alertName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlert(_ project: String, _ alertName: String) async throws -> DeleteAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAlertWithOptions(project as! String, alertName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAnnotationDataWithOptions(_ datasetId: String, _ annotationdataId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAnnotationDataResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAnnotationData",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationdataset/" + (datasetId as! String) + "/annotationdata/" + (annotationdataId as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAnnotationDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAnnotationData(_ datasetId: String, _ annotationdataId: String) async throws -> DeleteAnnotationDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAnnotationDataWithOptions(datasetId as! String, annotationdataId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAnnotationDataSetWithOptions(_ datasetId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAnnotationDataSetResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAnnotationDataSet",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationdataset/" + (datasetId as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAnnotationDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAnnotationDataSet(_ datasetId: String) async throws -> DeleteAnnotationDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAnnotationDataSetWithOptions(datasetId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAnnotationLabelWithOptions(_ labelId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAnnotationLabelResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAnnotationLabel",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationlabel/" + (labelId as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAnnotationLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAnnotationLabel(_ labelId: String) async throws -> DeleteAnnotationLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAnnotationLabelWithOptions(labelId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCollectionPolicyWithOptions(_ policyName: String, _ request: DeleteCollectionPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCollectionPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataCode)) {
            query["dataCode"] = request.dataCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["productCode"] = request.productCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCollectionPolicy",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/collectionpolicy/" + (policyName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCollectionPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCollectionPolicy(_ policyName: String, _ request: DeleteCollectionPolicyRequest) async throws -> DeleteCollectionPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteCollectionPolicyWithOptions(policyName as! String, request as! DeleteCollectionPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfigWithOptions(_ project: String, _ configName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConfigResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/configs/" + (configName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfig(_ project: String, _ configName: String) async throws -> DeleteConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteConfigWithOptions(project as! String, configName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConsumerGroupWithOptions(_ project: String, _ logstore: String, _ consumerGroup: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConsumerGroupResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConsumerGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/consumergroups/" + (consumerGroup as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConsumerGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConsumerGroup(_ project: String, _ logstore: String, _ consumerGroup: String) async throws -> DeleteConsumerGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteConsumerGroupWithOptions(project as! String, logstore as! String, consumerGroup as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDashboardWithOptions(_ project: String, _ dashboardName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDashboardResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDashboard",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/dashboards/" + (dashboardName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDashboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDashboard(_ project: String, _ dashboardName: String) async throws -> DeleteDashboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDashboardWithOptions(project as! String, dashboardName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomainWithOptions(_ project: String, _ domainName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDomainResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDomain",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/domains/" + (domainName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomain(_ project: String, _ domainName: String) async throws -> DeleteDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDomainWithOptions(project as! String, domainName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDownloadJobWithOptions(_ project: String, _ downloadJobName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDownloadJobResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDownloadJob",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/downloadjobs/" + (downloadJobName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDownloadJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDownloadJob(_ project: String, _ downloadJobName: String) async throws -> DeleteDownloadJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDownloadJobWithOptions(project as! String, downloadJobName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteETLWithOptions(_ project: String, _ etlName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteETLResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteETL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/etls/" + (etlName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteETLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteETL(_ project: String, _ etlName: String) async throws -> DeleteETLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteETLWithOptions(project as! String, etlName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIndexWithOptions(_ project: String, _ logstore: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIndexResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIndex",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/index",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIndex(_ project: String, _ logstore: String) async throws -> DeleteIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIndexWithOptions(project as! String, logstore as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIngestProcessorWithOptions(_ project: String, _ processorName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIngestProcessorResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIngestProcessor",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ingestprocessors/" + (processorName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIngestProcessorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIngestProcessor(_ project: String, _ processorName: String) async throws -> DeleteIngestProcessorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIngestProcessorWithOptions(project as! String, processorName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogStoreWithOptions(_ project: String, _ logstore: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLogStoreResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLogStore",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogStore(_ project: String, _ logstore: String) async throws -> DeleteLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteLogStoreWithOptions(project as! String, logstore as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLoggingWithOptions(_ project: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLoggingResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLogging",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logging",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogging(_ project: String) async throws -> DeleteLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteLoggingWithOptions(project as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogtailPipelineConfigWithOptions(_ project: String, _ configName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLogtailPipelineConfigResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLogtailPipelineConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/pipelineconfigs/" + (configName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLogtailPipelineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogtailPipelineConfig(_ project: String, _ configName: String) async throws -> DeleteLogtailPipelineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteLogtailPipelineConfigWithOptions(project as! String, configName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMachineGroupWithOptions(_ project: String, _ machineGroup: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMachineGroupResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMachineGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/machinegroups/" + (machineGroup as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMachineGroup(_ project: String, _ machineGroup: String) async throws -> DeleteMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMachineGroupWithOptions(project as! String, machineGroup as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMaxComputeExportWithOptions(_ project: String, _ mcExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMaxComputeExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMaxComputeExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/maxcomputeexports/" + (mcExportName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMaxComputeExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMaxComputeExport(_ project: String, _ mcExportName: String) async throws -> DeleteMaxComputeExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMaxComputeExportWithOptions(project as! String, mcExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMetricStoreWithOptions(_ project: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMetricStoreResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMetricStore",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/metricstores/" + (name as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "none",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMetricStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMetricStore(_ project: String, _ name: String) async throws -> DeleteMetricStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMetricStoreWithOptions(project as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOSSExportWithOptions(_ project: String, _ ossExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteOSSExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteOSSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossexports/" + (ossExportName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteOSSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOSSExport(_ project: String, _ ossExportName: String) async throws -> DeleteOSSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteOSSExportWithOptions(project as! String, ossExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOSSHDFSExportWithOptions(_ project: String, _ ossExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteOSSHDFSExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteOSSHDFSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/osshdfsexports/" + (ossExportName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteOSSHDFSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOSSHDFSExport(_ project: String, _ ossExportName: String) async throws -> DeleteOSSHDFSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteOSSHDFSExportWithOptions(project as! String, ossExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOSSIngestionWithOptions(_ project: String, _ ossIngestionName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteOSSIngestionResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteOSSIngestion",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossingestions/" + (ossIngestionName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteOSSIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOSSIngestion(_ project: String, _ ossIngestionName: String) async throws -> DeleteOSSIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteOSSIngestionWithOptions(project as! String, ossIngestionName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProjectWithOptions(_ project: String, _ request: DeleteProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forceDelete)) {
            query["forceDelete"] = request.forceDelete!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProject",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProject(_ project: String, _ request: DeleteProjectRequest) async throws -> DeleteProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProjectWithOptions(project as! String, request as! DeleteProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProjectPolicyWithOptions(_ project: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProjectPolicyResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProjectPolicy",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/policy",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProjectPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProjectPolicy(_ project: String) async throws -> DeleteProjectPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProjectPolicyWithOptions(project as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSavedSearchWithOptions(_ project: String, _ savedsearchName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSavedSearchResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSavedSearch",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/savedsearches/" + (savedsearchName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSavedSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSavedSearch(_ project: String, _ savedsearchName: String) async throws -> DeleteSavedSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSavedSearchWithOptions(project as! String, savedsearchName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScheduledSQLWithOptions(_ project: String, _ scheduledSQLName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteScheduledSQLResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteScheduledSQL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/scheduledsqls/" + (scheduledSQLName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteScheduledSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScheduledSQL(_ project: String, _ scheduledSQLName: String) async throws -> DeleteScheduledSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteScheduledSQLWithOptions(project as! String, scheduledSQLName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStoreViewWithOptions(_ project: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStoreViewResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStoreView",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/storeviews/" + (name as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStoreViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStoreView(_ project: String, _ name: String) async throws -> DeleteStoreViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteStoreViewWithOptions(project as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/regions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions(_ request: DescribeRegionsRequest) async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeRegionsWithOptions(request as! DescribeRegionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableAlertWithOptions(_ project: String, _ alertName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableAlertResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableAlert",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/alerts/" + (alertName as! String) + "?action=disable",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableAlert(_ project: String, _ alertName: String) async throws -> DisableAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableAlertWithOptions(project as! String, alertName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableScheduledSQLWithOptions(_ project: String, _ scheduledSQLName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableScheduledSQLResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableScheduledSQL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/scheduledsqls/" + (scheduledSQLName as! String) + "?action=disable",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableScheduledSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableScheduledSQL(_ project: String, _ scheduledSQLName: String) async throws -> DisableScheduledSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableScheduledSQLWithOptions(project as! String, scheduledSQLName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableAlertWithOptions(_ project: String, _ alertName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableAlertResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableAlert",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/alerts/" + (alertName as! String) + "?action=enable",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableAlert(_ project: String, _ alertName: String) async throws -> EnableAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableAlertWithOptions(project as! String, alertName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableScheduledSQLWithOptions(_ project: String, _ scheduledSQLName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableScheduledSQLResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableScheduledSQL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/scheduledsqls/" + (scheduledSQLName as! String) + "?action=enable",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableScheduledSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableScheduledSQL(_ project: String, _ scheduledSQLName: String) async throws -> EnableScheduledSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableScheduledSQLWithOptions(project as! String, scheduledSQLName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgentInstanceConfigWithOptions(_ configType: String, _ request: GetAgentInstanceConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAgentInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributes)) {
            query["attributes"] = request.attributes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAgentInstanceConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/agentinstanceconfigs/" + (configType as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAgentInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAgentInstanceConfig(_ configType: String, _ request: GetAgentInstanceConfigRequest) async throws -> GetAgentInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAgentInstanceConfigWithOptions(configType as! String, request as! GetAgentInstanceConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlertWithOptions(_ project: String, _ alertName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAlertResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAlert",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/alerts/" + (alertName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlert(_ project: String, _ alertName: String) async throws -> GetAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAlertWithOptions(project as! String, alertName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAnnotationDataWithOptions(_ datasetId: String, _ annotationdataId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAnnotationDataResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAnnotationData",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationdataset/" + (datasetId as! String) + "/annotationdata/" + (annotationdataId as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAnnotationDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAnnotationData(_ datasetId: String, _ annotationdataId: String) async throws -> GetAnnotationDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAnnotationDataWithOptions(datasetId as! String, annotationdataId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAnnotationDataSetWithOptions(_ datasetId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAnnotationDataSetResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAnnotationDataSet",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationdataset/" + (datasetId as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAnnotationDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAnnotationDataSet(_ datasetId: String) async throws -> GetAnnotationDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAnnotationDataSetWithOptions(datasetId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAnnotationLabelWithOptions(_ labelId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAnnotationLabelResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAnnotationLabel",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationlabel/" + (labelId as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAnnotationLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAnnotationLabel(_ labelId: String) async throws -> GetAnnotationLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAnnotationLabelWithOptions(labelId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppliedConfigsWithOptions(_ project: String, _ machineGroup: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAppliedConfigsResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAppliedConfigs",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/machinegroups/" + (machineGroup as! String) + "/configs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAppliedConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppliedConfigs(_ project: String, _ machineGroup: String) async throws -> GetAppliedConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAppliedConfigsWithOptions(project as! String, machineGroup as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppliedMachineGroupsWithOptions(_ project: String, _ configName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAppliedMachineGroupsResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAppliedMachineGroups",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/configs/" + (configName as! String) + "/machinegroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAppliedMachineGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppliedMachineGroups(_ project: String, _ configName: String) async throws -> GetAppliedMachineGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAppliedMachineGroupsWithOptions(project as! String, configName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCheckPointWithOptions(_ project: String, _ logstore: String, _ consumerGroup: String, _ request: GetCheckPointRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCheckPointResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.shard)) {
            query["shard"] = request.shard!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCheckPoint",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/consumergroups/" + (consumerGroup as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCheckPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCheckPoint(_ project: String, _ logstore: String, _ consumerGroup: String, _ request: GetCheckPointRequest) async throws -> GetCheckPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCheckPointWithOptions(project as! String, logstore as! String, consumerGroup as! String, request as! GetCheckPointRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCollectionPolicyWithOptions(_ policyName: String, _ request: GetCollectionPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCollectionPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataCode)) {
            query["dataCode"] = request.dataCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["productCode"] = request.productCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCollectionPolicy",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/collectionpolicy/" + (policyName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCollectionPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCollectionPolicy(_ policyName: String, _ request: GetCollectionPolicyRequest) async throws -> GetCollectionPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCollectionPolicyWithOptions(policyName as! String, request as! GetCollectionPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigWithOptions(_ project: String, _ configName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConfigResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/configs/" + (configName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfig(_ project: String, _ configName: String) async throws -> GetConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getConfigWithOptions(project as! String, configName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getContextLogsWithOptions(_ project: String, _ logstore: String, _ request: GetContextLogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetContextLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backLines)) {
            query["back_lines"] = request.backLines!;
        }
        if (!TeaUtils.Client.isUnset(request.forwardLines)) {
            query["forward_lines"] = request.forwardLines!;
        }
        if (!TeaUtils.Client.isUnset(request.packId)) {
            query["pack_id"] = request.packId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packMeta)) {
            query["pack_meta"] = request.packMeta ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetContextLogs",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "?type=context_log",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetContextLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getContextLogs(_ project: String, _ logstore: String, _ request: GetContextLogsRequest) async throws -> GetContextLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getContextLogsWithOptions(project as! String, logstore as! String, request as! GetContextLogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCursorWithOptions(_ project: String, _ logstore: String, _ shardId: String, _ request: GetCursorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCursorResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["from"] = request.from ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCursor",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/shards/" + (shardId as! String) + "?type=cursor",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCursorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCursor(_ project: String, _ logstore: String, _ shardId: String, _ request: GetCursorRequest) async throws -> GetCursorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCursorWithOptions(project as! String, logstore as! String, shardId as! String, request as! GetCursorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCursorTimeWithOptions(_ project: String, _ logstore: String, _ shardId: String, _ request: GetCursorTimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCursorTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            query["cursor"] = request.cursor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCursorTime",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/shards/" + (shardId as! String) + "?type=cursor_time",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCursorTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCursorTime(_ project: String, _ logstore: String, _ shardId: String, _ request: GetCursorTimeRequest) async throws -> GetCursorTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCursorTimeWithOptions(project as! String, logstore as! String, shardId as! String, request as! GetCursorTimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDashboardWithOptions(_ project: String, _ dashboardName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDashboardResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDashboard",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/dashboards/" + (dashboardName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDashboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDashboard(_ project: String, _ dashboardName: String) async throws -> GetDashboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDashboardWithOptions(project as! String, dashboardName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDownloadJobWithOptions(_ project: String, _ downloadJobName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDownloadJobResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDownloadJob",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/downloadjobs/" + (downloadJobName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDownloadJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDownloadJob(_ project: String, _ downloadJobName: String) async throws -> GetDownloadJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDownloadJobWithOptions(project as! String, downloadJobName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getETLWithOptions(_ project: String, _ etlName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetETLResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetETL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/etls/" + (etlName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetETLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getETL(_ project: String, _ etlName: String) async throws -> GetETLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getETLWithOptions(project as! String, etlName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHistogramsWithOptions(_ project: String, _ logstore: String, _ request: GetHistogramsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHistogramsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            query["to"] = request.to!;
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            query["topic"] = request.topic ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHistograms",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/index?type=histogram",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHistogramsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHistograms(_ project: String, _ logstore: String, _ request: GetHistogramsRequest) async throws -> GetHistogramsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHistogramsWithOptions(project as! String, logstore as! String, request as! GetHistogramsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIndexWithOptions(_ project: String, _ logstore: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIndexResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIndex",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/index",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIndex(_ project: String, _ logstore: String) async throws -> GetIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIndexWithOptions(project as! String, logstore as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIngestProcessorWithOptions(_ project: String, _ processorName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIngestProcessorResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIngestProcessor",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ingestprocessors/" + (processorName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIngestProcessorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIngestProcessor(_ project: String, _ processorName: String) async throws -> GetIngestProcessorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIngestProcessorWithOptions(project as! String, processorName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogStoreWithOptions(_ project: String, _ logstore: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLogStoreResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLogStore",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogStore(_ project: String, _ logstore: String) async throws -> GetLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLogStoreWithOptions(project as! String, logstore as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogStoreMeteringModeWithOptions(_ project: String, _ logstore: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLogStoreMeteringModeResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLogStoreMeteringMode",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/meteringmode",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLogStoreMeteringModeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogStoreMeteringMode(_ project: String, _ logstore: String) async throws -> GetLogStoreMeteringModeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLogStoreMeteringModeWithOptions(project as! String, logstore as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLoggingWithOptions(_ project: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLoggingResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLogging",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logging",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogging(_ project: String) async throws -> GetLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLoggingWithOptions(project as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogsWithOptions(_ project: String, _ logstore: String, _ request: GetLogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.line)) {
            query["line"] = request.line!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.powerSql)) {
            query["powerSql"] = request.powerSql!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reverse)) {
            query["reverse"] = request.reverse!;
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            query["to"] = request.to!;
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            query["topic"] = request.topic ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLogs",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "?type=log",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogs(_ project: String, _ logstore: String, _ request: GetLogsRequest) async throws -> GetLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLogsWithOptions(project as! String, logstore as! String, request as! GetLogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogsV2WithOptions(_ project: String, _ logstore: String, _ request: GetLogsV2Request, _ headers: GetLogsV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLogsV2Response {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forward)) {
            body["forward"] = request.forward!;
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            body["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.highlight)) {
            body["highlight"] = request.highlight!;
        }
        if (!TeaUtils.Client.isUnset(request.line)) {
            body["line"] = request.line!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            body["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.powerSql)) {
            body["powerSql"] = request.powerSql!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reverse)) {
            body["reverse"] = request.reverse!;
        }
        if (!TeaUtils.Client.isUnset(request.session)) {
            body["session"] = request.session ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            body["to"] = request.to!;
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.acceptEncoding)) {
            realHeaders["Accept-Encoding"] = TeaUtils.Client.toJSONString(headers.acceptEncoding);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLogsV2",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/logs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLogsV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogsV2(_ project: String, _ logstore: String, _ request: GetLogsV2Request) async throws -> GetLogsV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetLogsV2Headers = GetLogsV2Headers([:])
        return try await getLogsV2WithOptions(project as! String, logstore as! String, request as! GetLogsV2Request, headers as! GetLogsV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogtailPipelineConfigWithOptions(_ project: String, _ configName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLogtailPipelineConfigResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLogtailPipelineConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/pipelineconfigs/" + (configName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLogtailPipelineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogtailPipelineConfig(_ project: String, _ configName: String) async throws -> GetLogtailPipelineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLogtailPipelineConfigWithOptions(project as! String, configName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMLServiceResultsWithOptions(_ serviceName: String, _ request: GetMLServiceResultsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMLServiceResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowBuiltin)) {
            query["allowBuiltin"] = request.allowBuiltin!;
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMLServiceResults",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/service/" + (serviceName as! String) + "/analysis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMLServiceResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMLServiceResults(_ serviceName: String, _ request: GetMLServiceResultsRequest) async throws -> GetMLServiceResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMLServiceResultsWithOptions(serviceName as! String, request as! GetMLServiceResultsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMachineGroupWithOptions(_ project: String, _ machineGroup: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMachineGroupResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMachineGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/machinegroups/" + (machineGroup as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMachineGroup(_ project: String, _ machineGroup: String) async throws -> GetMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMachineGroupWithOptions(project as! String, machineGroup as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMaxComputeExportWithOptions(_ project: String, _ mcExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMaxComputeExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMaxComputeExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/maxcomputeexports/" + (mcExportName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMaxComputeExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMaxComputeExport(_ project: String, _ mcExportName: String) async throws -> GetMaxComputeExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMaxComputeExportWithOptions(project as! String, mcExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMetricStoreWithOptions(_ project: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMetricStoreResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMetricStore",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/metricstores/" + (name as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "none",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMetricStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMetricStore(_ project: String, _ name: String) async throws -> GetMetricStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMetricStoreWithOptions(project as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMetricStoreMeteringModeWithOptions(_ project: String, _ metricStore: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMetricStoreMeteringModeResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMetricStoreMeteringMode",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/metricstores/" + (metricStore as! String) + "/meteringmode",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMetricStoreMeteringModeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMetricStoreMeteringMode(_ project: String, _ metricStore: String) async throws -> GetMetricStoreMeteringModeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMetricStoreMeteringModeWithOptions(project as! String, metricStore as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOSSExportWithOptions(_ project: String, _ ossExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOSSExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOSSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossexports/" + (ossExportName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOSSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOSSExport(_ project: String, _ ossExportName: String) async throws -> GetOSSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOSSExportWithOptions(project as! String, ossExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOSSHDFSExportWithOptions(_ project: String, _ ossExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOSSHDFSExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOSSHDFSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/osshdfsexports/" + (ossExportName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOSSHDFSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOSSHDFSExport(_ project: String, _ ossExportName: String) async throws -> GetOSSHDFSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOSSHDFSExportWithOptions(project as! String, ossExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOSSIngestionWithOptions(_ project: String, _ ossIngestionName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOSSIngestionResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOSSIngestion",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossingestions/" + (ossIngestionName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOSSIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOSSIngestion(_ project: String, _ ossIngestionName: String) async throws -> GetOSSIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOSSIngestionWithOptions(project as! String, ossIngestionName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectWithOptions(_ project: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProject",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProject(_ project: String) async throws -> GetProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProjectWithOptions(project as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectLogsWithOptions(_ project: String, _ request: GetProjectLogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.powerSql)) {
            query["powerSql"] = request.powerSql!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProjectLogs",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectLogs(_ project: String, _ request: GetProjectLogsRequest) async throws -> GetProjectLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProjectLogsWithOptions(project as! String, request as! GetProjectLogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectPolicyWithOptions(_ project: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectPolicyResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProjectPolicy",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/policy",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectPolicy(_ project: String) async throws -> GetProjectPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProjectPolicyWithOptions(project as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSavedSearchWithOptions(_ project: String, _ savedsearchName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSavedSearchResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSavedSearch",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/savedsearches/" + (savedsearchName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSavedSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSavedSearch(_ project: String, _ savedsearchName: String) async throws -> GetSavedSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSavedSearchWithOptions(project as! String, savedsearchName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduledSQLWithOptions(_ project: String, _ scheduledSQLName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScheduledSQLResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScheduledSQL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/scheduledsqls/" + (scheduledSQLName as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScheduledSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScheduledSQL(_ project: String, _ scheduledSQLName: String) async throws -> GetScheduledSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getScheduledSQLWithOptions(project as! String, scheduledSQLName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSlsServiceWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSlsServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSlsService",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/slsservice",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSlsServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSlsService() async throws -> GetSlsServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSlsServiceWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlInstanceWithOptions(_ project: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSqlInstanceResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSqlInstance",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/sqlinstance",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSqlInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlInstance(_ project: String) async throws -> GetSqlInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSqlInstanceWithOptions(project as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStoreViewWithOptions(_ project: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStoreViewResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStoreView",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/storeviews/" + (name as! String),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStoreViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStoreView(_ project: String, _ name: String) async throws -> GetStoreViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getStoreViewWithOptions(project as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStoreViewIndexWithOptions(_ project: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStoreViewIndexResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStoreViewIndex",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/storeviews/" + (name as! String) + "/index",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStoreViewIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStoreViewIndex(_ project: String, _ name: String) async throws -> GetStoreViewIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getStoreViewIndexWithOptions(project as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgentInstanceConfigsWithOptions(_ request: ListAgentInstanceConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAgentInstanceConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributes)) {
            query["attributes"] = request.attributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configType)) {
            query["configType"] = request.configType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAgentInstanceConfigs",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/agentinstanceconfigs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAgentInstanceConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgentInstanceConfigs(_ request: ListAgentInstanceConfigsRequest) async throws -> ListAgentInstanceConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAgentInstanceConfigsWithOptions(request as! ListAgentInstanceConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAiToolsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAiToolsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAiTools",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/tool/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAiToolsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAiTools() async throws -> ListAiToolsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAiToolsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertsWithOptions(_ project: String, _ request: ListAlertsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlertsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logstore)) {
            query["logstore"] = request.logstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlerts",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/alerts",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlertsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlerts(_ project: String, _ request: ListAlertsRequest) async throws -> ListAlertsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAlertsWithOptions(project as! String, request as! ListAlertsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnnotationDataWithOptions(_ datasetId: String, _ request: ListAnnotationDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAnnotationDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAnnotationData",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationdataset/" + (datasetId as! String) + "/annotationdata",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAnnotationDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnnotationData(_ datasetId: String, _ request: ListAnnotationDataRequest) async throws -> ListAnnotationDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAnnotationDataWithOptions(datasetId as! String, request as! ListAnnotationDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnnotationDataSetsWithOptions(_ request: ListAnnotationDataSetsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAnnotationDataSetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAnnotationDataSets",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationdataset",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAnnotationDataSetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnnotationDataSets(_ request: ListAnnotationDataSetsRequest) async throws -> ListAnnotationDataSetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAnnotationDataSetsWithOptions(request as! ListAnnotationDataSetsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnnotationLabelsWithOptions(_ request: ListAnnotationLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAnnotationLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAnnotationLabels",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationlabel",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAnnotationLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnnotationLabels(_ request: ListAnnotationLabelsRequest) async throws -> ListAnnotationLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAnnotationLabelsWithOptions(request as! ListAnnotationLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCollectionPoliciesWithOptions(_ request: ListCollectionPoliciesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCollectionPoliciesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.centralProject)) {
            query["centralProject"] = request.centralProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataCode)) {
            query["dataCode"] = request.dataCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["instanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["policyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["productCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCollectionPolicies",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/collectionpolicy",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCollectionPoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCollectionPolicies(_ request: ListCollectionPoliciesRequest) async throws -> ListCollectionPoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listCollectionPoliciesWithOptions(request as! ListCollectionPoliciesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigWithOptions(_ project: String, _ request: ListConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configName)) {
            query["configName"] = request.configName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logstoreName)) {
            query["logstoreName"] = request.logstoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/configs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfig(_ project: String, _ request: ListConfigRequest) async throws -> ListConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listConfigWithOptions(project as! String, request as! ListConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConsumerGroupWithOptions(_ project: String, _ logstore: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConsumerGroupResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConsumerGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/consumergroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConsumerGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConsumerGroup(_ project: String, _ logstore: String) async throws -> ListConsumerGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listConsumerGroupWithOptions(project as! String, logstore as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDashboardWithOptions(_ project: String, _ tmpReq: ListDashboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDashboardResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var request: ListDashboardShrinkRequest = ListDashboardShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dashboardName)) {
            query["dashboardName"] = request.dashboardName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            query["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDashboard",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/dashboards",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDashboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDashboard(_ project: String, _ request: ListDashboardRequest) async throws -> ListDashboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDashboardWithOptions(project as! String, request as! ListDashboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDomainsWithOptions(_ project: String, _ request: ListDomainsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["domainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDomains",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/domains",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDomains(_ project: String, _ request: ListDomainsRequest) async throws -> ListDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDomainsWithOptions(project as! String, request as! ListDomainsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDownloadJobsWithOptions(_ project: String, _ request: ListDownloadJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDownloadJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logstore)) {
            query["logstore"] = request.logstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDownloadJobs",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/downloadjobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDownloadJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDownloadJobs(_ project: String, _ request: ListDownloadJobsRequest) async throws -> ListDownloadJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDownloadJobsWithOptions(project as! String, request as! ListDownloadJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listETLsWithOptions(_ project: String, _ request: ListETLsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListETLsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logstore)) {
            query["logstore"] = request.logstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListETLs",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/etls",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListETLsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listETLs(_ project: String, _ request: ListETLsRequest) async throws -> ListETLsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listETLsWithOptions(project as! String, request as! ListETLsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIngestProcessorsWithOptions(_ project: String, _ request: ListIngestProcessorsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIngestProcessorsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            query["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.processorName)) {
            query["processorName"] = request.processorName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIngestProcessors",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ingestprocessors",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIngestProcessorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIngestProcessors(_ project: String, _ request: ListIngestProcessorsRequest) async throws -> ListIngestProcessorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIngestProcessorsWithOptions(project as! String, request as! ListIngestProcessorsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogStoresWithOptions(_ project: String, _ request: ListLogStoresRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogStoresResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logstoreName)) {
            query["logstoreName"] = request.logstoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.telemetryType)) {
            query["telemetryType"] = request.telemetryType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogStores",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogStoresResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogStores(_ project: String, _ request: ListLogStoresRequest) async throws -> ListLogStoresResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listLogStoresWithOptions(project as! String, request as! ListLogStoresRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogtailPipelineConfigWithOptions(_ project: String, _ request: ListLogtailPipelineConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogtailPipelineConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configName)) {
            query["configName"] = request.configName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logstoreName)) {
            query["logstoreName"] = request.logstoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogtailPipelineConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/pipelineconfigs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogtailPipelineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogtailPipelineConfig(_ project: String, _ request: ListLogtailPipelineConfigRequest) async throws -> ListLogtailPipelineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listLogtailPipelineConfigWithOptions(project as! String, request as! ListLogtailPipelineConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMachineGroupWithOptions(_ project: String, _ request: ListMachineGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMachineGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["groupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMachineGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/machinegroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMachineGroup(_ project: String, _ request: ListMachineGroupRequest) async throws -> ListMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMachineGroupWithOptions(project as! String, request as! ListMachineGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMachinesWithOptions(_ project: String, _ machineGroup: String, _ request: ListMachinesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMachinesResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMachines",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/machinegroups/" + (machineGroup as! String) + "/machines",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMachinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMachines(_ project: String, _ machineGroup: String, _ request: ListMachinesRequest) async throws -> ListMachinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMachinesWithOptions(project as! String, machineGroup as! String, request as! ListMachinesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMaxComputeExportsWithOptions(_ project: String, _ request: ListMaxComputeExportsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMaxComputeExportsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logstore)) {
            query["logstore"] = request.logstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMaxComputeExports",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/maxcomputeexports",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMaxComputeExportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMaxComputeExports(_ project: String, _ request: ListMaxComputeExportsRequest) async throws -> ListMaxComputeExportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMaxComputeExportsWithOptions(project as! String, request as! ListMaxComputeExportsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMetricStoresWithOptions(_ project: String, _ request: ListMetricStoresRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMetricStoresResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMetricStores",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/metricstores",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "none",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMetricStoresResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMetricStores(_ project: String, _ request: ListMetricStoresRequest) async throws -> ListMetricStoresResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMetricStoresWithOptions(project as! String, request as! ListMetricStoresRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOSSExportsWithOptions(_ project: String, _ request: ListOSSExportsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOSSExportsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logstore)) {
            query["logstore"] = request.logstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOSSExports",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossexports",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOSSExportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOSSExports(_ project: String, _ request: ListOSSExportsRequest) async throws -> ListOSSExportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOSSExportsWithOptions(project as! String, request as! ListOSSExportsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOSSHDFSExportsWithOptions(_ project: String, _ request: ListOSSHDFSExportsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOSSHDFSExportsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logstore)) {
            query["logstore"] = request.logstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOSSHDFSExports",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/osshdfsexports",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOSSHDFSExportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOSSHDFSExports(_ project: String, _ request: ListOSSHDFSExportsRequest) async throws -> ListOSSHDFSExportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOSSHDFSExportsWithOptions(project as! String, request as! ListOSSHDFSExportsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOSSIngestionsWithOptions(_ project: String, _ request: ListOSSIngestionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOSSIngestionsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logstore)) {
            query["logstore"] = request.logstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOSSIngestions",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossingestions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOSSIngestionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOSSIngestions(_ project: String, _ request: ListOSSIngestionsRequest) async throws -> ListOSSIngestionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOSSIngestionsWithOptions(project as! String, request as! ListOSSIngestionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectWithOptions(_ request: ListProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fetchQuota)) {
            query["fetchQuota"] = request.fetchQuota!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["projectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProject",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProject(_ request: ListProjectRequest) async throws -> ListProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectWithOptions(request as! ListProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSavedSearchWithOptions(_ project: String, _ request: ListSavedSearchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSavedSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSavedSearch",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/savedsearches",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSavedSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSavedSearch(_ project: String, _ request: ListSavedSearchRequest) async throws -> ListSavedSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSavedSearchWithOptions(project as! String, request as! ListSavedSearchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScheduledSQLsWithOptions(_ project: String, _ request: ListScheduledSQLsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScheduledSQLsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logstore)) {
            query["logstore"] = request.logstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListScheduledSQLs",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/scheduledsqls",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScheduledSQLsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScheduledSQLs(_ project: String, _ request: ListScheduledSQLsRequest) async throws -> ListScheduledSQLsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listScheduledSQLsWithOptions(project as! String, request as! ListScheduledSQLsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listShardsWithOptions(_ project: String, _ logstore: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListShardsResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListShards",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/shards",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListShardsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listShards(_ project: String, _ logstore: String) async throws -> ListShardsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listShardsWithOptions(project as! String, logstore as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStoreViewsWithOptions(_ project: String, _ request: ListStoreViewsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStoreViewsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.storeType)) {
            query["storeType"] = request.storeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStoreViews",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/storeviews",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStoreViewsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStoreViews(_ project: String, _ request: ListStoreViewsRequest) async throws -> ListStoreViewsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listStoreViewsWithOptions(project as! String, request as! ListStoreViewsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ tmpReq: ListTagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTagResourcesShrinkRequest = ListTagResourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceId)) {
            request.resourceIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceId, "resourceId", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceIdShrink)) {
            query["resourceId"] = request.resourceIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/tags",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mergeShardWithOptions(_ project: String, _ logstore: String, _ shard: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> MergeShardResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MergeShard",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/shards/" + (shard as! String) + "?action=merge",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MergeShardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mergeShard(_ project: String, _ logstore: String, _ shard: String) async throws -> MergeShardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await mergeShardWithOptions(project as! String, logstore as! String, shard as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openSlsServiceWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OpenSlsServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenSlsService",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/slsservice",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenSlsServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openSlsService() async throws -> OpenSlsServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await openSlsServiceWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pullLogsWithOptions(_ project: String, _ logStore: String, _ shardId: String, _ request: PullLogsRequest, _ headers: PullLogsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PullLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.count)) {
            query["count"] = request.count!;
        }
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            query["cursor"] = request.cursor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endCursor)) {
            query["end_cursor"] = request.endCursor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.acceptEncoding)) {
            realHeaders["Accept-Encoding"] = TeaUtils.Client.toJSONString(headers.acceptEncoding);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PullLogs",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logStore as! String) + "/shards/" + (shardId as! String) + "?type=log",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "none",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PullLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pullLogs(_ project: String, _ logStore: String, _ shardId: String, _ request: PullLogsRequest) async throws -> PullLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PullLogsHeaders = PullLogsHeaders([:])
        return try await pullLogsWithOptions(project as! String, logStore as! String, shardId as! String, request as! PullLogsRequest, headers as! PullLogsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putAnnotationDataWithOptions(_ datasetId: String, _ request: PutAnnotationDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PutAnnotationDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotationdataId)) {
            query["annotationdataId"] = request.annotationdataId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mlDataParam)) {
            body["mlDataParam"] = request.mlDataParam!;
        }
        if (!TeaUtils.Client.isUnset(request.rawLog)) {
            body["rawLog"] = request.rawLog ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutAnnotationData",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationdataset/" + (datasetId as! String) + "/annotationdata",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutAnnotationDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putAnnotationData(_ datasetId: String, _ request: PutAnnotationDataRequest) async throws -> PutAnnotationDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await putAnnotationDataWithOptions(datasetId as! String, request as! PutAnnotationDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putIngestProcessorWithOptions(_ project: String, _ processorName: String, _ request: PutIngestProcessorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PutIngestProcessorResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutIngestProcessor",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ingestprocessors/" + (processorName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutIngestProcessorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putIngestProcessor(_ project: String, _ processorName: String, _ request: PutIngestProcessorRequest) async throws -> PutIngestProcessorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await putIngestProcessorWithOptions(project as! String, processorName as! String, request as! PutIngestProcessorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putLogsWithOptions(_ project: String, _ logstore: String, _ request: PutLogsRequest, _ headers: PutLogsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xLogCompresstype)) {
            realHeaders["x-log-compresstype"] = TeaUtils.Client.toJSONString(headers.xLogCompresstype);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutLogs",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/shards/lb",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "protobuf",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putLogs(_ project: String, _ logstore: String, _ request: PutLogsRequest) async throws -> PutLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PutLogsHeaders = PutLogsHeaders([:])
        return try await putLogsWithOptions(project as! String, logstore as! String, request as! PutLogsRequest, headers as! PutLogsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putProjectPolicyWithOptions(_ project: String, _ request: PutProjectPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PutProjectPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutProjectPolicy",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/policy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutProjectPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putProjectPolicy(_ project: String, _ request: PutProjectPolicyRequest) async throws -> PutProjectPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await putProjectPolicyWithOptions(project as! String, request as! PutProjectPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putProjectTransferAccelerationWithOptions(_ project: String, _ request: PutProjectTransferAccelerationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PutProjectTransferAccelerationResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            body["enabled"] = request.enabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutProjectTransferAcceleration",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/transferacceleration",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutProjectTransferAccelerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putProjectTransferAcceleration(_ project: String, _ request: PutProjectTransferAccelerationRequest) async throws -> PutProjectTransferAccelerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await putProjectTransferAccelerationWithOptions(project as! String, request as! PutProjectTransferAccelerationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putWebtrackingWithOptions(_ project: String, _ logstoreName: String, _ request: PutWebtrackingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PutWebtrackingResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logs)) {
            body["__logs__"] = request.logs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["__source__"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["__tags__"] = request.tags ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["__topic__"] = request.topic ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutWebtracking",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstoreName as! String) + "/track",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutWebtrackingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putWebtracking(_ project: String, _ logstoreName: String, _ request: PutWebtrackingRequest) async throws -> PutWebtrackingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await putWebtrackingWithOptions(project as! String, logstoreName as! String, request as! PutWebtrackingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshTokenWithOptions(_ request: RefreshTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessTokenExpirationTime)) {
            query["accessTokenExpirationTime"] = request.accessTokenExpirationTime!;
        }
        if (!TeaUtils.Client.isUnset(request.ticket)) {
            query["ticket"] = request.ticket ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshToken",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/token/refresh",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshToken(_ request: RefreshTokenRequest) async throws -> RefreshTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await refreshTokenWithOptions(request as! RefreshTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeConfigFromMachineGroupWithOptions(_ project: String, _ machineGroup: String, _ configName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveConfigFromMachineGroupResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveConfigFromMachineGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/machinegroups/" + (machineGroup as! String) + "/configs/" + (configName as! String),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveConfigFromMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeConfigFromMachineGroup(_ project: String, _ machineGroup: String, _ configName: String) async throws -> RemoveConfigFromMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeConfigFromMachineGroupWithOptions(project as! String, machineGroup as! String, configName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func splitShardWithOptions(_ project: String, _ logstore: String, _ shard: String, _ request: SplitShardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SplitShardResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shardCount)) {
            query["shardCount"] = request.shardCount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SplitShard",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/shards/" + (shard as! String) + "?action=split",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SplitShardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func splitShard(_ project: String, _ logstore: String, _ shard: String, _ request: SplitShardRequest) async throws -> SplitShardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await splitShardWithOptions(project as! String, logstore as! String, shard as! String, request as! SplitShardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startETLWithOptions(_ project: String, _ etlName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartETLResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartETL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/etls/" + (etlName as! String) + "?action=START",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartETLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startETL(_ project: String, _ etlName: String) async throws -> StartETLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startETLWithOptions(project as! String, etlName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startMaxComputeExportWithOptions(_ project: String, _ mcExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartMaxComputeExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartMaxComputeExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/maxcomputeexports/" + (mcExportName as! String) + "?action=START",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartMaxComputeExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startMaxComputeExport(_ project: String, _ mcExportName: String) async throws -> StartMaxComputeExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startMaxComputeExportWithOptions(project as! String, mcExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startOSSExportWithOptions(_ project: String, _ ossExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartOSSExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartOSSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossexports/" + (ossExportName as! String) + "?action=START",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartOSSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startOSSExport(_ project: String, _ ossExportName: String) async throws -> StartOSSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startOSSExportWithOptions(project as! String, ossExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startOSSHDFSExportWithOptions(_ project: String, _ ossExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartOSSHDFSExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartOSSHDFSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/osshdfsexports/" + (ossExportName as! String) + "?action=START",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartOSSHDFSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startOSSHDFSExport(_ project: String, _ ossExportName: String) async throws -> StartOSSHDFSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startOSSHDFSExportWithOptions(project as! String, ossExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startOSSIngestionWithOptions(_ project: String, _ ossIngestionName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartOSSIngestionResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartOSSIngestion",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossingestions/" + (ossIngestionName as! String) + "?action=START",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartOSSIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startOSSIngestion(_ project: String, _ ossIngestionName: String) async throws -> StartOSSIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startOSSIngestionWithOptions(project as! String, ossIngestionName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopETLWithOptions(_ project: String, _ etlName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopETLResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopETL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/etls/" + (etlName as! String) + "?action=STOP",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopETLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopETL(_ project: String, _ etlName: String) async throws -> StopETLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopETLWithOptions(project as! String, etlName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMaxComputeExportWithOptions(_ project: String, _ mcExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopMaxComputeExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopMaxComputeExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/maxcomputeexports/" + (mcExportName as! String) + "?action=STOP",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopMaxComputeExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMaxComputeExport(_ project: String, _ mcExportName: String) async throws -> StopMaxComputeExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopMaxComputeExportWithOptions(project as! String, mcExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopOSSExportWithOptions(_ project: String, _ ossExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopOSSExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopOSSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossexports/" + (ossExportName as! String) + "?action=STOP",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopOSSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopOSSExport(_ project: String, _ ossExportName: String) async throws -> StopOSSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopOSSExportWithOptions(project as! String, ossExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopOSSHDFSExportWithOptions(_ project: String, _ ossExportName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopOSSHDFSExportResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopOSSHDFSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/osshdfsexports/" + (ossExportName as! String) + "?action=STOP",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopOSSHDFSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopOSSHDFSExport(_ project: String, _ ossExportName: String) async throws -> StopOSSHDFSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopOSSHDFSExportWithOptions(project as! String, ossExportName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopOSSIngestionWithOptions(_ project: String, _ ossIngestionName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopOSSIngestionResponse {
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopOSSIngestion",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossingestions/" + (ossIngestionName as! String) + "?action=STOP",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopOSSIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopOSSIngestion(_ project: String, _ ossIngestionName: String) async throws -> StopOSSIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopOSSIngestionWithOptions(project as! String, ossIngestionName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["resourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/tag",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            body["all"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["resourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/untag",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgentInstanceConfigWithOptions(_ configType: String, _ request: UpdateAgentInstanceConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAgentInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributes)) {
            query["attributes"] = request.attributes ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grayConfigs)) {
            body["grayConfigs"] = request.grayConfigs ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAgentInstanceConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/agentinstanceconfigs/" + (configType as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAgentInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgentInstanceConfig(_ configType: String, _ request: UpdateAgentInstanceConfigRequest) async throws -> UpdateAgentInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAgentInstanceConfigWithOptions(configType as! String, request as! UpdateAgentInstanceConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlertWithOptions(_ project: String, _ alertName: String, _ request: UpdateAlertRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            body["schedule"] = request.schedule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAlert",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/alerts/" + (alertName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlert(_ project: String, _ alertName: String, _ request: UpdateAlertRequest) async throws -> UpdateAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAlertWithOptions(project as! String, alertName as! String, request as! UpdateAlertRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAnnotationDataSetWithOptions(_ datasetId: String, _ request: UpdateAnnotationDataSetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAnnotationDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAnnotationDataSet",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationdataset/" + (datasetId as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAnnotationDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAnnotationDataSet(_ datasetId: String, _ request: UpdateAnnotationDataSetRequest) async throws -> UpdateAnnotationDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAnnotationDataSetWithOptions(datasetId as! String, request as! UpdateAnnotationDataSetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAnnotationLabelWithOptions(_ request: UpdateAnnotationLabelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAnnotationLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAnnotationLabel",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ml/annotationlabel",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAnnotationLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAnnotationLabel(_ request: UpdateAnnotationLabelRequest) async throws -> UpdateAnnotationLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAnnotationLabelWithOptions(request as! UpdateAnnotationLabelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigWithOptions(_ project: String, _ configName: String, _ request: UpdateConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/configs/" + (configName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfig(_ project: String, _ configName: String, _ request: UpdateConfigRequest) async throws -> UpdateConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateConfigWithOptions(project as! String, configName as! String, request as! UpdateConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConsumerGroupWithOptions(_ project: String, _ logstore: String, _ consumerGroup: String, _ request: UpdateConsumerGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConsumerGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["order"] = request.order!;
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            body["timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConsumerGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/consumergroups/" + (consumerGroup as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConsumerGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConsumerGroup(_ project: String, _ logstore: String, _ consumerGroup: String, _ request: UpdateConsumerGroupRequest) async throws -> UpdateConsumerGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateConsumerGroupWithOptions(project as! String, logstore as! String, consumerGroup as! String, request as! UpdateConsumerGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDashboardWithOptions(_ project: String, _ dashboardName: String, _ request: UpdateDashboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDashboardResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attribute)) {
            body["attribute"] = request.attribute ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.charts)) {
            body["charts"] = request.charts ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dashboardName)) {
            body["dashboardName"] = request.dashboardName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDashboard",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/dashboards/" + (dashboardName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDashboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDashboard(_ project: String, _ dashboardName: String, _ request: UpdateDashboardRequest) async throws -> UpdateDashboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDashboardWithOptions(project as! String, dashboardName as! String, request as! UpdateDashboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateETLWithOptions(_ project: String, _ etlName: String, _ request: UpdateETLRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateETLResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateETL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/etls/" + (etlName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateETLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateETL(_ project: String, _ etlName: String, _ request: UpdateETLRequest) async throws -> UpdateETLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateETLWithOptions(project as! String, etlName as! String, request as! UpdateETLRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIndexWithOptions(_ project: String, _ logstore: String, _ request: UpdateIndexRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIndexResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIndex",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/index",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIndex(_ project: String, _ logstore: String, _ request: UpdateIndexRequest) async throws -> UpdateIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateIndexWithOptions(project as! String, logstore as! String, request as! UpdateIndexRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogStoreWithOptions(_ project: String, _ logstore: String, _ request: UpdateLogStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLogStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appendMeta)) {
            body["appendMeta"] = request.appendMeta!;
        }
        if (!TeaUtils.Client.isUnset(request.autoSplit)) {
            body["autoSplit"] = request.autoSplit!;
        }
        if (!TeaUtils.Client.isUnset(request.enableTracking)) {
            body["enable_tracking"] = request.enableTracking!;
        }
        if (!TeaUtils.Client.isUnset(request.encryptConf)) {
            body["encrypt_conf"] = request.encryptConf!;
        }
        if (!TeaUtils.Client.isUnset(request.hotTtl)) {
            body["hot_ttl"] = request.hotTtl!;
        }
        if (!TeaUtils.Client.isUnset(request.infrequentAccessTTL)) {
            body["infrequentAccessTTL"] = request.infrequentAccessTTL!;
        }
        if (!TeaUtils.Client.isUnset(request.logstoreName)) {
            body["logstoreName"] = request.logstoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxSplitShard)) {
            body["maxSplitShard"] = request.maxSplitShard!;
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shardCount)) {
            body["shardCount"] = request.shardCount!;
        }
        if (!TeaUtils.Client.isUnset(request.telemetryType)) {
            body["telemetryType"] = request.telemetryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttl)) {
            body["ttl"] = request.ttl!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLogStore",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogStore(_ project: String, _ logstore: String, _ request: UpdateLogStoreRequest) async throws -> UpdateLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateLogStoreWithOptions(project as! String, logstore as! String, request as! UpdateLogStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogStoreEncryptionWithOptions(_ project: String, _ logstore: String, _ request: UpdateLogStoreEncryptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLogStoreEncryptionResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enable)) {
            body["enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.encryptType)) {
            body["encryptType"] = request.encryptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCmkInfo)) {
            body["userCmkInfo"] = request.userCmkInfo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLogStoreEncryption",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/encryption",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLogStoreEncryptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogStoreEncryption(_ project: String, _ logstore: String, _ request: UpdateLogStoreEncryptionRequest) async throws -> UpdateLogStoreEncryptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateLogStoreEncryptionWithOptions(project as! String, logstore as! String, request as! UpdateLogStoreEncryptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogStoreMeteringModeWithOptions(_ project: String, _ logstore: String, _ request: UpdateLogStoreMeteringModeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLogStoreMeteringModeResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.meteringMode)) {
            body["meteringMode"] = request.meteringMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLogStoreMeteringMode",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/meteringmode",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLogStoreMeteringModeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogStoreMeteringMode(_ project: String, _ logstore: String, _ request: UpdateLogStoreMeteringModeRequest) async throws -> UpdateLogStoreMeteringModeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateLogStoreMeteringModeWithOptions(project as! String, logstore as! String, request as! UpdateLogStoreMeteringModeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogStoreProcessorWithOptions(_ project: String, _ logstore: String, _ request: UpdateLogStoreProcessorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLogStoreProcessorResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.processorName)) {
            body["processorName"] = request.processorName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLogStoreProcessor",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logstores/" + (logstore as! String) + "/processor",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLogStoreProcessorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogStoreProcessor(_ project: String, _ logstore: String, _ request: UpdateLogStoreProcessorRequest) async throws -> UpdateLogStoreProcessorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateLogStoreProcessorWithOptions(project as! String, logstore as! String, request as! UpdateLogStoreProcessorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLoggingWithOptions(_ project: String, _ request: UpdateLoggingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLoggingResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.loggingDetails)) {
            body["loggingDetails"] = request.loggingDetails ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.loggingProject)) {
            body["loggingProject"] = request.loggingProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLogging",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/logging",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogging(_ project: String, _ request: UpdateLoggingRequest) async throws -> UpdateLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateLoggingWithOptions(project as! String, request as! UpdateLoggingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogtailPipelineConfigWithOptions(_ project: String, _ configName: String, _ request: UpdateLogtailPipelineConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLogtailPipelineConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregators)) {
            body["aggregators"] = request.aggregators ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.configName)) {
            body["configName"] = request.configName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flushers)) {
            body["flushers"] = request.flushers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.global)) {
            body["global"] = request.global ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.inputs)) {
            body["inputs"] = request.inputs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.logSample)) {
            body["logSample"] = request.logSample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processors)) {
            body["processors"] = request.processors ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLogtailPipelineConfig",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/pipelineconfigs/" + (configName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLogtailPipelineConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLogtailPipelineConfig(_ project: String, _ configName: String, _ request: UpdateLogtailPipelineConfigRequest) async throws -> UpdateLogtailPipelineConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateLogtailPipelineConfigWithOptions(project as! String, configName as! String, request as! UpdateLogtailPipelineConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMachineGroupWithOptions(_ project: String, _ groupName: String, _ request: UpdateMachineGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMachineGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupAttribute)) {
            body["groupAttribute"] = request.groupAttribute!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["groupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            body["groupType"] = request.groupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.machineIdentifyType)) {
            body["machineIdentifyType"] = request.machineIdentifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.machineList)) {
            body["machineList"] = request.machineList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMachineGroup",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/machinegroups/" + (groupName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMachineGroup(_ project: String, _ groupName: String, _ request: UpdateMachineGroupRequest) async throws -> UpdateMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMachineGroupWithOptions(project as! String, groupName as! String, request as! UpdateMachineGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMachineGroupMachineWithOptions(_ project: String, _ machineGroup: String, _ request: UpdateMachineGroupMachineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMachineGroupMachineResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            query["action"] = request.action ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? []
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMachineGroupMachine",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/machinegroups/" + (machineGroup as! String) + "/machines",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMachineGroupMachineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMachineGroupMachine(_ project: String, _ machineGroup: String, _ request: UpdateMachineGroupMachineRequest) async throws -> UpdateMachineGroupMachineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMachineGroupMachineWithOptions(project as! String, machineGroup as! String, request as! UpdateMachineGroupMachineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMaxComputeExportWithOptions(_ project: String, _ mcExportName: String, _ request: UpdateMaxComputeExportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMaxComputeExportResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMaxComputeExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/maxcomputeexports/" + (mcExportName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMaxComputeExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMaxComputeExport(_ project: String, _ mcExportName: String, _ request: UpdateMaxComputeExportRequest) async throws -> UpdateMaxComputeExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMaxComputeExportWithOptions(project as! String, mcExportName as! String, request as! UpdateMaxComputeExportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMetricStoreWithOptions(_ project: String, _ name: String, _ request: UpdateMetricStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMetricStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoSplit)) {
            body["autoSplit"] = request.autoSplit!;
        }
        if (!TeaUtils.Client.isUnset(request.hotTtl)) {
            body["hot_ttl"] = request.hotTtl!;
        }
        if (!TeaUtils.Client.isUnset(request.infrequentAccessTTL)) {
            body["infrequentAccessTTL"] = request.infrequentAccessTTL!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSplitShard)) {
            body["maxSplitShard"] = request.maxSplitShard!;
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttl)) {
            body["ttl"] = request.ttl!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMetricStore",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/metricstores/" + (name as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMetricStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMetricStore(_ project: String, _ name: String, _ request: UpdateMetricStoreRequest) async throws -> UpdateMetricStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMetricStoreWithOptions(project as! String, name as! String, request as! UpdateMetricStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMetricStoreMeteringModeWithOptions(_ project: String, _ metricStore: String, _ request: UpdateMetricStoreMeteringModeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMetricStoreMeteringModeResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.meteringMode)) {
            body["meteringMode"] = request.meteringMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMetricStoreMeteringMode",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/metricstores/" + (metricStore as! String) + "/meteringmode",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMetricStoreMeteringModeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMetricStoreMeteringMode(_ project: String, _ metricStore: String, _ request: UpdateMetricStoreMeteringModeRequest) async throws -> UpdateMetricStoreMeteringModeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMetricStoreMeteringModeWithOptions(project as! String, metricStore as! String, request as! UpdateMetricStoreMeteringModeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMetricStoreProcessorWithOptions(_ project: String, _ metricstore: String, _ request: UpdateMetricStoreProcessorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMetricStoreProcessorResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.processorName)) {
            body["processorName"] = request.processorName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMetricStoreProcessor",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/metricstores/" + (metricstore as! String) + "/processor",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMetricStoreProcessorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMetricStoreProcessor(_ project: String, _ metricstore: String, _ request: UpdateMetricStoreProcessorRequest) async throws -> UpdateMetricStoreProcessorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMetricStoreProcessorWithOptions(project as! String, metricstore as! String, request as! UpdateMetricStoreProcessorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOSSExportWithOptions(_ project: String, _ ossExportName: String, _ request: UpdateOSSExportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateOSSExportResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateOSSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossexports/" + (ossExportName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateOSSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOSSExport(_ project: String, _ ossExportName: String, _ request: UpdateOSSExportRequest) async throws -> UpdateOSSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateOSSExportWithOptions(project as! String, ossExportName as! String, request as! UpdateOSSExportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOSSHDFSExportWithOptions(_ project: String, _ ossExportName: String, _ request: UpdateOSSHDFSExportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateOSSHDFSExportResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateOSSHDFSExport",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/osshdfsexports/" + (ossExportName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateOSSHDFSExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOSSHDFSExport(_ project: String, _ ossExportName: String, _ request: UpdateOSSHDFSExportRequest) async throws -> UpdateOSSHDFSExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateOSSHDFSExportWithOptions(project as! String, ossExportName as! String, request as! UpdateOSSHDFSExportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOSSIngestionWithOptions(_ project: String, _ ossIngestionName: String, _ request: UpdateOSSIngestionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateOSSIngestionResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            body["schedule"] = request.schedule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateOSSIngestion",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/ossingestions/" + (ossIngestionName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateOSSIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOSSIngestion(_ project: String, _ ossIngestionName: String, _ request: UpdateOSSIngestionRequest) async throws -> UpdateOSSIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateOSSIngestionWithOptions(project as! String, ossIngestionName as! String, request as! UpdateOSSIngestionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectWithOptions(_ project: String, _ request: UpdateProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recycleBinEnabled)) {
            body["recycleBinEnabled"] = request.recycleBinEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProject",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProject(_ project: String, _ request: UpdateProjectRequest) async throws -> UpdateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProjectWithOptions(project as! String, request as! UpdateProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSavedSearchWithOptions(_ project: String, _ savedsearchName: String, _ request: UpdateSavedSearchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSavedSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logstore)) {
            body["logstore"] = request.logstore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.savedsearchName)) {
            body["savedsearchName"] = request.savedsearchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchQuery)) {
            body["searchQuery"] = request.searchQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSavedSearch",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/savedsearches/" + (savedsearchName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSavedSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSavedSearch(_ project: String, _ savedsearchName: String, _ request: UpdateSavedSearchRequest) async throws -> UpdateSavedSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSavedSearchWithOptions(project as! String, savedsearchName as! String, request as! UpdateSavedSearchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScheduledSQLWithOptions(_ project: String, _ scheduledSQLName: String, _ request: UpdateScheduledSQLRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateScheduledSQLResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            body["schedule"] = request.schedule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateScheduledSQL",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/scheduledsqls/" + (scheduledSQLName as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateScheduledSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScheduledSQL(_ project: String, _ scheduledSQLName: String, _ request: UpdateScheduledSQLRequest) async throws -> UpdateScheduledSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateScheduledSQLWithOptions(project as! String, scheduledSQLName as! String, request as! UpdateScheduledSQLRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSqlInstanceWithOptions(_ project: String, _ request: UpdateSqlInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSqlInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cu)) {
            body["cu"] = request.cu!;
        }
        if (!TeaUtils.Client.isUnset(request.useAsDefault)) {
            body["useAsDefault"] = request.useAsDefault!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSqlInstance",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/sqlinstance",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSqlInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSqlInstance(_ project: String, _ request: UpdateSqlInstanceRequest) async throws -> UpdateSqlInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSqlInstanceWithOptions(project as! String, request as! UpdateSqlInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStoreViewWithOptions(_ project: String, _ name: String, _ request: UpdateStoreViewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStoreViewResponse {
        try TeaUtils.Client.validateModel(request)
        var hostMap: [String: String] = [:]
        hostMap["project"] = project as! String;
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.storeType)) {
            body["storeType"] = request.storeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stores)) {
            body["stores"] = request.stores ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "hostMap": hostMap as! [String: String],
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStoreView",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/storeviews/" + (name as! String),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStoreViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStoreView(_ project: String, _ name: String, _ request: UpdateStoreViewRequest) async throws -> UpdateStoreViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateStoreViewWithOptions(project as! String, name as! String, request as! UpdateStoreViewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upsertCollectionPolicyWithOptions(_ request: UpsertCollectionPolicyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpsertCollectionPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.centralizeConfig)) {
            body["centralizeConfig"] = request.centralizeConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.centralizeEnabled)) {
            body["centralizeEnabled"] = request.centralizeEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.dataCode)) {
            body["dataCode"] = request.dataCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataConfig)) {
            body["dataConfig"] = request.dataConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            body["enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.policyConfig)) {
            body["policyConfig"] = request.policyConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            body["policyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["productCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceDirectory)) {
            body["resourceDirectory"] = request.resourceDirectory!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpsertCollectionPolicy",
            "version": "2020-12-30",
            "protocol": "HTTPS",
            "pathname": "/collectionpolicy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpsertCollectionPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upsertCollectionPolicy(_ request: UpsertCollectionPolicyRequest) async throws -> UpsertCollectionPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await upsertCollectionPolicyWithOptions(request as! UpsertCollectionPolicyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
