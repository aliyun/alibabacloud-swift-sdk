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
        self._endpoint = try getEndpoint("emrstudio", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createWorkflowWithOptions(_ projectId: String, _ request: CreateWorkflowRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkflowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertGroupId)) {
            query["alertGroupId"] = request.alertGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertStrategy)) {
            query["alertStrategy"] = request.alertStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cronExpr)) {
            query["cronExpr"] = request.cronExpr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionType)) {
            query["executionType"] = request.executionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failureStrategy)) {
            query["failureStrategy"] = request.failureStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentDirectoryId)) {
            query["parentDirectoryId"] = request.parentDirectoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleEndTime)) {
            query["scheduleEndTime"] = request.scheduleEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleStartTime)) {
            query["scheduleStartTime"] = request.scheduleStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleState)) {
            query["scheduleState"] = request.scheduleState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDefinitionJson)) {
            query["taskDefinitionJson"] = request.taskDefinitionJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskRelationJson)) {
            query["taskRelationJson"] = request.taskRelationJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            query["timeZone"] = request.timeZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.workflowInstancePriority)) {
            query["workflowInstancePriority"] = request.workflowInstancePriority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowParams)) {
            query["workflowParams"] = request.workflowParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskDefinitionJsonValue)) {
            body["taskDefinitionJsonValue"] = request.taskDefinitionJsonValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskRelationJsonValue)) {
            body["taskRelationJsonValue"] = request.taskRelationJsonValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkflow",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/workflows",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkflow(_ projectId: String, _ request: CreateWorkflowRequest) async throws -> CreateWorkflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWorkflowWithOptions(projectId as! String, request as! CreateWorkflowRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkflowWithOptions(_ projectId: String, _ workflowId: String, _ request: DeleteWorkflowRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkflowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkflow",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/workflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workflowId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkflow(_ projectId: String, _ workflowId: String, _ request: DeleteWorkflowRequest) async throws -> DeleteWorkflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWorkflowWithOptions(projectId as! String, workflowId as! String, request as! DeleteWorkflowRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIdWithOptions(_ request: DescribeIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeId",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/relatedIds",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeId(_ request: DescribeIdRequest) async throws -> DescribeIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeIdWithOptions(request as! DescribeIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeManualTaskWithOptions(_ projectId: String, _ manualTaskId: String, _ request: DescribeManualTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeManualTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeManualTask",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/manualTasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(manualTaskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeManualTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeManualTask(_ projectId: String, _ manualTaskId: String, _ request: DescribeManualTaskRequest) async throws -> DescribeManualTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeManualTaskWithOptions(projectId as! String, manualTaskId as! String, request as! DescribeManualTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeManualTaskInstanceWithOptions(_ manualTaskInstanceId: String, _ projectId: String, _ request: DescribeManualTaskInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeManualTaskInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeManualTaskInstance",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/manualTaskInstances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(manualTaskInstanceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeManualTaskInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeManualTaskInstance(_ manualTaskInstanceId: String, _ projectId: String, _ request: DescribeManualTaskInstanceRequest) async throws -> DescribeManualTaskInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeManualTaskInstanceWithOptions(manualTaskInstanceId as! String, projectId as! String, request as! DescribeManualTaskInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProjectWithOptions(_ projectId: String, _ request: DescribeProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeProject",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProject(_ projectId: String, _ request: DescribeProjectRequest) async throws -> DescribeProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeProjectWithOptions(projectId as! String, request as! DescribeProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTaskWithOptions(_ workflowId: String, _ projectId: String, _ taskId: String, _ request: DescribeTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTask",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/workflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workflowId)) + "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTask(_ workflowId: String, _ projectId: String, _ taskId: String, _ request: DescribeTaskRequest) async throws -> DescribeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeTaskWithOptions(workflowId as! String, projectId as! String, taskId as! String, request as! DescribeTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTaskInstanceWithOptions(_ projectId: String, _ workflowInstanceId: String, _ taskInstanceId: String, _ request: DescribeTaskInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTaskInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTaskInstance",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/workflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workflowInstanceId)) + "/taskInstances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskInstanceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTaskInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTaskInstance(_ projectId: String, _ workflowInstanceId: String, _ taskInstanceId: String, _ request: DescribeTaskInstanceRequest) async throws -> DescribeTaskInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeTaskInstanceWithOptions(projectId as! String, workflowInstanceId as! String, taskInstanceId as! String, request as! DescribeTaskInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWorkflowWithOptions(_ projectId: String, _ workflowId: String, _ request: DescribeWorkflowRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWorkflowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWorkflow",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/workflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workflowId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWorkflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWorkflow(_ projectId: String, _ workflowId: String, _ request: DescribeWorkflowRequest) async throws -> DescribeWorkflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeWorkflowWithOptions(projectId as! String, workflowId as! String, request as! DescribeWorkflowRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWorkflowInstanceWithOptions(_ projectId: String, _ workflowInstanceId: String, _ request: DescribeWorkflowInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWorkflowInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWorkflowInstance",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/workflowInstances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workflowInstanceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWorkflowInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWorkflowInstance(_ projectId: String, _ workflowInstanceId: String, _ request: DescribeWorkflowInstanceRequest) async throws -> DescribeWorkflowInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeWorkflowInstanceWithOptions(projectId as! String, workflowInstanceId as! String, request as! DescribeWorkflowInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceLogWithOptions(_ projectId: String, _ instanceId: String, _ request: GetInstanceLogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.skipLineNum)) {
            query["skipLineNum"] = request.skipLineNum!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceLog",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/log",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceLog(_ projectId: String, _ instanceId: String, _ request: GetInstanceLogRequest) async throws -> GetInstanceLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceLogWithOptions(projectId as! String, instanceId as! String, request as! GetInstanceLogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertGroupsWithOptions(_ projectId: String, _ request: ListAlertGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlertGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchVal)) {
            query["searchVal"] = request.searchVal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlertGroups",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/alert-groups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlertGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertGroups(_ projectId: String, _ request: ListAlertGroupsRequest) async throws -> ListAlertGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAlertGroupsWithOptions(projectId as! String, request as! ListAlertGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listManualTaskInstancesWithOptions(_ projectId: String, _ request: ListManualTaskInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListManualTaskInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchVal)) {
            query["searchVal"] = request.searchVal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListManualTaskInstances",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/manualTaskInstances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListManualTaskInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listManualTaskInstances(_ projectId: String, _ request: ListManualTaskInstancesRequest) async throws -> ListManualTaskInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listManualTaskInstancesWithOptions(projectId as! String, request as! ListManualTaskInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listManualTasksWithOptions(_ projectId: String, _ request: ListManualTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListManualTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchVal)) {
            query["searchVal"] = request.searchVal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["taskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListManualTasks",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/manualTasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListManualTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listManualTasks(_ projectId: String, _ request: ListManualTasksRequest) async throws -> ListManualTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listManualTasksWithOptions(projectId as! String, request as! ListManualTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectsWithOptions(_ request: ListProjectsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchVal)) {
            query["searchVal"] = request.searchVal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjects",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjects(_ request: ListProjectsRequest) async throws -> ListProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectsWithOptions(request as! ListProjectsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroupsWithOptions(_ request: ListResourceGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            query["resourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupType)) {
            query["resourceGroupType"] = request.resourceGroupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceGroups",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/resourcegroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroups(_ request: ListResourceGroupsRequest) async throws -> ListResourceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceGroupsWithOptions(request as! ListResourceGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskInstancesWithOptions(_ projectId: String, _ request: ListTaskInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTaskInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchVal)) {
            query["searchVal"] = request.searchVal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowInstanceId)) {
            query["workflowInstanceId"] = request.workflowInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTaskInstances",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/taskInstances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTaskInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTaskInstances(_ projectId: String, _ request: ListTaskInstancesRequest) async throws -> ListTaskInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTaskInstancesWithOptions(projectId as! String, request as! ListTaskInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTasksWithOptions(_ projectId: String, _ request: ListTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchVal)) {
            query["searchVal"] = request.searchVal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["taskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowId)) {
            query["workflowId"] = request.workflowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTasks",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/tasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTasks(_ projectId: String, _ request: ListTasksRequest) async throws -> ListTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTasksWithOptions(projectId as! String, request as! ListTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkflowDirectoriesWithOptions(_ projectId: String, _ request: ListWorkflowDirectoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkflowDirectoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["directoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentDirectoryId)) {
            query["parentDirectoryId"] = request.parentDirectoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkflowDirectories",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/directories",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkflowDirectoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkflowDirectories(_ projectId: String, _ request: ListWorkflowDirectoriesRequest) async throws -> ListWorkflowDirectoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkflowDirectoriesWithOptions(projectId as! String, request as! ListWorkflowDirectoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkflowInstancesWithOptions(_ projectId: String, _ request: ListWorkflowInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkflowInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowId)) {
            query["workflowId"] = request.workflowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkflowInstances",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/workflowInstances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkflowInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkflowInstances(_ projectId: String, _ request: ListWorkflowInstancesRequest) async throws -> ListWorkflowInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkflowInstancesWithOptions(projectId as! String, request as! ListWorkflowInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkflowsWithOptions(_ projectId: String, _ request: ListWorkflowsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkflowsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchVal)) {
            query["searchVal"] = request.searchVal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkflows",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/workflows",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkflowsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkflows(_ projectId: String, _ request: ListWorkflowsRequest) async throws -> ListWorkflowsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkflowsWithOptions(projectId as! String, request as! ListWorkflowsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateWorkflowInstanceWithOptions(_ projectId: String, _ request: OperateWorkflowInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateWorkflowInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.execType)) {
            body["execType"] = request.execType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowInstanceId)) {
            body["workflowInstanceId"] = request.workflowInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateWorkflowInstance",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/executors/execute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateWorkflowInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateWorkflowInstance(_ projectId: String, _ request: OperateWorkflowInstanceRequest) async throws -> OperateWorkflowInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await operateWorkflowInstanceWithOptions(projectId as! String, request as! OperateWorkflowInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runWorkflowWithOptions(_ projectId: String, _ request: RunWorkflowRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunWorkflowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertGroupId)) {
            query["alertGroupId"] = request.alertGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertStrategy)) {
            query["alertStrategy"] = request.alertStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.complementDependentMode)) {
            query["complementDependentMode"] = request.complementDependentMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.execType)) {
            query["execType"] = request.execType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expectedParallelismNumber)) {
            query["expectedParallelismNumber"] = request.expectedParallelismNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failureStrategy)) {
            query["failureStrategy"] = request.failureStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runMode)) {
            query["runMode"] = request.runMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTime)) {
            query["scheduleTime"] = request.scheduleTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startParams)) {
            query["startParams"] = request.startParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowId)) {
            query["workflowId"] = request.workflowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowInstancePriority)) {
            query["workflowInstancePriority"] = request.workflowInstancePriority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunWorkflow",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/executors/run-workflow",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunWorkflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runWorkflow(_ projectId: String, _ request: RunWorkflowRequest) async throws -> RunWorkflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runWorkflowWithOptions(projectId as! String, request as! RunWorkflowRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkflowWithOptions(_ projectId: String, _ workflowId: String, _ request: UpdateWorkflowRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkflowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertGroupId)) {
            query["alertGroupId"] = request.alertGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertStrategy)) {
            query["alertStrategy"] = request.alertStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cronExpr)) {
            query["cronExpr"] = request.cronExpr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionType)) {
            query["executionType"] = request.executionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failureStrategy)) {
            query["failureStrategy"] = request.failureStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentDirectoryId)) {
            query["parentDirectoryId"] = request.parentDirectoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleEndTime)) {
            query["scheduleEndTime"] = request.scheduleEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleStartTime)) {
            query["scheduleStartTime"] = request.scheduleStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleState)) {
            query["scheduleState"] = request.scheduleState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDefinitionJson)) {
            query["taskDefinitionJson"] = request.taskDefinitionJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskRelationJson)) {
            query["taskRelationJson"] = request.taskRelationJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            query["timeZone"] = request.timeZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.workflowInstancePriority)) {
            query["workflowInstancePriority"] = request.workflowInstancePriority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowParams)) {
            query["workflowParams"] = request.workflowParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskDefinitionJsonValue)) {
            body["taskDefinitionJsonValue"] = request.taskDefinitionJsonValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskRelationJsonValue)) {
            body["taskRelationJsonValue"] = request.taskRelationJsonValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkflow",
            "version": "2024-04-30",
            "protocol": "HTTPS",
            "pathname": "/dolphinscheduler/v3/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/workflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workflowId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkflow(_ projectId: String, _ workflowId: String, _ request: UpdateWorkflowRequest) async throws -> UpdateWorkflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWorkflowWithOptions(projectId as! String, workflowId as! String, request as! UpdateWorkflowRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
