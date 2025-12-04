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
        self._endpoint = try getEndpoint("iacservice", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addSharedAccountsWithOptions(_ request: AddSharedAccountsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddSharedAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIds)) {
            body["accountIds"] = request.accountIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["resourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddSharedAccounts",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/sharedAccounts",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddSharedAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSharedAccounts(_ request: AddSharedAccountsRequest) async throws -> AddSharedAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addSharedAccountsWithOptions(request as! AddSharedAccountsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateGroupWithOptions(_ groupId: String, _ request: AssociateGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AssociateGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            body["resourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssociateGroup",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/group/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/associate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssociateGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateGroup(_ groupId: String, _ request: AssociateGroupRequest) async throws -> AssociateGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await associateGroupWithOptions(groupId as! String, request as! AssociateGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelResourceExportTaskWithOptions(_ exportTaskId: String, _ request: CancelResourceExportTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelResourceExportTaskResponse {
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
            "action": "CancelResourceExportTask",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/exportTasks/cancel/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(exportTaskId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelResourceExportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelResourceExportTask(_ exportTaskId: String, _ request: CancelResourceExportTaskRequest) async throws -> CancelResourceExportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelResourceExportTaskWithOptions(exportTaskId as! String, request as! CancelResourceExportTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupWithOptions(_ request: CreateGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoDestroy)) {
            body["autoDestroy"] = request.autoDestroy!;
        }
        if (!TeaUtils.Client.isUnset(request.autoTrigger)) {
            body["autoTrigger"] = request.autoTrigger!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forcedSetting)) {
            body["forcedSetting"] = request.forcedSetting!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyConfig)) {
            body["notifyConfig"] = request.notifyConfig ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.notifyOperationTypes)) {
            body["notifyOperationTypes"] = request.notifyOperationTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ramRole)) {
            body["ramRole"] = request.ramRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportExportField)) {
            body["reportExportField"] = request.reportExportField ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.reportExportPath)) {
            body["reportExportPath"] = request.reportExportPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terraformProviderVersion)) {
            body["terraformProviderVersion"] = request.terraformProviderVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerConfig)) {
            body["triggerConfig"] = request.triggerConfig ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.triggerResourceType)) {
            body["triggerResourceType"] = request.triggerResourceType ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGroup",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/group",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroup(_ request: CreateGroupRequest) async throws -> CreateGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGroupWithOptions(request as! CreateGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createJobWithOptions(_ taskId: String, _ request: CreateJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subCommand)) {
            body["subCommand"] = request.subCommand ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["taskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateJob",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createJob(_ taskId: String, _ request: CreateJobRequest) async throws -> CreateJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createJobWithOptions(taskId as! String, request as! CreateJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModuleWithOptions(_ request: CreateModuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupInfo)) {
            body["groupInfo"] = request.groupInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePath)) {
            body["sourcePath"] = request.sourcePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statePath)) {
            body["statePath"] = request.statePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.versionStrategy)) {
            body["versionStrategy"] = request.versionStrategy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModule",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/modules",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModule(_ request: CreateModuleRequest) async throws -> CreateModuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createModuleWithOptions(request as! CreateModuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModuleVersionWithOptions(_ moduleId: String, _ request: CreateModuleVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModuleVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModuleVersion",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/modules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleId)) + "/versions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModuleVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModuleVersion(_ moduleId: String, _ request: CreateModuleVersionRequest) async throws -> CreateModuleVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createModuleVersionWithOptions(moduleId as! String, request as! CreateModuleVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProjectWithOptions(_ request: CreateProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProject",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/project",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProject(_ request: CreateProjectRequest) async throws -> CreateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProjectWithOptions(request as! CreateProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRegistryModuleWithOptions(_ request: CreateRegistryModuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRegistryModuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acl)) {
            body["acl"] = request.acl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            body["moduleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            body["namespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.provider)) {
            body["provider"] = request.provider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRegistryModule",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryModule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRegistryModuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRegistryModule(_ request: CreateRegistryModuleRequest) async throws -> CreateRegistryModuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRegistryModuleWithOptions(request as! CreateRegistryModuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRegistryNamespaceWithOptions(_ request: CreateRegistryNamespaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRegistryNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acl)) {
            body["acl"] = request.acl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maintainer)) {
            body["maintainer"] = request.maintainer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            body["namespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRegistryNamespace",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryNamespace",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRegistryNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRegistryNamespace(_ request: CreateRegistryNamespaceRequest) async throws -> CreateRegistryNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRegistryNamespaceWithOptions(request as! CreateRegistryNamespaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceExportTaskWithOptions(_ request: CreateResourceExportTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResourceExportTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportToModule)) {
            body["exportToModule"] = request.exportToModule!;
        }
        if (!TeaUtils.Client.isUnset(request.includeRules)) {
            body["includeRules"] = request.includeRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ramRole)) {
            body["ramRole"] = request.ramRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terraformProviderVersion)) {
            body["terraformProviderVersion"] = request.terraformProviderVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terraformVersion)) {
            body["terraformVersion"] = request.terraformVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerStrategy)) {
            body["triggerStrategy"] = request.triggerStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variables)) {
            body["variables"] = request.variables ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResourceExportTask",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/exportTasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResourceExportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceExportTask(_ request: CreateResourceExportTaskRequest) async throws -> CreateResourceExportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createResourceExportTaskWithOptions(request as! CreateResourceExportTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskWithOptions(_ request: CreateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoApply)) {
            body["autoApply"] = request.autoApply!;
        }
        if (!TeaUtils.Client.isUnset(request.autoDestroy)) {
            body["autoDestroy"] = request.autoDestroy!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupInfo)) {
            body["groupInfo"] = request.groupInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.initModuleState)) {
            body["initModuleState"] = request.initModuleState!;
        }
        if (!TeaUtils.Client.isUnset(request.moduleId)) {
            body["moduleId"] = request.moduleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleVersion)) {
            body["moduleVersion"] = request.moduleVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protectionStrategy)) {
            body["protectionStrategy"] = request.protectionStrategy ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ramRole)) {
            body["ramRole"] = request.ramRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipPropertyValidation)) {
            body["skipPropertyValidation"] = request.skipPropertyValidation!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taskBackend)) {
            body["taskBackend"] = request.taskBackend!;
        }
        if (!TeaUtils.Client.isUnset(request.terraformVersion)) {
            body["terraformVersion"] = request.terraformVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerStrategy)) {
            body["triggerStrategy"] = request.triggerStrategy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTask",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/tasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTask(_ request: CreateTaskRequest) async throws -> CreateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTaskWithOptions(request as! CreateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupWithOptions(_ groupId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGroup",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/group/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroup(_ groupId: String) async throws -> DeleteGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGroupWithOptions(groupId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModuleWithOptions(_ moduleId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModule",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/modules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModule(_ moduleId: String) async throws -> DeleteModuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteModuleWithOptions(moduleId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProjectWithOptions(_ projectId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProjectResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProject",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/project/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProject(_ projectId: String) async throws -> DeleteProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProjectWithOptions(projectId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRegistryModuleWithOptions(_ namespaceName: String, _ moduleName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRegistryModuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRegistryModule",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryModule/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespaceName)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRegistryModuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRegistryModule(_ namespaceName: String, _ moduleName: String) async throws -> DeleteRegistryModuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRegistryModuleWithOptions(namespaceName as! String, moduleName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRegistryModuleVersionWithOptions(_ namespaceName: String, _ moduleName: String, _ version: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRegistryModuleVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRegistryModuleVersion",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryModuleVersion/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespaceName)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleName)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(version)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRegistryModuleVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRegistryModuleVersion(_ namespaceName: String, _ moduleName: String, _ version: String) async throws -> DeleteRegistryModuleVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRegistryModuleVersionWithOptions(namespaceName as! String, moduleName as! String, version as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRegistryNamespaceWithOptions(_ namespaceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRegistryNamespaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRegistryNamespace",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryNamespace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespaceName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRegistryNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRegistryNamespace(_ namespaceName: String) async throws -> DeleteRegistryNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRegistryNamespaceWithOptions(namespaceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceExportTaskWithOptions(_ exportTaskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceExportTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResourceExportTask",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/exportTasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(exportTaskId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceExportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceExportTask(_ exportTaskId: String) async throws -> DeleteResourceExportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteResourceExportTaskWithOptions(exportTaskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTaskWithOptions(_ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTask",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTask(_ taskId: String) async throws -> DeleteTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTaskWithOptions(taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dissociateGroupWithOptions(_ projectId: String, _ groupId: String, _ request: DissociateGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DissociateGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            body["resourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DissociateGroup",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/group/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/dissociate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DissociateGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dissociateGroup(_ projectId: String, _ groupId: String, _ request: DissociateGroupRequest) async throws -> DissociateGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await dissociateGroupWithOptions(projectId as! String, groupId as! String, request as! DissociateGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeRegistryModuleWithOptions(_ namespaceName: String, _ moduleName: String, _ request: ExecuteRegistryModuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteRegistryModuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            body["parameters"] = request.parameters ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteRegistryModule",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryModule/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespaceName)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleName)) + "/execution",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteRegistryModuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeRegistryModule(_ namespaceName: String, _ moduleName: String, _ request: ExecuteRegistryModuleRequest) async throws -> ExecuteRegistryModuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeRegistryModuleWithOptions(namespaceName as! String, moduleName as! String, request as! ExecuteRegistryModuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeResourceExportTaskWithOptions(_ exportTaskId: String, _ request: ExecuteResourceExportTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteResourceExportTaskResponse {
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
            "action": "ExecuteResourceExportTask",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/exportTasks/execute/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(exportTaskId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteResourceExportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeResourceExportTask(_ exportTaskId: String, _ request: ExecuteResourceExportTaskRequest) async throws -> ExecuteResourceExportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeResourceExportTaskWithOptions(exportTaskId as! String, request as! ExecuteResourceExportTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTerraformApplyWithOptions(_ request: ExecuteTerraformApplyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTerraformApplyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stateId)) {
            body["stateId"] = request.stateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTerraformApply",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/terraform/execution/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTerraformApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTerraformApply(_ request: ExecuteTerraformApplyRequest) async throws -> ExecuteTerraformApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTerraformApplyWithOptions(request as! ExecuteTerraformApplyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTerraformDestroyWithOptions(_ request: ExecuteTerraformDestroyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTerraformDestroyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stateId)) {
            body["stateId"] = request.stateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTerraformDestroy",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/terraform/execution/destroy",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTerraformDestroyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTerraformDestroy(_ request: ExecuteTerraformDestroyRequest) async throws -> ExecuteTerraformDestroyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTerraformDestroyWithOptions(request as! ExecuteTerraformDestroyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTerraformPlanWithOptions(_ request: ExecuteTerraformPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTerraformPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stateId)) {
            body["stateId"] = request.stateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTerraformPlan",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/terraform/execution/plan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTerraformPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTerraformPlan(_ request: ExecuteTerraformPlanRequest) async throws -> ExecuteTerraformPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTerraformPlanWithOptions(request as! ExecuteTerraformPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateModuleWithOptions(_ request: GenerateModuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateModuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.generateSource)) {
            body["generateSource"] = request.generateSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            body["parameters"] = request.parameters ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syntax)) {
            body["syntax"] = request.syntax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.template)) {
            body["template"] = request.template ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terraformProviderVersion)) {
            body["terraformProviderVersion"] = request.terraformProviderVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terraformResourceType)) {
            body["terraformResourceType"] = request.terraformResourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateModule",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/explorer/generate/module",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateModuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateModule(_ request: GenerateModuleRequest) async throws -> GenerateModuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateModuleWithOptions(request as! GenerateModuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExecuteStateWithOptions(_ stateId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetExecuteStateResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetExecuteState",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/terraform/execution/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(stateId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetExecuteStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExecuteState(_ stateId: String) async throws -> GetExecuteStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getExecuteStateWithOptions(stateId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupWithOptions(_ groupId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGroup",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/group/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroup(_ groupId: String) async throws -> GetGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGroupWithOptions(groupId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobWithOptions(_ taskId: String, _ jobId: String, _ request: GetJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["taskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJob",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJob(_ taskId: String, _ jobId: String, _ request: GetJobRequest) async throws -> GetJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJobWithOptions(taskId as! String, jobId as! String, request as! GetJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModuleWithOptions(_ moduleId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetModuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetModule",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/modules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetModuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModule(_ moduleId: String) async throws -> GetModuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getModuleWithOptions(moduleId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModuleVersionWithOptions(_ moduleId: String, _ moduleVersion: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetModuleVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetModuleVersion",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/modules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleVersion)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetModuleVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModuleVersion(_ moduleId: String, _ moduleVersion: String) async throws -> GetModuleVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getModuleVersionWithOptions(moduleId as! String, moduleVersion as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectWithOptions(_ projectId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProject",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/project/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProject(_ projectId: String) async throws -> GetProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProjectWithOptions(projectId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegistryModuleWithOptions(_ namespaceName: String, _ moduleName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRegistryModuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRegistryModule",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryModule/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespaceName)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRegistryModuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegistryModule(_ namespaceName: String, _ moduleName: String) async throws -> GetRegistryModuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRegistryModuleWithOptions(namespaceName as! String, moduleName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegistryModuleVersionWithOptions(_ namespaceName: String, _ moduleName: String, _ version: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRegistryModuleVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRegistryModuleVersion",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryModuleVersion/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespaceName)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleName)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(version)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRegistryModuleVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegistryModuleVersion(_ namespaceName: String, _ moduleName: String, _ version: String) async throws -> GetRegistryModuleVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRegistryModuleVersionWithOptions(namespaceName as! String, moduleName as! String, version as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegistryNamespaceWithOptions(_ namespaceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRegistryNamespaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRegistryNamespace",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryNamespace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespaceName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRegistryNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegistryNamespace(_ namespaceName: String) async throws -> GetRegistryNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRegistryNamespaceWithOptions(namespaceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceExportTaskWithOptions(_ exportTaskId: String, _ request: GetResourceExportTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceExportTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.exportVersion)) {
            query["exportVersion"] = request.exportVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceExportTask",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/exportTasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(exportTaskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceExportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceExportTask(_ exportTaskId: String, _ request: GetResourceExportTaskRequest) async throws -> GetResourceExportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceExportTaskWithOptions(exportTaskId as! String, request as! GetResourceExportTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceTypeWithOptions(_ resourceType: String, _ request: GetResourceTypeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["acceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterReadOnly)) {
            query["filterReadOnly"] = request.filterReadOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.terraformProviderVersion)) {
            query["terraformProviderVersion"] = request.terraformProviderVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceType",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/resourceType/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceType)),
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceType(_ resourceType: String, _ request: GetResourceTypeRequest) async throws -> GetResourceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceTypeWithOptions(resourceType as! String, request as! GetResourceTypeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskWithOptions(_ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTask",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTask(_ taskId: String) async throws -> GetTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTaskWithOptions(taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExplorerRegistryModuleExamplesWithOptions(_ request: ListExplorerRegistryModuleExamplesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListExplorerRegistryModuleExamplesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.exampleName)) {
            query["exampleName"] = request.exampleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["moduleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleVersion)) {
            query["moduleVersion"] = request.moduleVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["namespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListExplorerRegistryModuleExamples",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/explorerRegistryModule/example",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListExplorerRegistryModuleExamplesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExplorerRegistryModuleExamples(_ request: ListExplorerRegistryModuleExamplesRequest) async throws -> ListExplorerRegistryModuleExamplesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listExplorerRegistryModuleExamplesWithOptions(request as! ListExplorerRegistryModuleExamplesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExplorerRegistryModuleVersionsWithOptions(_ request: ListExplorerRegistryModuleVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListExplorerRegistryModuleVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["moduleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleVersion)) {
            query["moduleVersion"] = request.moduleVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["namespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListExplorerRegistryModuleVersions",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/explorerRegistryModule/version",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListExplorerRegistryModuleVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExplorerRegistryModuleVersions(_ request: ListExplorerRegistryModuleVersionsRequest) async throws -> ListExplorerRegistryModuleVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listExplorerRegistryModuleVersionsWithOptions(request as! ListExplorerRegistryModuleVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExplorerRegistryModulesWithOptions(_ request: ListExplorerRegistryModulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListExplorerRegistryModulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["moduleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListExplorerRegistryModules",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/explorerRegistryModule",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListExplorerRegistryModulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExplorerRegistryModules(_ request: ListExplorerRegistryModulesRequest) async throws -> ListExplorerRegistryModulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listExplorerRegistryModulesWithOptions(request as! ListExplorerRegistryModulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupWithOptions(_ tmpReq: ListGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListGroupShrinkRequest = ListGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroup",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/group",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroup(_ request: ListGroupRequest) async throws -> ListGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGroupWithOptions(request as! ListGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobsWithOptions(_ taskId: String, _ request: ListJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            query["jobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["taskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobs",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/jobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobs(_ taskId: String, _ request: ListJobsRequest) async throws -> ListJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJobsWithOptions(taskId as! String, request as! ListJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModuleVersionWithOptions(_ moduleId: String, _ request: ListModuleVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModuleVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListModuleVersion",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/modules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleId)) + "/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModuleVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModuleVersion(_ moduleId: String, _ request: ListModuleVersionRequest) async throws -> ListModuleVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listModuleVersionWithOptions(moduleId as! String, request as! ListModuleVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModulesWithOptions(_ tmpReq: ListModulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModulesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListModulesShrinkRequest = ListModulesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["groupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["moduleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListModules",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/modules",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModules(_ request: ListModulesRequest) async throws -> ListModulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listModulesWithOptions(request as! ListModulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductsWithOptions(_ request: ListProductsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportTerraformer)) {
            query["supportTerraformer"] = request.supportTerraformer!;
        }
        if (!TeaUtils.Client.isUnset(request.terraformProviderVersion)) {
            query["terraformProviderVersion"] = request.terraformProviderVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProducts",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/products",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProducts(_ request: ListProductsRequest) async throws -> ListProductsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductsWithOptions(request as! ListProductsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectWithOptions(_ tmpReq: ListProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListProjectShrinkRequest = ListProjectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProject",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/project",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProject(_ request: ListProjectRequest) async throws -> ListProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectWithOptions(request as! ListProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegistryModuleVersionsWithOptions(_ request: ListRegistryModuleVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRegistryModuleVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["moduleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["namespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRegistryModuleVersions",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryModuleVersion",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRegistryModuleVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegistryModuleVersions(_ request: ListRegistryModuleVersionsRequest) async throws -> ListRegistryModuleVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRegistryModuleVersionsWithOptions(request as! ListRegistryModuleVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegistryModulesWithOptions(_ request: ListRegistryModulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRegistryModulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["namespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRegistryModules",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryModules",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRegistryModulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegistryModules(_ request: ListRegistryModulesRequest) async throws -> ListRegistryModulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRegistryModulesWithOptions(request as! ListRegistryModulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegistryNamespacesWithOptions(_ request: ListRegistryNamespacesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRegistryNamespacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRegistryNamespaces",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryNamespace",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRegistryNamespacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegistryNamespaces(_ request: ListRegistryNamespacesRequest) async throws -> ListRegistryNamespacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRegistryNamespacesWithOptions(request as! ListRegistryNamespacesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceExportTaskVersionsWithOptions(_ exportTaskId: String, _ request: ListResourceExportTaskVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceExportTaskVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.exportVersion)) {
            query["exportVersion"] = request.exportVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceExportTaskVersions",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/exportTasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(exportTaskId)) + "/exportVersions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceExportTaskVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceExportTaskVersions(_ exportTaskId: String, _ request: ListResourceExportTaskVersionsRequest) async throws -> ListResourceExportTaskVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceExportTaskVersionsWithOptions(exportTaskId as! String, request as! ListResourceExportTaskVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceExportTasksWithOptions(_ request: ListResourceExportTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceExportTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.exportTaskId)) {
            query["exportTaskId"] = request.exportTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceExportTasks",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/exportTasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceExportTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceExportTasks(_ request: ListResourceExportTasksRequest) async throws -> ListResourceExportTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceExportTasksWithOptions(request as! ListResourceExportTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceTypesWithOptions(_ tmpReq: ListResourceTypesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceTypesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListResourceTypesShrinkRequest = ListResourceTypesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.terraformResourceTypes)) {
            request.terraformResourceTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.terraformResourceTypes, "terraformResourceTypes", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["acceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subcategory)) {
            query["subcategory"] = request.subcategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportTerraformer)) {
            query["supportTerraformer"] = request.supportTerraformer!;
        }
        if (!TeaUtils.Client.isUnset(request.terraformProviderVersion)) {
            query["terraformProviderVersion"] = request.terraformProviderVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terraformResourceTypesShrink)) {
            query["terraformResourceTypes"] = request.terraformResourceTypesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceTypes",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/resourceTypes",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceTypes(_ request: ListResourceTypesRequest) async throws -> ListResourceTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceTypesWithOptions(request as! ListResourceTypesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTasksWithOptions(_ tmpReq: ListTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTasksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTasksShrinkRequest = ListTasksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["groupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleId)) {
            query["moduleId"] = request.moduleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTasks",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/tasks",
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
    public func listTasks(_ request: ListTasksRequest) async throws -> ListTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTasksWithOptions(request as! ListTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTerraformProviderVersionsWithOptions(_ request: ListTerraformProviderVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTerraformProviderVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usage)) {
            query["usage"] = request.usage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTerraformProviderVersions",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/version/terraform/provider",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTerraformProviderVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTerraformProviderVersions(_ request: ListTerraformProviderVersionsRequest) async throws -> ListTerraformProviderVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTerraformProviderVersionsWithOptions(request as! ListTerraformProviderVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateJobWithOptions(_ taskId: String, _ jobId: String, _ operationType: String, _ request: OperateJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["taskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateJob",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/operation/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(operationType)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateJob(_ taskId: String, _ jobId: String, _ operationType: String, _ request: OperateJobRequest) async throws -> OperateJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await operateJobWithOptions(taskId as! String, jobId as! String, operationType as! String, request as! OperateJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishRegistryModuleVersionWithOptions(_ request: PublishRegistryModuleVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishRegistryModuleVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            body["moduleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            body["namespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishRegistryModuleVersion",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryModuleVersion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishRegistryModuleVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishRegistryModuleVersion(_ request: PublishRegistryModuleVersionRequest) async throws -> PublishRegistryModuleVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await publishRegistryModuleVersionWithOptions(request as! PublishRegistryModuleVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSharedAccountsWithOptions(_ tmpReq: RemoveSharedAccountsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveSharedAccountsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveSharedAccountsShrinkRequest = RemoveSharedAccountsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.accountIds)) {
            request.accountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.accountIds, "accountIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIdsShrink)) {
            query["accountIds"] = request.accountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["resourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveSharedAccounts",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/sharedAccounts",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveSharedAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSharedAccounts(_ request: RemoveSharedAccountsRequest) async throws -> RemoveSharedAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeSharedAccountsWithOptions(request as! RemoveSharedAccountsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExplorerModuleAttributeWithOptions(_ explorerModuleId: String, _ request: UpdateExplorerModuleAttributeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateExplorerModuleAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateExplorerModuleAttribute",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/explorerModule/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(explorerModuleId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateExplorerModuleAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExplorerModuleAttribute(_ explorerModuleId: String, _ request: UpdateExplorerModuleAttributeRequest) async throws -> UpdateExplorerModuleAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateExplorerModuleAttributeWithOptions(explorerModuleId as! String, request as! UpdateExplorerModuleAttributeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupWithOptions(_ groupId: String, _ request: UpdateGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoDestroy)) {
            body["autoDestroy"] = request.autoDestroy!;
        }
        if (!TeaUtils.Client.isUnset(request.autoTrigger)) {
            body["autoTrigger"] = request.autoTrigger!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forcedSetting)) {
            body["forcedSetting"] = request.forcedSetting!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyConfig)) {
            body["notifyConfig"] = request.notifyConfig ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.notifyOperationTypes)) {
            body["notifyOperationTypes"] = request.notifyOperationTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ramRole)) {
            body["ramRole"] = request.ramRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportExportField)) {
            body["reportExportField"] = request.reportExportField ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.reportExportPath)) {
            body["reportExportPath"] = request.reportExportPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terraformProviderVersion)) {
            body["terraformProviderVersion"] = request.terraformProviderVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerConfig)) {
            body["triggerConfig"] = request.triggerConfig ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.triggerResourceType)) {
            body["triggerResourceType"] = request.triggerResourceType ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGroup",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/group/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroup(_ groupId: String, _ request: UpdateGroupRequest) async throws -> UpdateGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGroupWithOptions(groupId as! String, request as! UpdateGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModuleAttributeWithOptions(_ moduleId: String, _ request: UpdateModuleAttributeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateModuleAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupInfo)) {
            body["groupInfo"] = request.groupInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePath)) {
            body["sourcePath"] = request.sourcePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statePath)) {
            body["statePath"] = request.statePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.versionStrategy)) {
            body["versionStrategy"] = request.versionStrategy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateModuleAttribute",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/modules/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateModuleAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModuleAttribute(_ moduleId: String, _ request: UpdateModuleAttributeRequest) async throws -> UpdateModuleAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateModuleAttributeWithOptions(moduleId as! String, request as! UpdateModuleAttributeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectWithOptions(_ projectId: String, _ request: UpdateProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProject",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/project/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProject(_ projectId: String, _ request: UpdateProjectRequest) async throws -> UpdateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProjectWithOptions(projectId as! String, request as! UpdateProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRegistryModuleAttributeWithOptions(_ namespaceName: String, _ moduleName: String, _ request: UpdateRegistryModuleAttributeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRegistryModuleAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acl)) {
            body["acl"] = request.acl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRegistryModuleAttribute",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryModule/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespaceName)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRegistryModuleAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRegistryModuleAttribute(_ namespaceName: String, _ moduleName: String, _ request: UpdateRegistryModuleAttributeRequest) async throws -> UpdateRegistryModuleAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRegistryModuleAttributeWithOptions(namespaceName as! String, moduleName as! String, request as! UpdateRegistryModuleAttributeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRegistryNamespaceAttributeWithOptions(_ namespaceName: String, _ request: UpdateRegistryNamespaceAttributeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRegistryNamespaceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acl)) {
            body["acl"] = request.acl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRegistryNamespaceAttribute",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/registryNamespace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespaceName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRegistryNamespaceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRegistryNamespaceAttribute(_ namespaceName: String, _ request: UpdateRegistryNamespaceAttributeRequest) async throws -> UpdateRegistryNamespaceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRegistryNamespaceAttributeWithOptions(namespaceName as! String, request as! UpdateRegistryNamespaceAttributeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceExportTaskAttributeWithOptions(_ exportTaskId: String, _ request: UpdateResourceExportTaskAttributeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourceExportTaskAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportToModule)) {
            body["exportToModule"] = request.exportToModule!;
        }
        if (!TeaUtils.Client.isUnset(request.includeRules)) {
            body["includeRules"] = request.includeRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ramRole)) {
            body["ramRole"] = request.ramRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terraformProviderVersion)) {
            body["terraformProviderVersion"] = request.terraformProviderVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terraformVersion)) {
            body["terraformVersion"] = request.terraformVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerStrategy)) {
            body["triggerStrategy"] = request.triggerStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variables)) {
            body["variables"] = request.variables ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResourceExportTaskAttribute",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/exportTasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(exportTaskId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourceExportTaskAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceExportTaskAttribute(_ exportTaskId: String, _ request: UpdateResourceExportTaskAttributeRequest) async throws -> UpdateResourceExportTaskAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateResourceExportTaskAttributeWithOptions(exportTaskId as! String, request as! UpdateResourceExportTaskAttributeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskAttributeWithOptions(_ taskId: String, _ request: UpdateTaskAttributeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTaskAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoApply)) {
            body["autoApply"] = request.autoApply!;
        }
        if (!TeaUtils.Client.isUnset(request.autoDestroy)) {
            body["autoDestroy"] = request.autoDestroy!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupInfo)) {
            body["groupInfo"] = request.groupInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.initModuleState)) {
            body["initModuleState"] = request.initModuleState!;
        }
        if (!TeaUtils.Client.isUnset(request.moduleVersion)) {
            body["moduleVersion"] = request.moduleVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protectionStrategy)) {
            body["protectionStrategy"] = request.protectionStrategy ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ramRole)) {
            body["ramRole"] = request.ramRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipPropertyValidation)) {
            body["skipPropertyValidation"] = request.skipPropertyValidation!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.terraformVersion)) {
            body["terraformVersion"] = request.terraformVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerStrategy)) {
            body["triggerStrategy"] = request.triggerStrategy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTaskAttribute",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTaskAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTaskAttribute(_ taskId: String, _ request: UpdateTaskAttributeRequest) async throws -> UpdateTaskAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTaskAttributeWithOptions(taskId as! String, request as! UpdateTaskAttributeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateModuleWithOptions(_ request: ValidateModuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateModuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeMap)) {
            body["codeMap"] = request.codeMap ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePath)) {
            body["sourcePath"] = request.sourcePath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateModule",
            "version": "2021-08-06",
            "protocol": "HTTPS",
            "pathname": "/module/validation",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateModuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateModule(_ request: ValidateModuleRequest) async throws -> ValidateModuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await validateModuleWithOptions(request as! ValidateModuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
