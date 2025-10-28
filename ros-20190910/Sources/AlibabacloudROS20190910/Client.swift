import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "central"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("ros", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func cancelStackOperationWithOptions(_ request: CancelStackOperationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelStackOperationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowedStackOperations)) {
            query["AllowedStackOperations"] = request.allowedStackOperations ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.cancelType)) {
            query["CancelType"] = request.cancelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelStackOperation",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelStackOperationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelStackOperation(_ request: CancelStackOperationRequest) async throws -> CancelStackOperationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelStackOperationWithOptions(request as! CancelStackOperationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelUpdateStackWithOptions(_ request: CancelUpdateStackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelUpdateStackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cancelType)) {
            query["CancelType"] = request.cancelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelUpdateStack",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelUpdateStackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelUpdateStack(_ request: CancelUpdateStackRequest) async throws -> CancelUpdateStackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelUpdateStackWithOptions(request as! CancelUpdateStackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func continueCreateStackWithOptions(_ request: ContinueCreateStackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ContinueCreateStackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parallelism)) {
            query["Parallelism"] = request.parallelism!;
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ramRoleName)) {
            query["RamRoleName"] = request.ramRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recreatingOptions)) {
            query["RecreatingOptions"] = request.recreatingOptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.recreatingResources)) {
            query["RecreatingResources"] = request.recreatingResources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            query["TemplateBody"] = request.templateBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ContinueCreateStack",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ContinueCreateStackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func continueCreateStack(_ request: ContinueCreateStackRequest) async throws -> ContinueCreateStackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await continueCreateStackWithOptions(request as! ContinueCreateStackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAITaskWithOptions(_ request: CreateAITaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAITaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            query["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.template)) {
            body["Template"] = request.template ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAITask",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAITaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAITask(_ request: CreateAITaskRequest) async throws -> CreateAITaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAITaskWithOptions(request as! CreateAITaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChangeSetWithOptions(_ request: CreateChangeSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChangeSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeSetName)) {
            query["ChangeSetName"] = request.changeSetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeSetType)) {
            query["ChangeSetType"] = request.changeSetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableRollback)) {
            query["DisableRollback"] = request.disableRollback!;
        }
        if (!TeaUtils.Client.isUnset(request.notificationURLs)) {
            query["NotificationURLs"] = request.notificationURLs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parallelism)) {
            query["Parallelism"] = request.parallelism!;
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ramRoleName)) {
            query["RamRoleName"] = request.ramRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replacementOption)) {
            query["ReplacementOption"] = request.replacementOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourcesToImport)) {
            query["ResourcesToImport"] = request.resourcesToImport ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackName)) {
            query["StackName"] = request.stackName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyBody)) {
            query["StackPolicyBody"] = request.stackPolicyBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyDuringUpdateBody)) {
            query["StackPolicyDuringUpdateBody"] = request.stackPolicyDuringUpdateBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyDuringUpdateURL)) {
            query["StackPolicyDuringUpdateURL"] = request.stackPolicyDuringUpdateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyURL)) {
            query["StackPolicyURL"] = request.stackPolicyURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taintResources)) {
            query["TaintResources"] = request.taintResources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchId)) {
            query["TemplateScratchId"] = request.templateScratchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeoutInMinutes)) {
            query["TimeoutInMinutes"] = request.timeoutInMinutes!;
        }
        if (!TeaUtils.Client.isUnset(request.usePreviousParameters)) {
            query["UsePreviousParameters"] = request.usePreviousParameters!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChangeSet",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChangeSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChangeSet(_ request: CreateChangeSetRequest) async throws -> CreateChangeSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createChangeSetWithOptions(request as! CreateChangeSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDiagnosticWithOptions(_ request: CreateDiagnosticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDiagnosticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diagnosticKey)) {
            query["DiagnosticKey"] = request.diagnosticKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diagnosticType)) {
            query["DiagnosticType"] = request.diagnosticType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["Product"] = request.product ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDiagnostic",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDiagnosticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDiagnostic(_ request: CreateDiagnosticRequest) async throws -> CreateDiagnosticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDiagnosticWithOptions(request as! CreateDiagnosticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStackWithOptions(_ request: CreateStackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createOption)) {
            query["CreateOption"] = request.createOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createOptions)) {
            query["CreateOptions"] = request.createOptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.deletionProtection)) {
            query["DeletionProtection"] = request.deletionProtection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableRollback)) {
            query["DisableRollback"] = request.disableRollback!;
        }
        if (!TeaUtils.Client.isUnset(request.notificationURLs)) {
            query["NotificationURLs"] = request.notificationURLs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parallelism)) {
            query["Parallelism"] = request.parallelism!;
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ramRoleName)) {
            query["RamRoleName"] = request.ramRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackName)) {
            query["StackName"] = request.stackName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyBody)) {
            query["StackPolicyBody"] = request.stackPolicyBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyURL)) {
            query["StackPolicyURL"] = request.stackPolicyURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchId)) {
            query["TemplateScratchId"] = request.templateScratchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchRegionId)) {
            query["TemplateScratchRegionId"] = request.templateScratchRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeoutInMinutes)) {
            query["TimeoutInMinutes"] = request.timeoutInMinutes!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStack",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStack(_ request: CreateStackRequest) async throws -> CreateStackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStackWithOptions(request as! CreateStackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStackGroupWithOptions(_ tmpReq: CreateStackGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStackGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateStackGroupShrinkRequest = CreateStackGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.autoDeployment)) {
            request.autoDeploymentShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.autoDeployment, "AutoDeployment", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.administrationRoleName)) {
            query["AdministrationRoleName"] = request.administrationRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoDeploymentShrink)) {
            query["AutoDeployment"] = request.autoDeploymentShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.capabilities)) {
            query["Capabilities"] = request.capabilities ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionRoleName)) {
            query["ExecutionRoleName"] = request.executionRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.permissionModel)) {
            query["PermissionModel"] = request.permissionModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackArn)) {
            query["StackArn"] = request.stackArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStackGroup",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStackGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStackGroup(_ request: CreateStackGroupRequest) async throws -> CreateStackGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStackGroupWithOptions(request as! CreateStackGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStackInstancesWithOptions(_ tmpReq: CreateStackInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStackInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateStackInstancesShrinkRequest = CreateStackInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.accountIds)) {
            request.accountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.accountIds, "AccountIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.deploymentTargets)) {
            request.deploymentTargetsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deploymentTargets, "DeploymentTargets", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.operationPreferences)) {
            request.operationPreferencesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.operationPreferences, "OperationPreferences", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.regionIds)) {
            request.regionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.regionIds, "RegionIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIdsShrink)) {
            query["AccountIds"] = request.accountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deploymentOptions)) {
            query["DeploymentOptions"] = request.deploymentOptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.deploymentTargetsShrink)) {
            query["DeploymentTargets"] = request.deploymentTargetsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableRollback)) {
            query["DisableRollback"] = request.disableRollback!;
        }
        if (!TeaUtils.Client.isUnset(request.operationDescription)) {
            query["OperationDescription"] = request.operationDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationPreferencesShrink)) {
            query["OperationPreferences"] = request.operationPreferencesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameterOverrides)) {
            query["ParameterOverrides"] = request.parameterOverrides ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsShrink)) {
            query["RegionIds"] = request.regionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeoutInMinutes)) {
            query["TimeoutInMinutes"] = request.timeoutInMinutes!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStackInstances",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStackInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStackInstances(_ request: CreateStackInstancesRequest) async throws -> CreateStackInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStackInstancesWithOptions(request as! CreateStackInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTemplateWithOptions(_ request: CreateTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validationOptions)) {
            query["ValidationOptions"] = request.validationOptions ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTemplate",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTemplate(_ request: CreateTemplateRequest) async throws -> CreateTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTemplateWithOptions(request as! CreateTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTemplateScratchWithOptions(_ tmpReq: CreateTemplateScratchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTemplateScratchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateTemplateScratchShrinkRequest = CreateTemplateScratchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.preferenceParameters)) {
            request.preferenceParametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.preferenceParameters, "PreferenceParameters", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceResourceGroup)) {
            request.sourceResourceGroupShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceResourceGroup, "SourceResourceGroup", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceResources)) {
            request.sourceResourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceResources, "SourceResources", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceTag)) {
            request.sourceTagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceTag, "SourceTag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionMode)) {
            query["ExecutionMode"] = request.executionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalIdStrategy)) {
            query["LogicalIdStrategy"] = request.logicalIdStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferenceParametersShrink)) {
            query["PreferenceParameters"] = request.preferenceParametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceResourceGroupShrink)) {
            query["SourceResourceGroup"] = request.sourceResourceGroupShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceResourcesShrink)) {
            query["SourceResources"] = request.sourceResourcesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTagShrink)) {
            query["SourceTag"] = request.sourceTagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchType)) {
            query["TemplateScratchType"] = request.templateScratchType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTemplateScratch",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTemplateScratchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTemplateScratch(_ request: CreateTemplateScratchRequest) async throws -> CreateTemplateScratchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTemplateScratchWithOptions(request as! CreateTemplateScratchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChangeSetWithOptions(_ request: DeleteChangeSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteChangeSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeSetId)) {
            query["ChangeSetId"] = request.changeSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteChangeSet",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteChangeSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChangeSet(_ request: DeleteChangeSetRequest) async throws -> DeleteChangeSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteChangeSetWithOptions(request as! DeleteChangeSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDiagnosticWithOptions(_ request: DeleteDiagnosticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDiagnosticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            query["ReportId"] = request.reportId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDiagnostic",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDiagnosticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDiagnostic(_ request: DeleteDiagnosticRequest) async throws -> DeleteDiagnosticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDiagnosticWithOptions(request as! DeleteDiagnosticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStackWithOptions(_ request: DeleteStackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteOptions)) {
            query["DeleteOptions"] = request.deleteOptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parallelism)) {
            query["Parallelism"] = request.parallelism!;
        }
        if (!TeaUtils.Client.isUnset(request.ramRoleName)) {
            query["RamRoleName"] = request.ramRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retainAllResources)) {
            query["RetainAllResources"] = request.retainAllResources!;
        }
        if (!TeaUtils.Client.isUnset(request.retainResources)) {
            query["RetainResources"] = request.retainResources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStack",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStack(_ request: DeleteStackRequest) async throws -> DeleteStackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteStackWithOptions(request as! DeleteStackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStackGroupWithOptions(_ request: DeleteStackGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStackGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStackGroup",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStackGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStackGroup(_ request: DeleteStackGroupRequest) async throws -> DeleteStackGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteStackGroupWithOptions(request as! DeleteStackGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStackInstancesWithOptions(_ tmpReq: DeleteStackInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStackInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteStackInstancesShrinkRequest = DeleteStackInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.accountIds)) {
            request.accountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.accountIds, "AccountIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.deploymentTargets)) {
            request.deploymentTargetsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deploymentTargets, "DeploymentTargets", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.operationPreferences)) {
            request.operationPreferencesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.operationPreferences, "OperationPreferences", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.regionIds)) {
            request.regionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.regionIds, "RegionIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIdsShrink)) {
            query["AccountIds"] = request.accountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deploymentTargetsShrink)) {
            query["DeploymentTargets"] = request.deploymentTargetsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationDescription)) {
            query["OperationDescription"] = request.operationDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationPreferencesShrink)) {
            query["OperationPreferences"] = request.operationPreferencesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsShrink)) {
            query["RegionIds"] = request.regionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retainStacks)) {
            query["RetainStacks"] = request.retainStacks!;
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStackInstances",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStackInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStackInstances(_ request: DeleteStackInstancesRequest) async throws -> DeleteStackInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteStackInstancesWithOptions(request as! DeleteStackInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTemplateWithOptions(_ request: DeleteTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTemplate",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTemplate(_ request: DeleteTemplateRequest) async throws -> DeleteTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTemplateWithOptions(request as! DeleteTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTemplateScratchWithOptions(_ request: DeleteTemplateScratchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTemplateScratchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchId)) {
            query["TemplateScratchId"] = request.templateScratchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTemplateScratch",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTemplateScratchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTemplateScratch(_ request: DeleteTemplateScratchRequest) async throws -> DeleteTemplateScratchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTemplateScratchWithOptions(request as! DeleteTemplateScratchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deregisterResourceTypeWithOptions(_ request: DeregisterResourceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeregisterResourceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeregisterResourceType",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeregisterResourceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deregisterResourceType(_ request: DeregisterResourceTypeRequest) async throws -> DeregisterResourceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deregisterResourceTypeWithOptions(request as! DeregisterResourceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions(_ request: DescribeRegionsRequest) async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionsWithOptions(request as! DescribeRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectStackDriftWithOptions(_ request: DetectStackDriftRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectStackDriftResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalResourceId)) {
            query["LogicalResourceId"] = request.logicalResourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectStackDrift",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectStackDriftResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectStackDrift(_ request: DetectStackDriftRequest) async throws -> DetectStackDriftResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectStackDriftWithOptions(request as! DetectStackDriftRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectStackGroupDriftWithOptions(_ tmpReq: DetectStackGroupDriftRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectStackGroupDriftResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetectStackGroupDriftShrinkRequest = DetectStackGroupDriftShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.operationPreferences)) {
            request.operationPreferencesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.operationPreferences, "OperationPreferences", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationPreferencesShrink)) {
            query["OperationPreferences"] = request.operationPreferencesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectStackGroupDrift",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectStackGroupDriftResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectStackGroupDrift(_ request: DetectStackGroupDriftRequest) async throws -> DetectStackGroupDriftResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectStackGroupDriftWithOptions(request as! DetectStackGroupDriftRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectStackResourceDriftWithOptions(_ request: DetectStackResourceDriftRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectStackResourceDriftResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalResourceId)) {
            query["LogicalResourceId"] = request.logicalResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectStackResourceDrift",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectStackResourceDriftResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectStackResourceDrift(_ request: DetectStackResourceDriftRequest) async throws -> DetectStackResourceDriftResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectStackResourceDriftWithOptions(request as! DetectStackResourceDriftRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableServiceAccessWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> EnableServiceAccessResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableServiceAccess",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableServiceAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableServiceAccess() async throws -> EnableServiceAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableServiceAccessWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableServicesWithOptions(_ tmpReq: EnableServicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableServicesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EnableServicesShrinkRequest = EnableServicesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.serviceNames)) {
            request.serviceNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.serviceNames, "ServiceNames", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceNamesShrink)) {
            query["ServiceNames"] = request.serviceNamesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableServices",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableServices(_ request: EnableServicesRequest) async throws -> EnableServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableServicesWithOptions(request as! EnableServicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeChangeSetWithOptions(_ request: ExecuteChangeSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteChangeSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeSetId)) {
            query["ChangeSetId"] = request.changeSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteChangeSet",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteChangeSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeChangeSet(_ request: ExecuteChangeSetRequest) async throws -> ExecuteChangeSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeChangeSetWithOptions(request as! ExecuteChangeSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateTemplateByScratchWithOptions(_ request: GenerateTemplateByScratchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateTemplateByScratchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.provisionRegionId)) {
            query["ProvisionRegionId"] = request.provisionRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchId)) {
            query["TemplateScratchId"] = request.templateScratchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateTemplateByScratch",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateTemplateByScratchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateTemplateByScratch(_ request: GenerateTemplateByScratchRequest) async throws -> GenerateTemplateByScratchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateTemplateByScratchWithOptions(request as! GenerateTemplateByScratchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateTemplatePolicyWithOptions(_ request: GenerateTemplatePolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateTemplatePolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationTypes)) {
            query["OperationTypes"] = request.operationTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            query["TemplateBody"] = request.templateBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateTemplatePolicy",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateTemplatePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateTemplatePolicy(_ request: GenerateTemplatePolicyRequest) async throws -> GenerateTemplatePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateTemplatePolicyWithOptions(request as! GenerateTemplatePolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAITaskWithOptions(_ request: GetAITaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAITaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outputOption)) {
            query["OutputOption"] = request.outputOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAITask",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAITaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAITask(_ request: GetAITaskRequest) async throws -> GetAITaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAITaskWithOptions(request as! GetAITaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChangeSetWithOptions(_ request: GetChangeSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChangeSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeSetId)) {
            query["ChangeSetId"] = request.changeSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showTemplate)) {
            query["ShowTemplate"] = request.showTemplate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChangeSet",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChangeSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChangeSet(_ request: GetChangeSetRequest) async throws -> GetChangeSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getChangeSetWithOptions(request as! GetChangeSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiagnosticWithOptions(_ request: GetDiagnosticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDiagnosticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            query["ReportId"] = request.reportId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDiagnostic",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDiagnosticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiagnostic(_ request: GetDiagnosticRequest) async throws -> GetDiagnosticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDiagnosticWithOptions(request as! GetDiagnosticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFeatureDetailsWithOptions(_ request: GetFeatureDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFeatureDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.feature)) {
            query["Feature"] = request.feature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFeatureDetails",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFeatureDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFeatureDetails(_ request: GetFeatureDetailsRequest) async throws -> GetFeatureDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFeatureDetailsWithOptions(request as! GetFeatureDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceTypeWithOptions(_ request: GetResourceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceType",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceType(_ request: GetResourceTypeRequest) async throws -> GetResourceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceTypeWithOptions(request as! GetResourceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceTypeTemplateWithOptions(_ request: GetResourceTypeTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceTypeTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceTypeTemplate",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceTypeTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceTypeTemplate(_ request: GetResourceTypeTemplateRequest) async throws -> GetResourceTypeTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceTypeTemplateWithOptions(request as! GetResourceTypeTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceAccessWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceAccessResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceAccess",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceAccess() async throws -> GetServiceAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getServiceAccessWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceProvisionsWithOptions(_ request: GetServiceProvisionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceProvisionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.services)) {
            query["Services"] = request.services ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceProvisions",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceProvisionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceProvisions(_ request: GetServiceProvisionsRequest) async throws -> GetServiceProvisionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getServiceProvisionsWithOptions(request as! GetServiceProvisionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackWithOptions(_ request: GetStackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logOption)) {
            query["LogOption"] = request.logOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputOption)) {
            query["OutputOption"] = request.outputOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showResourceProgress)) {
            query["ShowResourceProgress"] = request.showResourceProgress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStack",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStack(_ request: GetStackRequest) async throws -> GetStackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStackWithOptions(request as! GetStackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackDriftDetectionStatusWithOptions(_ request: GetStackDriftDetectionStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStackDriftDetectionStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.driftDetectionId)) {
            query["DriftDetectionId"] = request.driftDetectionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStackDriftDetectionStatus",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStackDriftDetectionStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackDriftDetectionStatus(_ request: GetStackDriftDetectionStatusRequest) async throws -> GetStackDriftDetectionStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStackDriftDetectionStatusWithOptions(request as! GetStackDriftDetectionStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackGroupWithOptions(_ request: GetStackGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStackGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupId)) {
            query["StackGroupId"] = request.stackGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStackGroup",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStackGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackGroup(_ request: GetStackGroupRequest) async throws -> GetStackGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStackGroupWithOptions(request as! GetStackGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackGroupOperationWithOptions(_ request: GetStackGroupOperationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStackGroupOperationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationId)) {
            query["OperationId"] = request.operationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStackGroupOperation",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStackGroupOperationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackGroupOperation(_ request: GetStackGroupOperationRequest) async throws -> GetStackGroupOperationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStackGroupOperationWithOptions(request as! GetStackGroupOperationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackInstanceWithOptions(_ request: GetStackInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStackInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outputOption)) {
            query["OutputOption"] = request.outputOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackInstanceAccountId)) {
            query["StackInstanceAccountId"] = request.stackInstanceAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackInstanceRegionId)) {
            query["StackInstanceRegionId"] = request.stackInstanceRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStackInstance",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStackInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackInstance(_ request: GetStackInstanceRequest) async throws -> GetStackInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStackInstanceWithOptions(request as! GetStackInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackPolicyWithOptions(_ request: GetStackPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStackPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStackPolicy",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStackPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackPolicy(_ request: GetStackPolicyRequest) async throws -> GetStackPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStackPolicyWithOptions(request as! GetStackPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackResourceWithOptions(_ request: GetStackResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStackResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalResourceId)) {
            query["LogicalResourceId"] = request.logicalResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceAttributes)) {
            query["ResourceAttributes"] = request.resourceAttributes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.showResourceAttributes)) {
            query["ShowResourceAttributes"] = request.showResourceAttributes!;
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStackResource",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStackResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStackResource(_ request: GetStackResourceRequest) async throws -> GetStackResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStackResourceWithOptions(request as! GetStackResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateWithOptions(_ request: GetTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeSetId)) {
            query["ChangeSetId"] = request.changeSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includePermission)) {
            query["IncludePermission"] = request.includePermission ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeTags)) {
            query["IncludeTags"] = request.includeTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateStage)) {
            query["TemplateStage"] = request.templateStage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTemplate",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplate(_ request: GetTemplateRequest) async throws -> GetTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTemplateWithOptions(request as! GetTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateEstimateCostWithOptions(_ request: GetTemplateEstimateCostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTemplateEstimateCostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchId)) {
            query["TemplateScratchId"] = request.templateScratchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchRegionId)) {
            query["TemplateScratchRegionId"] = request.templateScratchRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTemplateEstimateCost",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTemplateEstimateCostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateEstimateCost(_ request: GetTemplateEstimateCostRequest) async throws -> GetTemplateEstimateCostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTemplateEstimateCostWithOptions(request as! GetTemplateEstimateCostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateParameterConstraintsWithOptions(_ tmpReq: GetTemplateParameterConstraintsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTemplateParameterConstraintsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetTemplateParameterConstraintsShrinkRequest = GetTemplateParameterConstraintsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.parametersKeyFilter)) {
            request.parametersKeyFilterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.parametersKeyFilter, "ParametersKeyFilter", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.parametersOrder)) {
            request.parametersOrderShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.parametersOrder, "ParametersOrder", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parametersKeyFilterShrink)) {
            query["ParametersKeyFilter"] = request.parametersKeyFilterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parametersOrderShrink)) {
            query["ParametersOrder"] = request.parametersOrderShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTemplateParameterConstraints",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTemplateParameterConstraintsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateParameterConstraints(_ request: GetTemplateParameterConstraintsRequest) async throws -> GetTemplateParameterConstraintsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTemplateParameterConstraintsWithOptions(request as! GetTemplateParameterConstraintsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateRecommendParametersWithOptions(_ request: GetTemplateRecommendParametersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTemplateRecommendParametersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            query["TemplateBody"] = request.templateBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTemplateRecommendParameters",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTemplateRecommendParametersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateRecommendParameters(_ request: GetTemplateRecommendParametersRequest) async throws -> GetTemplateRecommendParametersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTemplateRecommendParametersWithOptions(request as! GetTemplateRecommendParametersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateScratchWithOptions(_ request: GetTemplateScratchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTemplateScratchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showDataOption)) {
            query["ShowDataOption"] = request.showDataOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchId)) {
            query["TemplateScratchId"] = request.templateScratchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTemplateScratch",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTemplateScratchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateScratch(_ request: GetTemplateScratchRequest) async throws -> GetTemplateScratchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTemplateScratchWithOptions(request as! GetTemplateScratchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateSummaryWithOptions(_ request: GetTemplateSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTemplateSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeSetId)) {
            query["ChangeSetId"] = request.changeSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            query["TemplateBody"] = request.templateBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTemplateSummary",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTemplateSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemplateSummary(_ request: GetTemplateSummaryRequest) async throws -> GetTemplateSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTemplateSummaryWithOptions(request as! GetTemplateSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importStacksToStackGroupWithOptions(_ tmpReq: ImportStacksToStackGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportStacksToStackGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ImportStacksToStackGroupShrinkRequest = ImportStacksToStackGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.operationPreferences)) {
            request.operationPreferencesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.operationPreferences, "OperationPreferences", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.resourceDirectoryFolderIds)) {
            request.resourceDirectoryFolderIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceDirectoryFolderIds, "ResourceDirectoryFolderIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.stackArns)) {
            request.stackArnsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.stackArns, "StackArns", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationDescription)) {
            query["OperationDescription"] = request.operationDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationPreferencesShrink)) {
            query["OperationPreferences"] = request.operationPreferencesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceDirectoryFolderIdsShrink)) {
            query["ResourceDirectoryFolderIds"] = request.resourceDirectoryFolderIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackArnsShrink)) {
            query["StackArns"] = request.stackArnsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportStacksToStackGroup",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportStacksToStackGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importStacksToStackGroup(_ request: ImportStacksToStackGroupRequest) async throws -> ImportStacksToStackGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importStacksToStackGroupWithOptions(request as! ImportStacksToStackGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAITaskEventsWithOptions(_ request: ListAITaskEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAITaskEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAITaskEvents",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAITaskEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAITaskEvents(_ request: ListAITaskEventsRequest) async throws -> ListAITaskEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAITaskEventsWithOptions(request as! ListAITaskEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAITasksWithOptions(_ request: ListAITasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAITasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAITasks",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAITasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAITasks(_ request: ListAITasksRequest) async throws -> ListAITasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAITasksWithOptions(request as! ListAITasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChangeSetsWithOptions(_ request: ListChangeSetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChangeSetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeSetId)) {
            query["ChangeSetId"] = request.changeSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeSetName)) {
            query["ChangeSetName"] = request.changeSetName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.executionStatus)) {
            query["ExecutionStatus"] = request.executionStatus ?? [];
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
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChangeSets",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChangeSetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChangeSets(_ request: ListChangeSetsRequest) async throws -> ListChangeSetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listChangeSetsWithOptions(request as! ListChangeSetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDiagnosticsWithOptions(_ request: ListDiagnosticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDiagnosticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diagnosticKey)) {
            query["DiagnosticKey"] = request.diagnosticKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diagnosticProduct)) {
            query["DiagnosticProduct"] = request.diagnosticProduct ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDiagnostics",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDiagnosticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDiagnostics(_ request: ListDiagnosticsRequest) async throws -> ListDiagnosticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDiagnosticsWithOptions(request as! ListDiagnosticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceTypeRegistrationsWithOptions(_ request: ListResourceTypeRegistrationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceTypeRegistrationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entityType)) {
            query["EntityType"] = request.entityType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.registrationId)) {
            query["RegistrationId"] = request.registrationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceTypeRegistrations",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceTypeRegistrationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceTypeRegistrations(_ request: ListResourceTypeRegistrationsRequest) async throws -> ListResourceTypeRegistrationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listResourceTypeRegistrationsWithOptions(request as! ListResourceTypeRegistrationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceTypeVersionsWithOptions(_ request: ListResourceTypeVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceTypeVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceTypeVersions",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceTypeVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceTypeVersions(_ request: ListResourceTypeVersionsRequest) async throws -> ListResourceTypeVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listResourceTypeVersionsWithOptions(request as! ListResourceTypeVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceTypesWithOptions(_ request: ListResourceTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entityType)) {
            query["EntityType"] = request.entityType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.provider)) {
            query["Provider"] = request.provider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceTypes",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceTypes(_ request: ListResourceTypesRequest) async throws -> ListResourceTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listResourceTypesWithOptions(request as! ListResourceTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackEventsWithOptions(_ request: ListStackEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStackEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logicalResourceId)) {
            query["LogicalResourceId"] = request.logicalResourceId ?? [];
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
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStackEvents",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStackEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackEvents(_ request: ListStackEventsRequest) async throws -> ListStackEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listStackEventsWithOptions(request as! ListStackEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackGroupOperationResultsWithOptions(_ request: ListStackGroupOperationResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStackGroupOperationResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationId)) {
            query["OperationId"] = request.operationId ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStackGroupOperationResults",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStackGroupOperationResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackGroupOperationResults(_ request: ListStackGroupOperationResultsRequest) async throws -> ListStackGroupOperationResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listStackGroupOperationResultsWithOptions(request as! ListStackGroupOperationResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackGroupOperationsWithOptions(_ request: ListStackGroupOperationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStackGroupOperationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStackGroupOperations",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStackGroupOperationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackGroupOperations(_ request: ListStackGroupOperationsRequest) async throws -> ListStackGroupOperationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listStackGroupOperationsWithOptions(request as! ListStackGroupOperationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackGroupsWithOptions(_ request: ListStackGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStackGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStackGroups",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStackGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackGroups(_ request: ListStackGroupsRequest) async throws -> ListStackGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listStackGroupsWithOptions(request as! ListStackGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackInstancesWithOptions(_ request: ListStackInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStackInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackInstanceAccountId)) {
            query["StackInstanceAccountId"] = request.stackInstanceAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackInstanceRegionId)) {
            query["StackInstanceRegionId"] = request.stackInstanceRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStackInstances",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStackInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackInstances(_ request: ListStackInstancesRequest) async throws -> ListStackInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listStackInstancesWithOptions(request as! ListStackInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackOperationRisksWithOptions(_ request: ListStackOperationRisksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStackOperationRisksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            query["OperationType"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ramRoleName)) {
            query["RamRoleName"] = request.ramRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retainAllResources)) {
            query["RetainAllResources"] = request.retainAllResources!;
        }
        if (!TeaUtils.Client.isUnset(request.retainResources)) {
            query["RetainResources"] = request.retainResources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStackOperationRisks",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStackOperationRisksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackOperationRisks(_ request: ListStackOperationRisksRequest) async throws -> ListStackOperationRisksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listStackOperationRisksWithOptions(request as! ListStackOperationRisksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackResourceDriftsWithOptions(_ request: ListStackResourceDriftsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStackResourceDriftsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceDriftStatus)) {
            query["ResourceDriftStatus"] = request.resourceDriftStatus ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStackResourceDrifts",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStackResourceDriftsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackResourceDrifts(_ request: ListStackResourceDriftsRequest) async throws -> ListStackResourceDriftsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listStackResourceDriftsWithOptions(request as! ListStackResourceDriftsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackResourcesWithOptions(_ request: ListStackResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStackResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStackResources",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStackResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStackResources(_ request: ListStackResourcesRequest) async throws -> ListStackResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listStackResourcesWithOptions(request as! ListStackResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStacksWithOptions(_ request: ListStacksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStacksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentStackId)) {
            query["ParentStackId"] = request.parentStackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showNestedStack)) {
            query["ShowNestedStack"] = request.showNestedStack!;
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackIds)) {
            query["StackIds"] = request.stackIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.stackName)) {
            query["StackName"] = request.stackName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStacks",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStacksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStacks(_ request: ListStacksRequest) async throws -> ListStacksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listStacksWithOptions(request as! ListStacksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSummariesWithOptions(_ request: ListSummariesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSummariesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.option)) {
            query["Option"] = request.option ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSummaries",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSummariesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSummaries(_ request: ListSummariesRequest) async throws -> ListSummariesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSummariesWithOptions(request as! ListSummariesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagKeysWithOptions(_ request: ListTagKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagKeys",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagKeys(_ request: ListTagKeysRequest) async throws -> ListTagKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagKeysWithOptions(request as! ListTagKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagValuesWithOptions(_ request: ListTagValuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagValuesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagValues",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagValuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagValues(_ request: ListTagValuesRequest) async throws -> ListTagValuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagValuesWithOptions(request as! ListTagValuesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplateScratchesWithOptions(_ request: ListTemplateScratchesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTemplateScratchesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchId)) {
            query["TemplateScratchId"] = request.templateScratchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchType)) {
            query["TemplateScratchType"] = request.templateScratchType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTemplateScratches",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTemplateScratchesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplateScratches(_ request: ListTemplateScratchesRequest) async throws -> ListTemplateScratchesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTemplateScratchesWithOptions(request as! ListTemplateScratchesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplateVersionsWithOptions(_ request: ListTemplateVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTemplateVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTemplateVersions",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTemplateVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplateVersions(_ request: ListTemplateVersionsRequest) async throws -> ListTemplateVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTemplateVersionsWithOptions(request as! ListTemplateVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplatesWithOptions(_ request: ListTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filters)) {
            query["Filters"] = request.filters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.includeTags)) {
            query["IncludeTags"] = request.includeTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shareType)) {
            query["ShareType"] = request.shareType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTemplates",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTemplates(_ request: ListTemplatesRequest) async throws -> ListTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTemplatesWithOptions(request as! ListTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveResourceGroupWithOptions(_ request: MoveResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MoveResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            query["NewResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MoveResourceGroup",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MoveResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveResourceGroup(_ request: MoveResourceGroupRequest) async throws -> MoveResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await moveResourceGroupWithOptions(request as! MoveResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewStackWithOptions(_ request: PreviewStackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PreviewStackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableRollback)) {
            query["DisableRollback"] = request.disableRollback!;
        }
        if (!TeaUtils.Client.isUnset(request.enablePreConfig)) {
            query["EnablePreConfig"] = request.enablePreConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.parallelism)) {
            query["Parallelism"] = request.parallelism!;
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackName)) {
            query["StackName"] = request.stackName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyBody)) {
            query["StackPolicyBody"] = request.stackPolicyBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyURL)) {
            query["StackPolicyURL"] = request.stackPolicyURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taintResources)) {
            query["TaintResources"] = request.taintResources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchId)) {
            query["TemplateScratchId"] = request.templateScratchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchRegionId)) {
            query["TemplateScratchRegionId"] = request.templateScratchRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeoutInMinutes)) {
            query["TimeoutInMinutes"] = request.timeoutInMinutes!;
        }
        if (!TeaUtils.Client.isUnset(request.usePreviousParameters)) {
            query["UsePreviousParameters"] = request.usePreviousParameters!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PreviewStack",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PreviewStackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewStack(_ request: PreviewStackRequest) async throws -> PreviewStackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await previewStackWithOptions(request as! PreviewStackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerResourceTypeWithOptions(_ request: RegisterResourceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterResourceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entityType)) {
            query["EntityType"] = request.entityType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterResourceType",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterResourceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerResourceType(_ request: RegisterResourceTypeRequest) async throws -> RegisterResourceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerResourceTypeWithOptions(request as! RegisterResourceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDeletionProtectionWithOptions(_ request: SetDeletionProtectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDeletionProtectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deletionProtection)) {
            query["DeletionProtection"] = request.deletionProtection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDeletionProtection",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDeletionProtectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDeletionProtection(_ request: SetDeletionProtectionRequest) async throws -> SetDeletionProtectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDeletionProtectionWithOptions(request as! SetDeletionProtectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setResourceTypeWithOptions(_ request: SetResourceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetResourceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defaultVersionId)) {
            query["DefaultVersionId"] = request.defaultVersionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetResourceType",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetResourceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setResourceType(_ request: SetResourceTypeRequest) async throws -> SetResourceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setResourceTypeWithOptions(request as! SetResourceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setStackPolicyWithOptions(_ request: SetStackPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetStackPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyBody)) {
            query["StackPolicyBody"] = request.stackPolicyBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyURL)) {
            query["StackPolicyURL"] = request.stackPolicyURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetStackPolicy",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetStackPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setStackPolicy(_ request: SetStackPolicyRequest) async throws -> SetStackPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setStackPolicyWithOptions(request as! SetStackPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setTemplatePermissionWithOptions(_ request: SetTemplatePermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetTemplatePermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIds)) {
            query["AccountIds"] = request.accountIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.shareOption)) {
            query["ShareOption"] = request.shareOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionOption)) {
            query["VersionOption"] = request.versionOption ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetTemplatePermission",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetTemplatePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setTemplatePermission(_ request: SetTemplatePermissionRequest) async throws -> SetTemplatePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setTemplatePermissionWithOptions(request as! SetTemplatePermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func signalResourceWithOptions(_ request: SignalResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SignalResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalResourceId)) {
            query["LogicalResourceId"] = request.logicalResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            query["UniqueId"] = request.uniqueId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SignalResource",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SignalResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func signalResource(_ request: SignalResourceRequest) async throws -> SignalResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await signalResourceWithOptions(request as! SignalResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopStackGroupOperationWithOptions(_ request: StopStackGroupOperationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopStackGroupOperationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationId)) {
            query["OperationId"] = request.operationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopStackGroupOperation",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopStackGroupOperationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopStackGroupOperation(_ request: StopStackGroupOperationRequest) async throws -> StopStackGroupOperationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopStackGroupOperationWithOptions(request as! StopStackGroupOperationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStackWithOptions(_ request: UpdateStackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableRollback)) {
            query["DisableRollback"] = request.disableRollback!;
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.dryRunOptions)) {
            query["DryRunOptions"] = request.dryRunOptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parallelism)) {
            query["Parallelism"] = request.parallelism!;
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ramRoleName)) {
            query["RamRoleName"] = request.ramRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replacementOption)) {
            query["ReplacementOption"] = request.replacementOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyBody)) {
            query["StackPolicyBody"] = request.stackPolicyBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyDuringUpdateBody)) {
            query["StackPolicyDuringUpdateBody"] = request.stackPolicyDuringUpdateBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyDuringUpdateURL)) {
            query["StackPolicyDuringUpdateURL"] = request.stackPolicyDuringUpdateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackPolicyURL)) {
            query["StackPolicyURL"] = request.stackPolicyURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taintResources)) {
            query["TaintResources"] = request.taintResources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeoutInMinutes)) {
            query["TimeoutInMinutes"] = request.timeoutInMinutes!;
        }
        if (!TeaUtils.Client.isUnset(request.usePreviousParameters)) {
            query["UsePreviousParameters"] = request.usePreviousParameters!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStack",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStack(_ request: UpdateStackRequest) async throws -> UpdateStackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateStackWithOptions(request as! UpdateStackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStackGroupWithOptions(_ tmpReq: UpdateStackGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStackGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateStackGroupShrinkRequest = UpdateStackGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.accountIds)) {
            request.accountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.accountIds, "AccountIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.autoDeployment)) {
            request.autoDeploymentShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.autoDeployment, "AutoDeployment", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.deploymentTargets)) {
            request.deploymentTargetsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deploymentTargets, "DeploymentTargets", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.operationPreferences)) {
            request.operationPreferencesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.operationPreferences, "OperationPreferences", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.regionIds)) {
            request.regionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.regionIds, "RegionIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIdsShrink)) {
            query["AccountIds"] = request.accountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.administrationRoleName)) {
            query["AdministrationRoleName"] = request.administrationRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoDeploymentShrink)) {
            query["AutoDeployment"] = request.autoDeploymentShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.capabilities)) {
            query["Capabilities"] = request.capabilities ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deploymentOptions)) {
            query["DeploymentOptions"] = request.deploymentOptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.deploymentTargetsShrink)) {
            query["DeploymentTargets"] = request.deploymentTargetsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionRoleName)) {
            query["ExecutionRoleName"] = request.executionRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationDescription)) {
            query["OperationDescription"] = request.operationDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationPreferencesShrink)) {
            query["OperationPreferences"] = request.operationPreferencesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.permissionModel)) {
            query["PermissionModel"] = request.permissionModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsShrink)) {
            query["RegionIds"] = request.regionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            query["TemplateVersion"] = request.templateVersion ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStackGroup",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStackGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStackGroup(_ request: UpdateStackGroupRequest) async throws -> UpdateStackGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateStackGroupWithOptions(request as! UpdateStackGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStackInstancesWithOptions(_ tmpReq: UpdateStackInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStackInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateStackInstancesShrinkRequest = UpdateStackInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.accountIds)) {
            request.accountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.accountIds, "AccountIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.deploymentTargets)) {
            request.deploymentTargetsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deploymentTargets, "DeploymentTargets", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.operationPreferences)) {
            request.operationPreferencesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.operationPreferences, "OperationPreferences", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.regionIds)) {
            request.regionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.regionIds, "RegionIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIdsShrink)) {
            query["AccountIds"] = request.accountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deploymentTargetsShrink)) {
            query["DeploymentTargets"] = request.deploymentTargetsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationDescription)) {
            query["OperationDescription"] = request.operationDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationPreferencesShrink)) {
            query["OperationPreferences"] = request.operationPreferencesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameterOverrides)) {
            query["ParameterOverrides"] = request.parameterOverrides ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsShrink)) {
            query["RegionIds"] = request.regionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackGroupName)) {
            query["StackGroupName"] = request.stackGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeoutInMinutes)) {
            query["TimeoutInMinutes"] = request.timeoutInMinutes!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStackInstances",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStackInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStackInstances(_ request: UpdateStackInstancesRequest) async throws -> UpdateStackInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateStackInstancesWithOptions(request as! UpdateStackInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStackTemplateByResourcesWithOptions(_ request: UpdateStackTemplateByResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStackTemplateByResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.logicalResourceId)) {
            query["LogicalResourceId"] = request.logicalResourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stackId)) {
            query["StackId"] = request.stackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateFormat)) {
            query["TemplateFormat"] = request.templateFormat ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStackTemplateByResources",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStackTemplateByResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStackTemplateByResources(_ request: UpdateStackTemplateByResourcesRequest) async throws -> UpdateStackTemplateByResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateStackTemplateByResourcesWithOptions(request as! UpdateStackTemplateByResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTemplateWithOptions(_ request: UpdateTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDraft)) {
            query["IsDraft"] = request.isDraft!;
        }
        if (!TeaUtils.Client.isUnset(request.rotateStrategy)) {
            query["RotateStrategy"] = request.rotateStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validationOptions)) {
            query["ValidationOptions"] = request.validationOptions ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTemplate",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTemplate(_ request: UpdateTemplateRequest) async throws -> UpdateTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTemplateWithOptions(request as! UpdateTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTemplateScratchWithOptions(_ tmpReq: UpdateTemplateScratchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTemplateScratchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTemplateScratchShrinkRequest = UpdateTemplateScratchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.preferenceParameters)) {
            request.preferenceParametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.preferenceParameters, "PreferenceParameters", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceResourceGroup)) {
            request.sourceResourceGroupShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceResourceGroup, "SourceResourceGroup", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceResources)) {
            request.sourceResourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceResources, "SourceResources", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceTag)) {
            request.sourceTagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceTag, "SourceTag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionMode)) {
            query["ExecutionMode"] = request.executionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicalIdStrategy)) {
            query["LogicalIdStrategy"] = request.logicalIdStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferenceParametersShrink)) {
            query["PreferenceParameters"] = request.preferenceParametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceResourceGroupShrink)) {
            query["SourceResourceGroup"] = request.sourceResourceGroupShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceResourcesShrink)) {
            query["SourceResources"] = request.sourceResourcesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTagShrink)) {
            query["SourceTag"] = request.sourceTagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateScratchId)) {
            query["TemplateScratchId"] = request.templateScratchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTemplateScratch",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTemplateScratchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTemplateScratch(_ request: UpdateTemplateScratchRequest) async throws -> UpdateTemplateScratchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTemplateScratchWithOptions(request as! UpdateTemplateScratchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateTemplateWithOptions(_ request: ValidateTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateURL)) {
            query["TemplateURL"] = request.templateURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateInfoOptions)) {
            query["UpdateInfoOptions"] = request.updateInfoOptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.validationOption)) {
            query["ValidationOption"] = request.validationOption ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateBody)) {
            body["TemplateBody"] = request.templateBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateTemplate",
            "version": "2019-09-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateTemplate(_ request: ValidateTemplateRequest) async throws -> ValidateTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateTemplateWithOptions(request as! ValidateTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
