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
        self._endpointMap = [
            "cn-beijing": "pai.cn-beijing.aliyuncs.com",
            "cn-hangzhou": "pai.cn-hangzhou.aliyuncs.com",
            "cn-shanghai": "pai.cn-shanghai.aliyuncs.com",
            "cn-shenzhen": "pai.cn-shenzhen.aliyuncs.com",
            "cn-hongkong": "pai.cn-hongkong.aliyuncs.com",
            "ap-southeast-1": "pai.ap-southeast-1.aliyuncs.com",
            "ap-southeast-2": "pai.ap-southeast-2.aliyuncs.com",
            "ap-southeast-3": "pai.ap-southeast-3.aliyuncs.com",
            "ap-southeast-5": "pai.ap-southeast-5.aliyuncs.com",
            "us-west-1": "pai.us-west-1.aliyuncs.com",
            "us-east-1": "pai.us-east-1.aliyuncs.com",
            "eu-central-1": "pai.eu-central-1.aliyuncs.com",
            "me-east-1": "pai.me-east-1.aliyuncs.com",
            "ap-south-1": "pai.ap-south-1.aliyuncs.com",
            "cn-qingdao": "pai.cn-qingdao.aliyuncs.com",
            "cn-zhangjiakou": "pai.cn-zhangjiakou.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("paistudio", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func checkInstanceWebTerminalWithOptions(_ TrainingJobId: String, _ InstanceId: String, _ request: CheckInstanceWebTerminalRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckInstanceWebTerminalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkInfo)) {
            body["CheckInfo"] = request.checkInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckInstanceWebTerminal",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/webterminals/action/check",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckInstanceWebTerminalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkInstanceWebTerminal(_ TrainingJobId: String, _ InstanceId: String, _ request: CheckInstanceWebTerminalRequest) async throws -> CheckInstanceWebTerminalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkInstanceWebTerminalWithOptions(TrainingJobId as! String, InstanceId as! String, request as! CheckInstanceWebTerminalRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlgorithmWithOptions(_ request: CreateAlgorithmRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAlgorithmResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmDescription)) {
            body["AlgorithmDescription"] = request.algorithmDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.algorithmName)) {
            body["AlgorithmName"] = request.algorithmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAlgorithm",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithms",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAlgorithmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlgorithm(_ request: CreateAlgorithmRequest) async throws -> CreateAlgorithmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAlgorithmWithOptions(request as! CreateAlgorithmRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlgorithmVersionWithOptions(_ AlgorithmId: String, _ AlgorithmVersion: String, _ tmpReq: CreateAlgorithmVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAlgorithmVersionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAlgorithmVersionShrinkRequest = CreateAlgorithmVersionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.algorithmSpec)) {
            request.algorithmSpecShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.algorithmSpec, "AlgorithmSpec", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmSpecShrink)) {
            body["AlgorithmSpec"] = request.algorithmSpecShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAlgorithmVersion",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithms/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmVersion)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAlgorithmVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAlgorithmVersion(_ AlgorithmId: String, _ AlgorithmVersion: String, _ request: CreateAlgorithmVersionRequest) async throws -> CreateAlgorithmVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAlgorithmVersionWithOptions(AlgorithmId as! String, AlgorithmVersion as! String, request as! CreateAlgorithmVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceWebTerminalWithOptions(_ TrainingJobId: String, _ InstanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceWebTerminalResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstanceWebTerminal",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/webterminals",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceWebTerminalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceWebTerminal(_ TrainingJobId: String, _ InstanceId: String) async throws -> CreateInstanceWebTerminalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createInstanceWebTerminalWithOptions(TrainingJobId as! String, InstanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQuotaWithOptions(_ request: CreateQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allocateStrategy)) {
            body["AllocateStrategy"] = request.allocateStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.min)) {
            body["Min"] = request.min!;
        }
        if (!TeaUtils.Client.isUnset(request.parentQuotaId)) {
            body["ParentQuotaId"] = request.parentQuotaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queueStrategy)) {
            body["QueueStrategy"] = request.queueStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaConfig)) {
            body["QuotaConfig"] = request.quotaConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.quotaName)) {
            body["QuotaName"] = request.quotaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIds)) {
            body["ResourceGroupIds"] = request.resourceGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateQuota",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQuota(_ request: CreateQuotaRequest) async throws -> CreateQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createQuotaWithOptions(request as! CreateQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceGroupWithOptions(_ request: CreateResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingResourceProvider)) {
            body["ComputingResourceProvider"] = request.computingResourceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userVpc)) {
            body["UserVpc"] = request.userVpc!;
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResourceGroup",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceGroup(_ request: CreateResourceGroupRequest) async throws -> CreateResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createResourceGroupWithOptions(request as! CreateResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrainingJobWithOptions(_ request: CreateTrainingJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTrainingJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmName)) {
            body["AlgorithmName"] = request.algorithmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.algorithmProvider)) {
            body["AlgorithmProvider"] = request.algorithmProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.algorithmSpec)) {
            body["AlgorithmSpec"] = request.algorithmSpec!;
        }
        if (!TeaUtils.Client.isUnset(request.algorithmVersion)) {
            body["AlgorithmVersion"] = request.algorithmVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeDir)) {
            body["CodeDir"] = request.codeDir!;
        }
        if (!TeaUtils.Client.isUnset(request.computeResource)) {
            body["ComputeResource"] = request.computeResource!;
        }
        if (!TeaUtils.Client.isUnset(request.environments)) {
            body["Environments"] = request.environments ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.experimentConfig)) {
            body["ExperimentConfig"] = request.experimentConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.hyperParameters)) {
            body["HyperParameters"] = request.hyperParameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.inputChannels)) {
            body["InputChannels"] = request.inputChannels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.outputChannels)) {
            body["OutputChannels"] = request.outputChannels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.pythonRequirements)) {
            body["PythonRequirements"] = request.pythonRequirements ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.roleArn)) {
            body["RoleArn"] = request.roleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduler)) {
            body["Scheduler"] = request.scheduler!;
        }
        if (!TeaUtils.Client.isUnset(request.settings)) {
            body["Settings"] = request.settings!;
        }
        if (!TeaUtils.Client.isUnset(request.trainingJobDescription)) {
            body["TrainingJobDescription"] = request.trainingJobDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainingJobName)) {
            body["TrainingJobName"] = request.trainingJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userVpc)) {
            body["UserVpc"] = request.userVpc!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrainingJob",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTrainingJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrainingJob(_ request: CreateTrainingJobRequest) async throws -> CreateTrainingJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTrainingJobWithOptions(request as! CreateTrainingJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlgorithmWithOptions(_ AlgorithmId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAlgorithmResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAlgorithm",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithms/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAlgorithmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlgorithm(_ AlgorithmId: String) async throws -> DeleteAlgorithmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAlgorithmWithOptions(AlgorithmId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlgorithmVersionWithOptions(_ AlgorithmId: String, _ AlgorithmVersion: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAlgorithmVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAlgorithmVersion",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithms/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmVersion)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAlgorithmVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAlgorithmVersion(_ AlgorithmId: String, _ AlgorithmVersion: String) async throws -> DeleteAlgorithmVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAlgorithmVersionWithOptions(AlgorithmId as! String, AlgorithmVersion as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMachineGroupWithOptions(_ MachineGroupID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMachineGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMachineGroup",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/machinegroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(MachineGroupID)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMachineGroup(_ MachineGroupID: String) async throws -> DeleteMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMachineGroupWithOptions(MachineGroupID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteQuotaWithOptions(_ QuotaId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteQuotaResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteQuota",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(QuotaId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteQuota(_ QuotaId: String) async throws -> DeleteQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteQuotaWithOptions(QuotaId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceGroupWithOptions(_ ResourceGroupID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResourceGroup",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceGroup(_ ResourceGroupID: String) async throws -> DeleteResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteResourceGroupWithOptions(ResourceGroupID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceGroupMachineGroupWithOptions(_ MachineGroupID: String, _ ResourceGroupID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceGroupMachineGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResourceGroupMachineGroup",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)) + "/machinegroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(MachineGroupID)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceGroupMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceGroupMachineGroup(_ MachineGroupID: String, _ ResourceGroupID: String) async throws -> DeleteResourceGroupMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteResourceGroupMachineGroupWithOptions(MachineGroupID as! String, ResourceGroupID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrainingJobWithOptions(_ TrainingJobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTrainingJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrainingJob",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTrainingJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrainingJob(_ TrainingJobId: String) async throws -> DeleteTrainingJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTrainingJobWithOptions(TrainingJobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrainingJobLabelsWithOptions(_ TrainingJobId: String, _ request: DeleteTrainingJobLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTrainingJobLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keys)) {
            query["Keys"] = request.keys ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrainingJobLabels",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/labels",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTrainingJobLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrainingJobLabels(_ TrainingJobId: String, _ request: DeleteTrainingJobLabelsRequest) async throws -> DeleteTrainingJobLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTrainingJobLabelsWithOptions(TrainingJobId as! String, request as! DeleteTrainingJobLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlgorithmWithOptions(_ AlgorithmId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAlgorithmResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAlgorithm",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithms/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAlgorithmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlgorithm(_ AlgorithmId: String) async throws -> GetAlgorithmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAlgorithmWithOptions(AlgorithmId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlgorithmVersionWithOptions(_ AlgorithmId: String, _ AlgorithmVersion: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAlgorithmVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAlgorithmVersion",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithms/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmVersion)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAlgorithmVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlgorithmVersion(_ AlgorithmId: String, _ AlgorithmVersion: String) async throws -> GetAlgorithmVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAlgorithmVersionWithOptions(AlgorithmId as! String, AlgorithmVersion as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMachineGroupWithOptions(_ MachineGroupID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMachineGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMachineGroup",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/machinegroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(MachineGroupID)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMachineGroup(_ MachineGroupID: String) async throws -> GetMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMachineGroupWithOptions(MachineGroupID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeMetricsWithOptions(_ ResourceGroupID: String, _ MetricType: String, _ request: GetNodeMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.GPUType)) {
            query["GPUType"] = request.GPUType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStep)) {
            query["TimeStep"] = request.timeStep ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeMetrics",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)) + "/nodemetrics/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(MetricType)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeMetrics(_ ResourceGroupID: String, _ MetricType: String, _ request: GetNodeMetricsRequest) async throws -> GetNodeMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getNodeMetricsWithOptions(ResourceGroupID as! String, MetricType as! String, request as! GetNodeMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaWithOptions(_ QuotaId: String, _ request: GetQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQuota",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(QuotaId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuota(_ QuotaId: String, _ request: GetQuotaRequest) async throws -> GetQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQuotaWithOptions(QuotaId as! String, request as! GetQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupWithOptions(_ ResourceGroupID: String, _ tmpReq: GetResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetResourceGroupShrinkRequest = GetResourceGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isAIWorkspaceDataEnabled)) {
            query["IsAIWorkspaceDataEnabled"] = request.isAIWorkspaceDataEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceGroup",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroup(_ ResourceGroupID: String, _ request: GetResourceGroupRequest) async throws -> GetResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceGroupWithOptions(ResourceGroupID as! String, request as! GetResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupMachineGroupWithOptions(_ MachineGroupID: String, _ ResourceGroupID: String, _ tmpReq: GetResourceGroupMachineGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceGroupMachineGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetResourceGroupMachineGroupShrinkRequest = GetResourceGroupMachineGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceGroupMachineGroup",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)) + "/machinegroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(MachineGroupID)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceGroupMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupMachineGroup(_ MachineGroupID: String, _ ResourceGroupID: String, _ request: GetResourceGroupMachineGroupRequest) async throws -> GetResourceGroupMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceGroupMachineGroupWithOptions(MachineGroupID as! String, ResourceGroupID as! String, request as! GetResourceGroupMachineGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupRequestWithOptions(_ request: GetResourceGroupRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceGroupRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.podStatus)) {
            query["PodStatus"] = request.podStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupID)) {
            query["ResourceGroupID"] = request.resourceGroupID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceGroupRequest",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/data/request",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceGroupRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupRequest(_ request: GetResourceGroupRequestRequest) async throws -> GetResourceGroupRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceGroupRequestWithOptions(request as! GetResourceGroupRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupTotalWithOptions(_ request: GetResourceGroupTotalRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceGroupTotalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupID)) {
            query["ResourceGroupID"] = request.resourceGroupID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceGroupTotal",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/data/total",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceGroupTotalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupTotal(_ request: GetResourceGroupTotalRequest) async throws -> GetResourceGroupTotalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceGroupTotalWithOptions(request as! GetResourceGroupTotalRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpotPriceHistoryWithOptions(_ InstanceType: String, _ request: GetSpotPriceHistoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSpotPriceHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
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
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spotDuration)) {
            query["SpotDuration"] = request.spotDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSpotPriceHistory",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/spots/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceType)) + "/pricehistory",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSpotPriceHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpotPriceHistory(_ InstanceType: String, _ request: GetSpotPriceHistoryRequest) async throws -> GetSpotPriceHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSpotPriceHistoryWithOptions(InstanceType as! String, request as! GetSpotPriceHistoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenWithOptions(_ request: GetTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            query["ExpireTime"] = request.expireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.trainingJobId)) {
            query["TrainingJobId"] = request.trainingJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetToken",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tokens",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getToken(_ request: GetTokenRequest) async throws -> GetTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTokenWithOptions(request as! GetTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrainingJobWithOptions(_ TrainingJobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrainingJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrainingJob",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrainingJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrainingJob(_ TrainingJobId: String) async throws -> GetTrainingJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTrainingJobWithOptions(TrainingJobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrainingJobErrorInfoWithOptions(_ TrainingJobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrainingJobErrorInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrainingJobErrorInfo",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/errorinfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrainingJobErrorInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrainingJobErrorInfo(_ TrainingJobId: String) async throws -> GetTrainingJobErrorInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTrainingJobErrorInfoWithOptions(TrainingJobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrainingJobLatestMetricsWithOptions(_ TrainingJobId: String, _ request: GetTrainingJobLatestMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrainingJobLatestMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.names)) {
            query["Names"] = request.names ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrainingJobLatestMetrics",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/latestmetrics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrainingJobLatestMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrainingJobLatestMetrics(_ TrainingJobId: String, _ request: GetTrainingJobLatestMetricsRequest) async throws -> GetTrainingJobLatestMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTrainingJobLatestMetricsWithOptions(TrainingJobId as! String, request as! GetTrainingJobLatestMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserViewMetricsWithOptions(_ ResourceGroupID: String, _ request: GetUserViewMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserViewMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStep)) {
            query["TimeStep"] = request.timeStep ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserViewMetrics",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)) + "/usermetrics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserViewMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserViewMetrics(_ ResourceGroupID: String, _ request: GetUserViewMetricsRequest) async throws -> GetUserViewMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserViewMetricsWithOptions(ResourceGroupID as! String, request as! GetUserViewMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlgorithmVersionsWithOptions(_ AlgorithmId: String, _ request: ListAlgorithmVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlgorithmVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlgorithmVersions",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithms/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmId)) + "/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlgorithmVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlgorithmVersions(_ AlgorithmId: String, _ request: ListAlgorithmVersionsRequest) async throws -> ListAlgorithmVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAlgorithmVersionsWithOptions(AlgorithmId as! String, request as! ListAlgorithmVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlgorithmsWithOptions(_ request: ListAlgorithmsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlgorithmsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmId)) {
            query["AlgorithmId"] = request.algorithmId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.algorithmName)) {
            query["AlgorithmName"] = request.algorithmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.algorithmProvider)) {
            query["AlgorithmProvider"] = request.algorithmProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlgorithms",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithms",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlgorithmsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlgorithms(_ request: ListAlgorithmsRequest) async throws -> ListAlgorithmsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAlgorithmsWithOptions(request as! ListAlgorithmsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodesWithOptions(_ request: ListNodesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceleratorType)) {
            query["AcceleratorType"] = request.acceleratorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.availabilityZone)) {
            query["AvailabilityZone"] = request.availabilityZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cliqueID)) {
            query["CliqueID"] = request.cliqueID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterByQuotaId)) {
            query["FilterByQuotaId"] = request.filterByQuotaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterByResourceGroupIds)) {
            query["FilterByResourceGroupIds"] = request.filterByResourceGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.GPUType)) {
            query["GPUType"] = request.GPUType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hyperNode)) {
            query["HyperNode"] = request.hyperNode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hyperZone)) {
            query["HyperZone"] = request.hyperZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.machineGroupIds)) {
            query["MachineGroupIds"] = request.machineGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeNames)) {
            query["NodeNames"] = request.nodeNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeStatuses)) {
            query["NodeStatuses"] = request.nodeStatuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeTypes)) {
            query["NodeTypes"] = request.nodeTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderInstanceIds)) {
            query["OrderInstanceIds"] = request.orderInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderStatuses)) {
            query["OrderStatuses"] = request.orderStatuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["PaymentType"] = request.paymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaId)) {
            query["QuotaId"] = request.quotaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reasonCodes)) {
            query["ReasonCodes"] = request.reasonCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIds)) {
            query["ResourceGroupIds"] = request.resourceGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodes",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/nodes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodes(_ request: ListNodesRequest) async throws -> ListNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listNodesWithOptions(request as! ListNodesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotaWorkloadsWithOptions(_ QuotaId: String, _ request: ListQuotaWorkloadsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQuotaWorkloadsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beforeWorkloadId)) {
            query["BeforeWorkloadId"] = request.beforeWorkloadId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtDequeuedTimeRange)) {
            query["GmtDequeuedTimeRange"] = request.gmtDequeuedTimeRange!;
        }
        if (!TeaUtils.Client.isUnset(request.gmtEnqueuedTimeRange)) {
            query["GmtEnqueuedTimeRange"] = request.gmtEnqueuedTimeRange!;
        }
        if (!TeaUtils.Client.isUnset(request.gmtPositionModifiedTimeRange)) {
            query["GmtPositionModifiedTimeRange"] = request.gmtPositionModifiedTimeRange!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeName)) {
            query["NodeName"] = request.nodeName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.showOwn)) {
            query["ShowOwn"] = request.showOwn!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subQuotaIds)) {
            query["SubQuotaIds"] = request.subQuotaIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withHistoricalData)) {
            query["WithHistoricalData"] = request.withHistoricalData!;
        }
        if (!TeaUtils.Client.isUnset(request.workloadCreatedTimeRange)) {
            query["WorkloadCreatedTimeRange"] = request.workloadCreatedTimeRange!;
        }
        if (!TeaUtils.Client.isUnset(request.workloadIds)) {
            query["WorkloadIds"] = request.workloadIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadStatuses)) {
            query["WorkloadStatuses"] = request.workloadStatuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadType)) {
            query["WorkloadType"] = request.workloadType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceIds)) {
            query["WorkspaceIds"] = request.workspaceIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQuotaWorkloads",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(QuotaId)) + "/workloads",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQuotaWorkloadsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotaWorkloads(_ QuotaId: String, _ request: ListQuotaWorkloadsRequest) async throws -> ListQuotaWorkloadsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQuotaWorkloadsWithOptions(QuotaId as! String, request as! ListQuotaWorkloadsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotasWithOptions(_ request: ListQuotasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQuotasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hasResource)) {
            query["HasResource"] = request.hasResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layoutMode)) {
            query["LayoutMode"] = request.layoutMode ?? "";
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
        if (!TeaUtils.Client.isUnset(request.parentQuotaId)) {
            query["ParentQuotaId"] = request.parentQuotaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaIds)) {
            query["QuotaIds"] = request.quotaIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaName)) {
            query["QuotaName"] = request.quotaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statuses)) {
            query["Statuses"] = request.statuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        if (!TeaUtils.Client.isUnset(request.versions)) {
            query["Versions"] = request.versions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceIds)) {
            query["WorkspaceIds"] = request.workspaceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceName)) {
            query["WorkspaceName"] = request.workspaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQuotas",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQuotasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotas(_ request: ListQuotasRequest) async throws -> ListQuotasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQuotasWithOptions(request as! ListQuotasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroupMachineGroupsWithOptions(_ ResourceGroupID: String, _ request: ListResourceGroupMachineGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceGroupMachineGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creatorID)) {
            query["CreatorID"] = request.creatorID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsSpec)) {
            query["EcsSpec"] = request.ecsSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.machineGroupIDs)) {
            query["MachineGroupIDs"] = request.machineGroupIDs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderInstanceId)) {
            query["OrderInstanceId"] = request.orderInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentDuration)) {
            query["PaymentDuration"] = request.paymentDuration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentDurationUnit)) {
            query["PaymentDurationUnit"] = request.paymentDurationUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["PaymentType"] = request.paymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceGroupMachineGroups",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)) + "/machinegroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceGroupMachineGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroupMachineGroups(_ ResourceGroupID: String, _ request: ListResourceGroupMachineGroupsRequest) async throws -> ListResourceGroupMachineGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceGroupMachineGroupsWithOptions(ResourceGroupID as! String, request as! ListResourceGroupMachineGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroupsWithOptions(_ request: ListResourceGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingResourceProvider)) {
            query["ComputingResourceProvider"] = request.computingResourceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hasResource)) {
            query["HasResource"] = request.hasResource!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceGroupIDs)) {
            query["ResourceGroupIDs"] = request.resourceGroupIDs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showAll)) {
            query["ShowAll"] = request.showAll!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versions)) {
            query["Versions"] = request.versions ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceGroups",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources",
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
    public func listTrainingJobEventsWithOptions(_ TrainingJobId: String, _ request: ListTrainingJobEventsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrainingJobEventsResponse {
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
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrainingJobEvents",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/events",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrainingJobEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobEvents(_ TrainingJobId: String, _ request: ListTrainingJobEventsRequest) async throws -> ListTrainingJobEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTrainingJobEventsWithOptions(TrainingJobId as! String, request as! ListTrainingJobEventsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobInstanceEventsWithOptions(_ TrainingJobId: String, _ InstanceId: String, _ request: ListTrainingJobInstanceEventsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrainingJobInstanceEventsResponse {
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
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrainingJobInstanceEvents",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId)) + "/events",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrainingJobInstanceEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobInstanceEvents(_ TrainingJobId: String, _ InstanceId: String, _ request: ListTrainingJobInstanceEventsRequest) async throws -> ListTrainingJobInstanceEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTrainingJobInstanceEventsWithOptions(TrainingJobId as! String, InstanceId as! String, request as! ListTrainingJobInstanceEventsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobInstanceMetricsWithOptions(_ TrainingJobId: String, _ request: ListTrainingJobInstanceMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrainingJobInstanceMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            query["MetricType"] = request.metricType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStep)) {
            query["TimeStep"] = request.timeStep ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrainingJobInstanceMetrics",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/instancemetrics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrainingJobInstanceMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobInstanceMetrics(_ TrainingJobId: String, _ request: ListTrainingJobInstanceMetricsRequest) async throws -> ListTrainingJobInstanceMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTrainingJobInstanceMetricsWithOptions(TrainingJobId as! String, request as! ListTrainingJobInstanceMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobLogsWithOptions(_ TrainingJobId: String, _ request: ListTrainingJobLogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrainingJobLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workerId)) {
            query["WorkerId"] = request.workerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrainingJobLogs",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrainingJobLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobLogs(_ TrainingJobId: String, _ request: ListTrainingJobLogsRequest) async throws -> ListTrainingJobLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTrainingJobLogsWithOptions(TrainingJobId as! String, request as! ListTrainingJobLogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobMetricsWithOptions(_ TrainingJobId: String, _ request: ListTrainingJobMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrainingJobMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
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
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrainingJobMetrics",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/metrics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrainingJobMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobMetrics(_ TrainingJobId: String, _ request: ListTrainingJobMetricsRequest) async throws -> ListTrainingJobMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTrainingJobMetricsWithOptions(TrainingJobId as! String, request as! ListTrainingJobMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobOutputModelsWithOptions(_ TrainingJobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrainingJobOutputModelsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrainingJobOutputModels",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/outputmodels",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrainingJobOutputModelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobOutputModels(_ TrainingJobId: String) async throws -> ListTrainingJobOutputModelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTrainingJobOutputModelsWithOptions(TrainingJobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobsWithOptions(_ tmpReq: ListTrainingJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrainingJobsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTrainingJobsShrinkRequest = ListTrainingJobsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.labels)) {
            request.labelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.labels, "Labels", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmName)) {
            query["AlgorithmName"] = request.algorithmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.algorithmProvider)) {
            query["AlgorithmProvider"] = request.algorithmProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isTempAlgo)) {
            query["IsTempAlgo"] = request.isTempAlgo!;
        }
        if (!TeaUtils.Client.isUnset(request.labelsShrink)) {
            query["Labels"] = request.labelsShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainingJobId)) {
            query["TrainingJobId"] = request.trainingJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainingJobName)) {
            query["TrainingJobName"] = request.trainingJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrainingJobs",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrainingJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrainingJobs(_ request: ListTrainingJobsRequest) async throws -> ListTrainingJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTrainingJobsWithOptions(request as! ListTrainingJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleQuotaWithOptions(_ QuotaId: String, _ request: ScaleQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ScaleQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.min)) {
            body["Min"] = request.min!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIds)) {
            body["ResourceGroupIds"] = request.resourceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScaleQuota",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(QuotaId)) + "/action/scale",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScaleQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleQuota(_ QuotaId: String, _ request: ScaleQuotaRequest) async throws -> ScaleQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await scaleQuotaWithOptions(QuotaId as! String, request as! ScaleQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTrainingJobWithOptions(_ TrainingJobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopTrainingJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopTrainingJob",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopTrainingJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTrainingJob(_ TrainingJobId: String) async throws -> StopTrainingJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopTrainingJobWithOptions(TrainingJobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlgorithmWithOptions(_ AlgorithmId: String, _ request: UpdateAlgorithmRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAlgorithmResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmDescription)) {
            body["AlgorithmDescription"] = request.algorithmDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["DisplayName"] = request.displayName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAlgorithm",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithms/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAlgorithmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlgorithm(_ AlgorithmId: String, _ request: UpdateAlgorithmRequest) async throws -> UpdateAlgorithmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAlgorithmWithOptions(AlgorithmId as! String, request as! UpdateAlgorithmRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlgorithmVersionWithOptions(_ AlgorithmId: String, _ AlgorithmVersion: String, _ tmpReq: UpdateAlgorithmVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAlgorithmVersionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAlgorithmVersionShrinkRequest = UpdateAlgorithmVersionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.algorithmSpec)) {
            request.algorithmSpecShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.algorithmSpec, "AlgorithmSpec", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmSpecShrink)) {
            body["AlgorithmSpec"] = request.algorithmSpecShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAlgorithmVersion",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/algorithms/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(AlgorithmVersion)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAlgorithmVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlgorithmVersion(_ AlgorithmId: String, _ AlgorithmVersion: String, _ request: UpdateAlgorithmVersionRequest) async throws -> UpdateAlgorithmVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAlgorithmVersionWithOptions(AlgorithmId as! String, AlgorithmVersion as! String, request as! UpdateAlgorithmVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaWithOptions(_ QuotaId: String, _ request: UpdateQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.queueStrategy)) {
            body["QueueStrategy"] = request.queueStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaConfig)) {
            body["QuotaConfig"] = request.quotaConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.quotaName)) {
            body["QuotaName"] = request.quotaName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateQuota",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(QuotaId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuota(_ QuotaId: String, _ request: UpdateQuotaRequest) async throws -> UpdateQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateQuotaWithOptions(QuotaId as! String, request as! UpdateQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceGroupWithOptions(_ ResourceGroupID: String, _ request: UpdateResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unbind)) {
            body["Unbind"] = request.unbind!;
        }
        if (!TeaUtils.Client.isUnset(request.userVpc)) {
            body["UserVpc"] = request.userVpc!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResourceGroup",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceGroup(_ ResourceGroupID: String, _ request: UpdateResourceGroupRequest) async throws -> UpdateResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateResourceGroupWithOptions(ResourceGroupID as! String, request as! UpdateResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrainingJobLabelsWithOptions(_ TrainingJobId: String, _ request: UpdateTrainingJobLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTrainingJobLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTrainingJobLabels",
            "version": "2022-01-12",
            "protocol": "HTTPS",
            "pathname": "/api/v1/trainingjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrainingJobId)) + "/labels",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTrainingJobLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrainingJobLabels(_ TrainingJobId: String, _ request: UpdateTrainingJobLabelsRequest) async throws -> UpdateTrainingJobLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTrainingJobLabelsWithOptions(TrainingJobId as! String, request as! UpdateTrainingJobLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
