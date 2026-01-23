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
            "ap-northeast-2-pop": "aiworkspace.aliyuncs.com",
            "ap-southeast-2": "aiworkspace.aliyuncs.com",
            "ap-southeast-5": "aiworkspace-vpc.ap-southeast-5.aliyuncs.com",
            "cn-beijing-finance-1": "aiworkspace.aliyuncs.com",
            "cn-beijing-finance-pop": "aiworkspace.aliyuncs.com",
            "cn-beijing-gov-1": "aiworkspace.aliyuncs.com",
            "cn-beijing-nu16-b01": "aiworkspace.aliyuncs.com",
            "cn-edge-1": "aiworkspace.aliyuncs.com",
            "cn-fujian": "aiworkspace.aliyuncs.com",
            "cn-haidian-cm12-c01": "aiworkspace.aliyuncs.com",
            "cn-hangzhou-bj-b01": "aiworkspace.aliyuncs.com",
            "cn-hangzhou-finance": "aiworkspace.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "aiworkspace.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "aiworkspace.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "aiworkspace.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "aiworkspace.aliyuncs.com",
            "cn-hangzhou-test-306": "aiworkspace.aliyuncs.com",
            "cn-hongkong-finance-pop": "aiworkspace.aliyuncs.com",
            "cn-huhehaote": "aiworkspace.aliyuncs.com",
            "cn-huhehaote-nebula-1": "aiworkspace.aliyuncs.com",
            "cn-qingdao": "aiworkspace.aliyuncs.com",
            "cn-qingdao-nebula": "aiworkspace.aliyuncs.com",
            "cn-shanghai-et15-b01": "aiworkspace.aliyuncs.com",
            "cn-shanghai-et2-b01": "aiworkspace.aliyuncs.com",
            "cn-shanghai-inner": "aiworkspace.aliyuncs.com",
            "cn-shanghai-internal-test-1": "aiworkspace.aliyuncs.com",
            "cn-shenzhen-finance-1": "aiworkspace.aliyuncs.com",
            "cn-shenzhen-inner": "aiworkspace.aliyuncs.com",
            "cn-shenzhen-st4-d01": "aiworkspace.aliyuncs.com",
            "cn-shenzhen-su18-b01": "aiworkspace.aliyuncs.com",
            "cn-wuhan": "aiworkspace.aliyuncs.com",
            "cn-yushanfang": "aiworkspace.aliyuncs.com",
            "cn-zhangbei": "aiworkspace.aliyuncs.com",
            "cn-zhangbei-na61-b01": "aiworkspace.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "aiworkspace.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "aiworkspace.aliyuncs.com",
            "eu-west-1": "aiworkspace.aliyuncs.com",
            "eu-west-1-oxs": "aiworkspace.aliyuncs.com",
            "me-east-1": "aiworkspace.aliyuncs.com",
            "rus-west-1-pop": "aiworkspace.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("aiworkspace", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func acceptDataworksEventWithOptions(_ request: AcceptDataworksEventRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AcceptDataworksEventResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.messageId)) {
            body["MessageId"] = request.messageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AcceptDataworksEvent",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/action/acceptdataworksevent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AcceptDataworksEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acceptDataworksEvent(_ request: AcceptDataworksEventRequest) async throws -> AcceptDataworksEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await acceptDataworksEventWithOptions(request as! AcceptDataworksEventRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addImageWithOptions(_ request: AddImageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            body["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddImage",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/images",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addImage(_ request: AddImageRequest) async throws -> AddImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addImageWithOptions(request as! AddImageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addImageLabelsWithOptions(_ ImageId: String, _ request: AddImageLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddImageLabelsResponse {
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
            "action": "AddImageLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/images/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ImageId)) + "/labels",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddImageLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addImageLabels(_ ImageId: String, _ request: AddImageLabelsRequest) async throws -> AddImageLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addImageLabelsWithOptions(ImageId as! String, request as! AddImageLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMemberRoleWithOptions(_ WorkspaceId: String, _ MemberId: String, _ RoleName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddMemberRoleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddMemberRole",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/members/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(MemberId)) + "/roles/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RoleName)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddMemberRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMemberRole(_ WorkspaceId: String, _ MemberId: String, _ RoleName: String) async throws -> AddMemberRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addMemberRoleWithOptions(WorkspaceId as! String, MemberId as! String, RoleName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            body["NewResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/resourcegroups/action/changeresourcegroup",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroup(_ request: ChangeResourceGroupRequest) async throws -> ChangeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await changeResourceGroupWithOptions(request as! ChangeResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCodeSourceWithOptions(_ request: CreateCodeSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCodeSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeBranch)) {
            body["CodeBranch"] = request.codeBranch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeCommit)) {
            body["CodeCommit"] = request.codeCommit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepo)) {
            body["CodeRepo"] = request.codeRepo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoAccessToken)) {
            body["CodeRepoAccessToken"] = request.codeRepoAccessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoUserName)) {
            body["CodeRepoUserName"] = request.codeRepoUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountPath)) {
            body["MountPath"] = request.mountPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCodeSource",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/codesources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCodeSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCodeSource(_ request: CreateCodeSourceRequest) async throws -> CreateCodeSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createCodeSourceWithOptions(request as! CreateCodeSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConnectionWithOptions(_ request: CreateConnectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configs)) {
            body["Configs"] = request.configs ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            body["ConnectionName"] = request.connectionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionType)) {
            body["ConnectionType"] = request.connectionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.models)) {
            body["Models"] = request.models ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceMeta)) {
            body["ResourceMeta"] = request.resourceMeta!;
        }
        if (!TeaUtils.Client.isUnset(request.secrets)) {
            body["Secrets"] = request.secrets ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConnection",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/connections",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConnection(_ request: CreateConnectionRequest) async throws -> CreateConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createConnectionWithOptions(request as! CreateConnectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetWithOptions(_ request: CreateDatasetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataCount)) {
            body["DataCount"] = request.dataCount!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSize)) {
            body["DataSize"] = request.dataSize!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            body["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.edition)) {
            body["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.importInfo)) {
            body["ImportInfo"] = request.importInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.mountAccessReadWriteRoleIdList)) {
            body["MountAccessReadWriteRoleIdList"] = request.mountAccessReadWriteRoleIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.property)) {
            body["Property"] = request.property ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.provider)) {
            body["Provider"] = request.provider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.providerType)) {
            body["ProviderType"] = request.providerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDatasetId)) {
            body["SourceDatasetId"] = request.sourceDatasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDatasetVersion)) {
            body["SourceDatasetVersion"] = request.sourceDatasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uri)) {
            body["Uri"] = request.uri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionDescription)) {
            body["VersionDescription"] = request.versionDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionLabels)) {
            body["VersionLabels"] = request.versionLabels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataset",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataset(_ request: CreateDatasetRequest) async throws -> CreateDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDatasetWithOptions(request as! CreateDatasetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetFileMetasWithOptions(_ DatasetId: String, _ request: CreateDatasetFileMetasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetFileMetasResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetFileMetas)) {
            body["DatasetFileMetas"] = request.datasetFileMetas ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            body["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatasetFileMetas",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetfilemetas",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetFileMetasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetFileMetas(_ DatasetId: String, _ request: CreateDatasetFileMetasRequest) async throws -> CreateDatasetFileMetasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDatasetFileMetasWithOptions(DatasetId as! String, request as! CreateDatasetFileMetasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetJobWithOptions(_ DatasetId: String, _ request: CreateDatasetJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            body["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobAction)) {
            body["JobAction"] = request.jobAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobMode)) {
            body["JobMode"] = request.jobMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobSpec)) {
            body["JobSpec"] = request.jobSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatasetJob",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetJob(_ DatasetId: String, _ request: CreateDatasetJobRequest) async throws -> CreateDatasetJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDatasetJobWithOptions(DatasetId as! String, request as! CreateDatasetJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetJobConfigWithOptions(_ DatasetId: String, _ request: CreateDatasetJobConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetJobConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configType)) {
            body["ConfigType"] = request.configType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            body["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatasetJobConfig",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobconfigs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetJobConfig(_ DatasetId: String, _ request: CreateDatasetJobConfigRequest) async throws -> CreateDatasetJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDatasetJobConfigWithOptions(DatasetId as! String, request as! CreateDatasetJobConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetLabelsWithOptions(_ DatasetId: String, _ request: CreateDatasetLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetLabelsResponse {
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
            "action": "CreateDatasetLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/labels",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetLabels(_ DatasetId: String, _ request: CreateDatasetLabelsRequest) async throws -> CreateDatasetLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDatasetLabelsWithOptions(DatasetId as! String, request as! CreateDatasetLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetVersionWithOptions(_ DatasetId: String, _ request: CreateDatasetVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataCount)) {
            body["DataCount"] = request.dataCount!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSize)) {
            body["DataSize"] = request.dataSize!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.importInfo)) {
            body["ImportInfo"] = request.importInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.property)) {
            body["Property"] = request.property ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uri)) {
            body["Uri"] = request.uri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatasetVersion",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/versions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetVersion(_ DatasetId: String, _ request: CreateDatasetVersionRequest) async throws -> CreateDatasetVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDatasetVersionWithOptions(DatasetId as! String, request as! CreateDatasetVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetVersionLabelsWithOptions(_ DatasetId: String, _ VersionName: String, _ request: CreateDatasetVersionLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetVersionLabelsResponse {
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
            "action": "CreateDatasetVersionLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(VersionName)) + "/labels",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetVersionLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetVersionLabels(_ DatasetId: String, _ VersionName: String, _ request: CreateDatasetVersionLabelsRequest) async throws -> CreateDatasetVersionLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDatasetVersionLabelsWithOptions(DatasetId as! String, VersionName as! String, request as! CreateDatasetVersionLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExperimentWithOptions(_ request: CreateExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.artifactUri)) {
            body["ArtifactUri"] = request.artifactUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExperiment",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExperiment(_ request: CreateExperimentRequest) async throws -> CreateExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createExperimentWithOptions(request as! CreateExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageBuildWithOptions(_ request: CreateImageBuildRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageBuildResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildConfig)) {
            body["BuildConfig"] = request.buildConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.image)) {
            body["Image"] = request.image!;
        }
        if (!TeaUtils.Client.isUnset(request.imageBuildJobName)) {
            body["ImageBuildJobName"] = request.imageBuildJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overwriteImageTag)) {
            body["OverwriteImageTag"] = request.overwriteImageTag!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            body["Resource"] = request.resource!;
        }
        if (!TeaUtils.Client.isUnset(request.targetRegistry)) {
            body["TargetRegistry"] = request.targetRegistry!;
        }
        if (!TeaUtils.Client.isUnset(request.userVpc)) {
            body["UserVpc"] = request.userVpc!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImageBuild",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/imagebuilds",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageBuildResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageBuild(_ request: CreateImageBuildRequest) async throws -> CreateImageBuildResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createImageBuildWithOptions(request as! CreateImageBuildRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMemberWithOptions(_ WorkspaceId: String, _ request: CreateMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.members)) {
            body["Members"] = request.members ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMember",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/members",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMember(_ WorkspaceId: String, _ request: CreateMemberRequest) async throws -> CreateMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMemberWithOptions(WorkspaceId as! String, request as! CreateMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelWithOptions(_ request: CreateModelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            body["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["ExtraInfo"] = request.extraInfo ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.modelDescription)) {
            body["ModelDescription"] = request.modelDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelDoc)) {
            body["ModelDoc"] = request.modelDoc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelName)) {
            body["ModelName"] = request.modelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelType)) {
            body["ModelType"] = request.modelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderNumber)) {
            body["OrderNumber"] = request.orderNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            body["Origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameterSize)) {
            body["ParameterSize"] = request.parameterSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.task)) {
            body["Task"] = request.task ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModel",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModel(_ request: CreateModelRequest) async throws -> CreateModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createModelWithOptions(request as! CreateModelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelLabelsWithOptions(_ ModelId: String, _ request: CreateModelLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelLabelsResponse {
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
            "action": "CreateModelLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)) + "/labels",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelLabels(_ ModelId: String, _ request: CreateModelLabelsRequest) async throws -> CreateModelLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createModelLabelsWithOptions(ModelId as! String, request as! CreateModelLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelVersionWithOptions(_ ModelId: String, _ request: CreateModelVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approvalStatus)) {
            body["ApprovalStatus"] = request.approvalStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compressionSpec)) {
            body["CompressionSpec"] = request.compressionSpec ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.distillationSpec)) {
            body["DistillationSpec"] = request.distillationSpec ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.evaluationSpec)) {
            body["EvaluationSpec"] = request.evaluationSpec ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["ExtraInfo"] = request.extraInfo ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            body["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.frameworkType)) {
            body["FrameworkType"] = request.frameworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inferenceSpec)) {
            body["InferenceSpec"] = request.inferenceSpec ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.metrics)) {
            body["Metrics"] = request.metrics ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainingSpec)) {
            body["TrainingSpec"] = request.trainingSpec ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.uri)) {
            body["Uri"] = request.uri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionDescription)) {
            body["VersionDescription"] = request.versionDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionName)) {
            body["VersionName"] = request.versionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModelVersion",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)) + "/versions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelVersion(_ ModelId: String, _ request: CreateModelVersionRequest) async throws -> CreateModelVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createModelVersionWithOptions(ModelId as! String, request as! CreateModelVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelVersionLabelsWithOptions(_ ModelId: String, _ VersionName: String, _ request: CreateModelVersionLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelVersionLabelsResponse {
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
            "action": "CreateModelVersionLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(VersionName)) + "/labels",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelVersionLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelVersionLabels(_ ModelId: String, _ VersionName: String, _ request: CreateModelVersionLabelsRequest) async throws -> CreateModelVersionLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createModelVersionLabelsWithOptions(ModelId as! String, VersionName as! String, request as! CreateModelVersionLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductOrdersWithOptions(_ request: CreateProductOrdersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProductOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            body["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.products)) {
            body["Products"] = request.products ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProductOrders",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/productorders",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProductOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductOrders(_ request: CreateProductOrdersRequest) async throws -> CreateProductOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProductOrdersWithOptions(request as! CreateProductOrdersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRunWithOptions(_ request: CreateRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRunResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.experimentId)) {
            body["ExperimentId"] = request.experimentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRun",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/runs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRun(_ request: CreateRunRequest) async throws -> CreateRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRunWithOptions(request as! CreateRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceWithOptions(_ request: CreateWorkspaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envTypes)) {
            body["EnvTypes"] = request.envTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceName)) {
            body["WorkspaceName"] = request.workspaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkspace",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspace(_ request: CreateWorkspaceRequest) async throws -> CreateWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWorkspaceWithOptions(request as! CreateWorkspaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceResourceWithOptions(_ WorkspaceId: String, _ request: CreateWorkspaceResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkspaceResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.option)) {
            body["Option"] = request.option ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resources)) {
            body["Resources"] = request.resources ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkspaceResource",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/resources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkspaceResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceResource(_ WorkspaceId: String, _ request: CreateWorkspaceResourceRequest) async throws -> CreateWorkspaceResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWorkspaceResourceWithOptions(WorkspaceId as! String, request as! CreateWorkspaceResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCodeSourceWithOptions(_ CodeSourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCodeSourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCodeSource",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/codesources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CodeSourceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCodeSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCodeSource(_ CodeSourceId: String) async throws -> DeleteCodeSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteCodeSourceWithOptions(CodeSourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfigWithOptions(_ WorkspaceId: String, _ ConfigKey: String, _ request: DeleteConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryName)) {
            query["CategoryName"] = request.categoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConfig",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/configs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ConfigKey)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfig(_ WorkspaceId: String, _ ConfigKey: String, _ request: DeleteConfigRequest) async throws -> DeleteConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteConfigWithOptions(WorkspaceId as! String, ConfigKey as! String, request as! DeleteConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConnectionWithOptions(_ ConnectionId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConnectionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConnection",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/connections/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ConnectionId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConnection(_ ConnectionId: String) async throws -> DeleteConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteConnectionWithOptions(ConnectionId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetWithOptions(_ DatasetId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataset",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataset(_ DatasetId: String) async throws -> DeleteDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDatasetWithOptions(DatasetId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetFileMetasWithOptions(_ DatasetId: String, _ request: DeleteDatasetFileMetasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetFileMetasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetFileMetaIds)) {
            query["DatasetFileMetaIds"] = request.datasetFileMetaIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            query["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDatasetFileMetas",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetfilemetas",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetFileMetasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetFileMetas(_ DatasetId: String, _ request: DeleteDatasetFileMetasRequest) async throws -> DeleteDatasetFileMetasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDatasetFileMetasWithOptions(DatasetId as! String, request as! DeleteDatasetFileMetasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetJobWithOptions(_ DatasetId: String, _ DatasetJobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDatasetJob",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetJobId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetJob(_ DatasetId: String, _ DatasetJobId: String) async throws -> DeleteDatasetJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDatasetJobWithOptions(DatasetId as! String, DatasetJobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetJobConfigWithOptions(_ DatasetId: String, _ DatasetJobConfigId: String, _ request: DeleteDatasetJobConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetJobConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDatasetJobConfig",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetJobConfigId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetJobConfig(_ DatasetId: String, _ DatasetJobConfigId: String, _ request: DeleteDatasetJobConfigRequest) async throws -> DeleteDatasetJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDatasetJobConfigWithOptions(DatasetId as! String, DatasetJobConfigId as! String, request as! DeleteDatasetJobConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetLabelsWithOptions(_ DatasetId: String, _ request: DeleteDatasetLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelKeys)) {
            query["LabelKeys"] = request.labelKeys ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDatasetLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/labels",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetLabels(_ DatasetId: String, _ request: DeleteDatasetLabelsRequest) async throws -> DeleteDatasetLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDatasetLabelsWithOptions(DatasetId as! String, request as! DeleteDatasetLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetVersionWithOptions(_ DatasetId: String, _ VersionName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDatasetVersion",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(VersionName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetVersion(_ DatasetId: String, _ VersionName: String) async throws -> DeleteDatasetVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDatasetVersionWithOptions(DatasetId as! String, VersionName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetVersionLabelsWithOptions(_ DatasetId: String, _ VersionName: String, _ request: DeleteDatasetVersionLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetVersionLabelsResponse {
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
            "action": "DeleteDatasetVersionLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(VersionName)) + "/labels",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetVersionLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetVersionLabels(_ DatasetId: String, _ VersionName: String, _ request: DeleteDatasetVersionLabelsRequest) async throws -> DeleteDatasetVersionLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDatasetVersionLabelsWithOptions(DatasetId as! String, VersionName as! String, request as! DeleteDatasetVersionLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperimentWithOptions(_ ExperimentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteExperimentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteExperiment",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperiment(_ ExperimentId: String) async throws -> DeleteExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteExperimentWithOptions(ExperimentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperimentLabelWithOptions(_ ExperimentId: String, _ Key: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteExperimentLabelResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteExperimentLabel",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/labels/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(Key)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteExperimentLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteExperimentLabel(_ ExperimentId: String, _ Key: String) async throws -> DeleteExperimentLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteExperimentLabelWithOptions(ExperimentId as! String, Key as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMembersWithOptions(_ WorkspaceId: String, _ request: DeleteMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.memberIds)) {
            query["MemberIds"] = request.memberIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMembers",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/members",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMembers(_ WorkspaceId: String, _ request: DeleteMembersRequest) async throws -> DeleteMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMembersWithOptions(WorkspaceId as! String, request as! DeleteMembersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelWithOptions(_ ModelId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModel",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModel(_ ModelId: String) async throws -> DeleteModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteModelWithOptions(ModelId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelLabelsWithOptions(_ ModelId: String, _ request: DeleteModelLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelKeys)) {
            query["LabelKeys"] = request.labelKeys ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModelLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)) + "/labels",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelLabels(_ ModelId: String, _ request: DeleteModelLabelsRequest) async throws -> DeleteModelLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteModelLabelsWithOptions(ModelId as! String, request as! DeleteModelLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelVersionWithOptions(_ ModelId: String, _ VersionName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModelVersion",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(VersionName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelVersion(_ ModelId: String, _ VersionName: String) async throws -> DeleteModelVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteModelVersionWithOptions(ModelId as! String, VersionName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelVersionLabelsWithOptions(_ ModelId: String, _ VersionName: String, _ request: DeleteModelVersionLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelVersionLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelKeys)) {
            query["LabelKeys"] = request.labelKeys ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModelVersionLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(VersionName)) + "/labels",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelVersionLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelVersionLabels(_ ModelId: String, _ VersionName: String, _ request: DeleteModelVersionLabelsRequest) async throws -> DeleteModelVersionLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteModelVersionLabelsWithOptions(ModelId as! String, VersionName as! String, request as! DeleteModelVersionLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRunWithOptions(_ RunId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRunResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRun",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/runs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RunId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRun(_ RunId: String) async throws -> DeleteRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRunWithOptions(RunId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRunLabelWithOptions(_ RunId: String, _ Key: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRunLabelResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRunLabel",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/runs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RunId)) + "/labels/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(Key)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRunLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRunLabel(_ RunId: String, _ Key: String) async throws -> DeleteRunLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRunLabelWithOptions(RunId as! String, Key as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserConfigWithOptions(_ CategoryName: String, _ request: DeleteUserConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configKey)) {
            query["ConfigKey"] = request.configKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserConfig",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/userconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CategoryName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserConfig(_ CategoryName: String, _ request: DeleteUserConfigRequest) async throws -> DeleteUserConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteUserConfigWithOptions(CategoryName as! String, request as! DeleteUserConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceWithOptions(_ WorkspaceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkspaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkspace",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspace(_ WorkspaceId: String) async throws -> DeleteWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWorkspaceWithOptions(WorkspaceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceResourceWithOptions(_ WorkspaceId: String, _ request: DeleteWorkspaceResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkspaceResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.option)) {
            query["Option"] = request.option ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkspaceResource",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/resources",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkspaceResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceResource(_ WorkspaceId: String, _ request: DeleteWorkspaceResourceRequest) async throws -> DeleteWorkspaceResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWorkspaceResourceWithOptions(WorkspaceId as! String, request as! DeleteWorkspaceResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCodeSourceWithOptions(_ CodeSourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCodeSourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCodeSource",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/codesources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CodeSourceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCodeSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCodeSource(_ CodeSourceId: String) async throws -> GetCodeSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCodeSourceWithOptions(CodeSourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigWithOptions(_ WorkspaceId: String, _ request: GetConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryName)) {
            query["CategoryName"] = request.categoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configKey)) {
            query["ConfigKey"] = request.configKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConfig",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfig(_ WorkspaceId: String, _ request: GetConfigRequest) async throws -> GetConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getConfigWithOptions(WorkspaceId as! String, request as! GetConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnectionWithOptions(_ ConnectionId: String, _ request: GetConnectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encryptOption)) {
            query["EncryptOption"] = request.encryptOption ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConnection",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/connections/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ConnectionId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnection(_ ConnectionId: String, _ request: GetConnectionRequest) async throws -> GetConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getConnectionWithOptions(ConnectionId as! String, request as! GetConnectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetWithOptions(_ DatasetId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatasetResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataset",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataset(_ DatasetId: String) async throws -> GetDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDatasetWithOptions(DatasetId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetFileMetaWithOptions(_ DatasetId: String, _ DatasetFileMetaId: String, _ request: GetDatasetFileMetaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatasetFileMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            query["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatasetFileMeta",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetfilemetas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetFileMetaId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatasetFileMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetFileMeta(_ DatasetId: String, _ DatasetFileMetaId: String, _ request: GetDatasetFileMetaRequest) async throws -> GetDatasetFileMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDatasetFileMetaWithOptions(DatasetId as! String, DatasetFileMetaId as! String, request as! GetDatasetFileMetaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetFileMetasStatisticsWithOptions(_ DatasetId: String, _ request: GetDatasetFileMetasStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatasetFileMetasStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregateBy)) {
            query["AggregateBy"] = request.aggregateBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            query["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatasetFileMetasStatistics",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/statistics/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetfilemetas",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatasetFileMetasStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetFileMetasStatistics(_ DatasetId: String, _ request: GetDatasetFileMetasStatisticsRequest) async throws -> GetDatasetFileMetasStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDatasetFileMetasStatisticsWithOptions(DatasetId as! String, request as! GetDatasetFileMetasStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetJobWithOptions(_ DatasetId: String, _ DatasetJobId: String, _ request: GetDatasetJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatasetJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            query["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatasetJob",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetJobId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatasetJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetJob(_ DatasetId: String, _ DatasetJobId: String, _ request: GetDatasetJobRequest) async throws -> GetDatasetJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDatasetJobWithOptions(DatasetId as! String, DatasetJobId as! String, request as! GetDatasetJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetJobConfigWithOptions(_ DatasetId: String, _ DatasetJobConfigId: String, _ request: GetDatasetJobConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatasetJobConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatasetJobConfig",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetJobConfigId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatasetJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetJobConfig(_ DatasetId: String, _ DatasetJobConfigId: String, _ request: GetDatasetJobConfigRequest) async throws -> GetDatasetJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDatasetJobConfigWithOptions(DatasetId as! String, DatasetJobConfigId as! String, request as! GetDatasetJobConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetVersionWithOptions(_ DatasetId: String, _ VersionName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatasetVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatasetVersion",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(VersionName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatasetVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetVersion(_ DatasetId: String, _ VersionName: String) async throws -> GetDatasetVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDatasetVersionWithOptions(DatasetId as! String, VersionName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDefaultWorkspaceWithOptions(_ request: GetDefaultWorkspaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDefaultWorkspaceResponse {
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
            "action": "GetDefaultWorkspace",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/defaultWorkspaces",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDefaultWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDefaultWorkspace(_ request: GetDefaultWorkspaceRequest) async throws -> GetDefaultWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDefaultWorkspaceWithOptions(request as! GetDefaultWorkspaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExperimentWithOptions(_ ExperimentId: String, _ request: GetExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetExperimentResponse {
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
            "action": "GetExperiment",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExperiment(_ ExperimentId: String, _ request: GetExperimentRequest) async throws -> GetExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getExperimentWithOptions(ExperimentId as! String, request as! GetExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageWithOptions(_ ImageId: String, _ request: GetImageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageResponse {
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
            "action": "GetImage",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/images/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ImageId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImage(_ ImageId: String, _ request: GetImageRequest) async throws -> GetImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getImageWithOptions(ImageId as! String, request as! GetImageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMemberWithOptions(_ WorkspaceId: String, _ request: GetMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.memberId)) {
            query["MemberId"] = request.memberId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMember",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/member",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMember(_ WorkspaceId: String, _ request: GetMemberRequest) async throws -> GetMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMemberWithOptions(WorkspaceId as! String, request as! GetMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelWithOptions(_ ModelId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetModelResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetModel",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModel(_ ModelId: String) async throws -> GetModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getModelWithOptions(ModelId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelVersionWithOptions(_ ModelId: String, _ VersionName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetModelVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetModelVersion",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(VersionName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetModelVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelVersion(_ ModelId: String, _ VersionName: String) async throws -> GetModelVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getModelVersionWithOptions(ModelId as! String, VersionName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPermissionWithOptions(_ WorkspaceId: String, _ PermissionCode: String, _ tmpReq: GetPermissionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetPermissionShrinkRequest = GetPermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.labels)) {
            request.labelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.labels, "Labels", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            query["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelsShrink)) {
            query["Labels"] = request.labelsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.option)) {
            query["Option"] = request.option ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPermission",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/permissions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(PermissionCode)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPermission(_ WorkspaceId: String, _ PermissionCode: String, _ request: GetPermissionRequest) async throws -> GetPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPermissionWithOptions(WorkspaceId as! String, PermissionCode as! String, request as! GetPermissionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRunWithOptions(_ RunId: String, _ request: GetRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRunResponse {
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
            "action": "GetRun",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/runs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RunId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRun(_ RunId: String, _ request: GetRunRequest) async throws -> GetRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRunWithOptions(RunId as! String, request as! GetRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkspaceWithOptions(_ WorkspaceId: String, _ request: GetWorkspaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkspaceResponse {
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
            "action": "GetWorkspace",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkspace(_ WorkspaceId: String, _ request: GetWorkspaceRequest) async throws -> GetWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkspaceWithOptions(WorkspaceId as! String, request as! GetWorkspaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCodeSourcesWithOptions(_ request: ListCodeSourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCodeSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            query["DisplayName"] = request.displayName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCodeSources",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/codesources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCodeSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCodeSources(_ request: ListCodeSourcesRequest) async throws -> ListCodeSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listCodeSourcesWithOptions(request as! ListCodeSourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigsWithOptions(_ WorkspaceId: String, _ request: ListConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryName)) {
            query["CategoryName"] = request.categoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configKeys)) {
            query["ConfigKeys"] = request.configKeys ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConfigs",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/configs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigs(_ WorkspaceId: String, _ request: ListConfigsRequest) async throws -> ListConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listConfigsWithOptions(WorkspaceId as! String, request as! ListConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnectionsWithOptions(_ tmpReq: ListConnectionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConnectionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListConnectionsShrinkRequest = ListConnectionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.connectionIds)) {
            request.connectionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.connectionIds, "ConnectionIds", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.connectionTypes)) {
            request.connectionTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.connectionTypes, "ConnectionTypes", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.modelTypes)) {
            request.modelTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.modelTypes, "ModelTypes", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionIdsShrink)) {
            query["ConnectionIds"] = request.connectionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            query["ConnectionName"] = request.connectionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionTypesShrink)) {
            query["ConnectionTypes"] = request.connectionTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptOption)) {
            query["EncryptOption"] = request.encryptOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelTypesShrink)) {
            query["ModelTypes"] = request.modelTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toolCall)) {
            query["ToolCall"] = request.toolCall!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConnections",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/connections",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConnectionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnections(_ request: ListConnectionsRequest) async throws -> ListConnectionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listConnectionsWithOptions(request as! ListConnectionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetFileMetasWithOptions(_ DatasetId: String, _ tmpReq: ListDatasetFileMetasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatasetFileMetasResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDatasetFileMetasShrinkRequest = ListDatasetFileMetasShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.datasetFileMetaIds)) {
            request.datasetFileMetaIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.datasetFileMetaIds, "DatasetFileMetaIds", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.queryContentTypeIncludeAny)) {
            request.queryContentTypeIncludeAnyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.queryContentTypeIncludeAny, "QueryContentTypeIncludeAny", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.queryFileTypeIncludeAny)) {
            request.queryFileTypeIncludeAnyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.queryFileTypeIncludeAny, "QueryFileTypeIncludeAny", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.queryTagsExclude)) {
            request.queryTagsExcludeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.queryTagsExclude, "QueryTagsExclude", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.queryTagsIncludeAll)) {
            request.queryTagsIncludeAllShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.queryTagsIncludeAll, "QueryTagsIncludeAll", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.queryTagsIncludeAny)) {
            request.queryTagsIncludeAnyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.queryTagsIncludeAny, "QueryTagsIncludeAny", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetFileMetaIdsShrink)) {
            query["DatasetFileMetaIds"] = request.datasetFileMetaIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            query["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endFileUpdateTime)) {
            query["EndFileUpdateTime"] = request.endFileUpdateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTagUpdateTime)) {
            query["EndTagUpdateTime"] = request.endTagUpdateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryContentTypeIncludeAnyShrink)) {
            query["QueryContentTypeIncludeAny"] = request.queryContentTypeIncludeAnyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryExpression)) {
            query["QueryExpression"] = request.queryExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryFileDir)) {
            query["QueryFileDir"] = request.queryFileDir ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryFileName)) {
            query["QueryFileName"] = request.queryFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryFileTypeIncludeAnyShrink)) {
            query["QueryFileTypeIncludeAny"] = request.queryFileTypeIncludeAnyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryImage)) {
            query["QueryImage"] = request.queryImage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryTagsExcludeShrink)) {
            query["QueryTagsExclude"] = request.queryTagsExcludeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryTagsIncludeAllShrink)) {
            query["QueryTagsIncludeAll"] = request.queryTagsIncludeAllShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryTagsIncludeAnyShrink)) {
            query["QueryTagsIncludeAny"] = request.queryTagsIncludeAnyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryText)) {
            query["QueryText"] = request.queryText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryVideo)) {
            query["QueryVideo"] = request.queryVideo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scoreThreshold)) {
            query["ScoreThreshold"] = request.scoreThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startFileUpdateTime)) {
            query["StartFileUpdateTime"] = request.startFileUpdateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTagUpdateTime)) {
            query["StartTagUpdateTime"] = request.startTagUpdateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thumbnailMode)) {
            query["ThumbnailMode"] = request.thumbnailMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topK)) {
            query["TopK"] = request.topK!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatasetFileMetas",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetfilemetas",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatasetFileMetasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetFileMetas(_ DatasetId: String, _ request: ListDatasetFileMetasRequest) async throws -> ListDatasetFileMetasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDatasetFileMetasWithOptions(DatasetId as! String, request as! ListDatasetFileMetasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetJobConfigsWithOptions(_ DatasetId: String, _ request: ListDatasetJobConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatasetJobConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configType)) {
            query["ConfigType"] = request.configType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            query["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatasetJobConfigs",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobconfigs/",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatasetJobConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetJobConfigs(_ DatasetId: String, _ request: ListDatasetJobConfigsRequest) async throws -> ListDatasetJobConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDatasetJobConfigsWithOptions(DatasetId as! String, request as! ListDatasetJobConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetJobsWithOptions(_ DatasetId: String, _ request: ListDatasetJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatasetJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            query["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobAction)) {
            query["JobAction"] = request.jobAction ?? "";
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
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatasetJobs",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatasetJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetJobs(_ DatasetId: String, _ request: ListDatasetJobsRequest) async throws -> ListDatasetJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDatasetJobsWithOptions(DatasetId as! String, request as! ListDatasetJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetVersionsWithOptions(_ DatasetId: String, _ request: ListDatasetVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatasetVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelKeys)) {
            query["LabelKeys"] = request.labelKeys ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelValues)) {
            query["LabelValues"] = request.labelValues ?? "";
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
        if (!TeaUtils.Client.isUnset(request.properties)) {
            query["Properties"] = request.properties ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            query["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypes)) {
            query["SourceTypes"] = request.sourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatasetVersions",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatasetVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetVersions(_ DatasetId: String, _ request: ListDatasetVersionsRequest) async throws -> ListDatasetVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDatasetVersionsWithOptions(DatasetId as! String, request as! ListDatasetVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetsWithOptions(_ request: ListDatasetsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatasetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            query["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceTypes)) {
            query["DataSourceTypes"] = request.dataSourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataTypes)) {
            query["DataTypes"] = request.dataTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            query["Label"] = request.label ?? "";
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
        if (!TeaUtils.Client.isUnset(request.properties)) {
            query["Properties"] = request.properties ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.provider)) {
            query["Provider"] = request.provider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shareScope)) {
            query["ShareScope"] = request.shareScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDatasetId)) {
            query["SourceDatasetId"] = request.sourceDatasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            query["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTypes)) {
            query["SourceTypes"] = request.sourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatasets",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatasetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasets(_ request: ListDatasetsRequest) async throws -> ListDatasetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDatasetsWithOptions(request as! ListDatasetsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExperimentWithOptions(_ tmpReq: ListExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListExperimentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListExperimentShrinkRequest = ListExperimentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.options)) {
            request.optionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.options, "Options", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionsShrink)) {
            query["Options"] = request.optionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["PageToken"] = request.pageToken!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListExperiment",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listExperiment(_ request: ListExperimentRequest) async throws -> ListExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listExperimentWithOptions(request as! ListExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFeaturesWithOptions(_ request: ListFeaturesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFeaturesResponse {
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
            "action": "ListFeatures",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/features",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFeaturesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFeatures(_ request: ListFeaturesRequest) async throws -> ListFeaturesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFeaturesWithOptions(request as! ListFeaturesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listImageLabelsWithOptions(_ request: ListImageLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListImageLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelFilter)) {
            query["LabelFilter"] = request.labelFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelKeys)) {
            query["LabelKeys"] = request.labelKeys ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListImageLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/image/labels",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListImageLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listImageLabels(_ request: ListImageLabelsRequest) async throws -> ListImageLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listImageLabelsWithOptions(request as! ListImageLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listImagesWithOptions(_ request: ListImagesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListImagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            query["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
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
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListImages",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/images",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListImagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listImages(_ request: ListImagesRequest) async throws -> ListImagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listImagesWithOptions(request as! ListImagesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMembersWithOptions(_ WorkspaceId: String, _ request: ListMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.memberName)) {
            query["MemberName"] = request.memberName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.roles)) {
            query["Roles"] = request.roles ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMembers",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/members",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMembers(_ WorkspaceId: String, _ request: ListMembersRequest) async throws -> ListMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMembersWithOptions(WorkspaceId as! String, request as! ListMembersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelVersionsWithOptions(_ ModelId: String, _ request: ListModelVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModelVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approvalStatus)) {
            query["ApprovalStatus"] = request.approvalStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            query["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.frameworkType)) {
            query["FrameworkType"] = request.frameworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            query["Label"] = request.label ?? "";
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
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            query["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionName)) {
            query["VersionName"] = request.versionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListModelVersions",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)) + "/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModelVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelVersions(_ ModelId: String, _ request: ListModelVersionsRequest) async throws -> ListModelVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listModelVersionsWithOptions(ModelId as! String, request as! ListModelVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelsWithOptions(_ tmpReq: ListModelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModelsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListModelsShrinkRequest = ListModelsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.conditions)) {
            request.conditionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.conditions, "Conditions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.collections)) {
            query["Collections"] = request.collections ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conditionsShrink)) {
            query["Conditions"] = request.conditionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            query["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelName)) {
            query["ModelName"] = request.modelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelType)) {
            query["ModelType"] = request.modelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["Origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.provider)) {
            query["Provider"] = request.provider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.task)) {
            query["Task"] = request.task ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListModels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModels(_ request: ListModelsRequest) async throws -> ListModelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listModelsWithOptions(request as! ListModelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPermissionsWithOptions(_ WorkspaceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPermissionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPermissions",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/permissions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPermissions(_ WorkspaceId: String) async throws -> ListPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPermissionsWithOptions(WorkspaceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductsWithOptions(_ request: ListProductsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCodes)) {
            query["ProductCodes"] = request.productCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCodes)) {
            query["ServiceCodes"] = request.serviceCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProducts",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/products",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProducts(_ request: ListProductsRequest) async throws -> ListProductsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductsWithOptions(request as! ListProductsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotasWithOptions(_ request: ListQuotasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQuotasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQuotas",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas",
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
    public func listResourcesWithOptions(_ request: ListResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.option)) {
            query["Option"] = request.option ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productTypes)) {
            query["ProductTypes"] = request.productTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaIds)) {
            query["QuotaIds"] = request.quotaIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            query["ResourceName"] = request.resourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        if (!TeaUtils.Client.isUnset(request.verboseFields)) {
            query["VerboseFields"] = request.verboseFields ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResources",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResources(_ request: ListResourcesRequest) async throws -> ListResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourcesWithOptions(request as! ListResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRunMetricsWithOptions(_ RunId: String, _ request: ListRunMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRunMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["PageToken"] = request.pageToken!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRunMetrics",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/runs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RunId)) + "/metrics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRunMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRunMetrics(_ RunId: String, _ request: ListRunMetricsRequest) async throws -> ListRunMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRunMetricsWithOptions(RunId as! String, request as! ListRunMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRunsWithOptions(_ request: ListRunsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRunsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.experimentId)) {
            query["ExperimentId"] = request.experimentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtCreateTime)) {
            query["GmtCreateTime"] = request.gmtCreateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["PageToken"] = request.pageToken!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            query["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRuns",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/runs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRunsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRuns(_ request: ListRunsRequest) async throws -> ListRunsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRunsWithOptions(request as! ListRunsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserConfigsWithOptions(_ request: ListUserConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryNames)) {
            query["CategoryNames"] = request.categoryNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configKeys)) {
            query["ConfigKeys"] = request.configKeys ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserConfigs",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/userconfigs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserConfigs(_ request: ListUserConfigsRequest) async throws -> ListUserConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserConfigsWithOptions(request as! ListUserConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaceUsersWithOptions(_ WorkspaceId: String, _ request: ListWorkspaceUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspaceUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkspaceUsers",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/users",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkspaceUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaceUsers(_ WorkspaceId: String, _ request: ListWorkspaceUsersRequest) async throws -> ListWorkspaceUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkspaceUsersWithOptions(WorkspaceId as! String, request as! ListWorkspaceUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspacesWithOptions(_ request: ListWorkspacesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fields)) {
            query["Fields"] = request.fields ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleList)) {
            query["ModuleList"] = request.moduleList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.option)) {
            query["Option"] = request.option ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
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
            "action": "ListWorkspaces",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkspacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaces(_ request: ListWorkspacesRequest) async throws -> ListWorkspacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkspacesWithOptions(request as! ListWorkspacesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func logRunMetricsWithOptions(_ RunId: String, _ request: LogRunMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> LogRunMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.metrics)) {
            body["Metrics"] = request.metrics ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LogRunMetrics",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/runs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RunId)) + "/metrics/action/log",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LogRunMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func logRunMetrics(_ RunId: String, _ request: LogRunMetricsRequest) async throws -> LogRunMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await logRunMetricsWithOptions(RunId as! String, request as! LogRunMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishCodeSourceWithOptions(_ CodeSourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishCodeSourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishCodeSource",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/codesources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CodeSourceId)) + "/publish",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishCodeSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishCodeSource(_ CodeSourceId: String) async throws -> PublishCodeSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await publishCodeSourceWithOptions(CodeSourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishDatasetWithOptions(_ DatasetId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishDatasetResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishDataset",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/publish",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishDataset(_ DatasetId: String) async throws -> PublishDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await publishDatasetWithOptions(DatasetId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishImageWithOptions(_ ImageId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishImageResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishImage",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/images/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ImageId)) + "/publish",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishImage(_ ImageId: String) async throws -> PublishImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await publishImageWithOptions(ImageId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeImageWithOptions(_ ImageId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveImageResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveImage",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/images/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ImageId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeImage(_ ImageId: String) async throws -> RemoveImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeImageWithOptions(ImageId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeImageLabelsWithOptions(_ ImageId: String, _ LabelKey: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveImageLabelsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveImageLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/images/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ImageId)) + "/labels/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(LabelKey)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveImageLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeImageLabels(_ ImageId: String, _ LabelKey: String) async throws -> RemoveImageLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeImageLabelsWithOptions(ImageId as! String, LabelKey as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeMemberRoleWithOptions(_ WorkspaceId: String, _ MemberId: String, _ RoleName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveMemberRoleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveMemberRole",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/members/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(MemberId)) + "/roles/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RoleName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveMemberRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeMemberRole(_ WorkspaceId: String, _ MemberId: String, _ RoleName: String) async throws -> RemoveMemberRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeMemberRoleWithOptions(WorkspaceId as! String, MemberId as! String, RoleName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setExperimentLabelsWithOptions(_ ExperimentId: String, _ request: SetExperimentLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SetExperimentLabelsResponse {
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
            "action": "SetExperimentLabels",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/labels",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetExperimentLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setExperimentLabels(_ ExperimentId: String, _ request: SetExperimentLabelsRequest) async throws -> SetExperimentLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await setExperimentLabelsWithOptions(ExperimentId as! String, request as! SetExperimentLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setUserConfigsWithOptions(_ request: SetUserConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SetUserConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configs)) {
            body["Configs"] = request.configs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetUserConfigs",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/userconfigs",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetUserConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setUserConfigs(_ request: SetUserConfigsRequest) async throws -> SetUserConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await setUserConfigsWithOptions(request as! SetUserConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDatasetJobWithOptions(_ DatasetId: String, _ DatasetJobId: String, _ request: StopDatasetJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopDatasetJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            body["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopDatasetJob",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetJobId)) + "/action/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopDatasetJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDatasetJob(_ DatasetId: String, _ DatasetJobId: String, _ request: StopDatasetJobRequest) async throws -> StopDatasetJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopDatasetJobWithOptions(DatasetId as! String, DatasetJobId as! String, request as! StopDatasetJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCodeSourceWithOptions(_ CodeSourceId: String, _ request: UpdateCodeSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCodeSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.codeBranch)) {
            body["CodeBranch"] = request.codeBranch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeCommit)) {
            body["CodeCommit"] = request.codeCommit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepo)) {
            body["CodeRepo"] = request.codeRepo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoAccessToken)) {
            body["CodeRepoAccessToken"] = request.codeRepoAccessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoUserName)) {
            body["CodeRepoUserName"] = request.codeRepoUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountPath)) {
            body["MountPath"] = request.mountPath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCodeSource",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/codesources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CodeSourceId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCodeSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCodeSource(_ CodeSourceId: String, _ request: UpdateCodeSourceRequest) async throws -> UpdateCodeSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateCodeSourceWithOptions(CodeSourceId as! String, request as! UpdateCodeSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigWithOptions(_ WorkspaceId: String, _ request: UpdateConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryName)) {
            body["CategoryName"] = request.categoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configKey)) {
            body["ConfigKey"] = request.configKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configValue)) {
            body["ConfigValue"] = request.configValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConfig",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/config",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfig(_ WorkspaceId: String, _ request: UpdateConfigRequest) async throws -> UpdateConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateConfigWithOptions(WorkspaceId as! String, request as! UpdateConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigsWithOptions(_ WorkspaceId: String, _ request: UpdateConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configs)) {
            body["Configs"] = request.configs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConfigs",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/configs",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigs(_ WorkspaceId: String, _ request: UpdateConfigsRequest) async throws -> UpdateConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateConfigsWithOptions(WorkspaceId as! String, request as! UpdateConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConnectionWithOptions(_ ConnectionId: String, _ request: UpdateConnectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configs)) {
            body["Configs"] = request.configs ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.models)) {
            body["Models"] = request.models ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.secrets)) {
            body["Secrets"] = request.secrets ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConnection",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/connections/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ConnectionId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConnection(_ ConnectionId: String, _ request: UpdateConnectionRequest) async throws -> UpdateConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateConnectionWithOptions(ConnectionId as! String, request as! UpdateConnectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetWithOptions(_ DatasetId: String, _ request: UpdateDatasetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.edition)) {
            body["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountAccessReadWriteRoleIdList)) {
            body["MountAccessReadWriteRoleIdList"] = request.mountAccessReadWriteRoleIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sharingConfig)) {
            body["SharingConfig"] = request.sharingConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataset",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataset(_ DatasetId: String, _ request: UpdateDatasetRequest) async throws -> UpdateDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDatasetWithOptions(DatasetId as! String, request as! UpdateDatasetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetFileMetasWithOptions(_ DatasetId: String, _ request: UpdateDatasetFileMetasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDatasetFileMetasResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetFileMetas)) {
            body["DatasetFileMetas"] = request.datasetFileMetas ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            body["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagJobId)) {
            body["TagJobId"] = request.tagJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDatasetFileMetas",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetfilemetas",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDatasetFileMetasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetFileMetas(_ DatasetId: String, _ request: UpdateDatasetFileMetasRequest) async throws -> UpdateDatasetFileMetasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDatasetFileMetasWithOptions(DatasetId as! String, request as! UpdateDatasetFileMetasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetJobWithOptions(_ DatasetId: String, _ DatasetJobId: String, _ request: UpdateDatasetJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDatasetJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetVersion)) {
            body["DatasetVersion"] = request.datasetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDatasetJob",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetJobId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDatasetJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetJob(_ DatasetId: String, _ DatasetJobId: String, _ request: UpdateDatasetJobRequest) async throws -> UpdateDatasetJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDatasetJobWithOptions(DatasetId as! String, DatasetJobId as! String, request as! UpdateDatasetJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetJobConfigWithOptions(_ DatasetId: String, _ DatasetJobConfigId: String, _ request: UpdateDatasetJobConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDatasetJobConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configType)) {
            body["ConfigType"] = request.configType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDatasetJobConfig",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/datasetjobconfigs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetJobConfigId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDatasetJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetJobConfig(_ DatasetId: String, _ DatasetJobConfigId: String, _ request: UpdateDatasetJobConfigRequest) async throws -> UpdateDatasetJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDatasetJobConfigWithOptions(DatasetId as! String, DatasetJobConfigId as! String, request as! UpdateDatasetJobConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetVersionWithOptions(_ DatasetId: String, _ VersionName: String, _ request: UpdateDatasetVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDatasetVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataCount)) {
            body["DataCount"] = request.dataCount!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSize)) {
            body["DataSize"] = request.dataSize!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["Options"] = request.options ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDatasetVersion",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/datasets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DatasetId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(VersionName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDatasetVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetVersion(_ DatasetId: String, _ VersionName: String, _ request: UpdateDatasetVersionRequest) async throws -> UpdateDatasetVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDatasetVersionWithOptions(DatasetId as! String, VersionName as! String, request as! UpdateDatasetVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDefaultWorkspaceWithOptions(_ request: UpdateDefaultWorkspaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDefaultWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDefaultWorkspace",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/defaultWorkspaces",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDefaultWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDefaultWorkspace(_ request: UpdateDefaultWorkspaceRequest) async throws -> UpdateDefaultWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDefaultWorkspaceWithOptions(request as! UpdateDefaultWorkspaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExperimentWithOptions(_ ExperimentId: String, _ request: UpdateExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateExperiment",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/experiments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateExperiment(_ ExperimentId: String, _ request: UpdateExperimentRequest) async throws -> UpdateExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateExperimentWithOptions(ExperimentId as! String, request as! UpdateExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelWithOptions(_ ModelId: String, _ request: UpdateModelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateModelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            body["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["ExtraInfo"] = request.extraInfo ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.modelDescription)) {
            body["ModelDescription"] = request.modelDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelDoc)) {
            body["ModelDoc"] = request.modelDoc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelName)) {
            body["ModelName"] = request.modelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelType)) {
            body["ModelType"] = request.modelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderNumber)) {
            body["OrderNumber"] = request.orderNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            body["Origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameterSize)) {
            body["ParameterSize"] = request.parameterSize!;
        }
        if (!TeaUtils.Client.isUnset(request.task)) {
            body["Task"] = request.task ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateModel",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModel(_ ModelId: String, _ request: UpdateModelRequest) async throws -> UpdateModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateModelWithOptions(ModelId as! String, request as! UpdateModelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelVersionWithOptions(_ ModelId: String, _ VersionName: String, _ request: UpdateModelVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateModelVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approvalStatus)) {
            body["ApprovalStatus"] = request.approvalStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compressionSpec)) {
            body["CompressionSpec"] = request.compressionSpec ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.distillationSpec)) {
            body["DistillationSpec"] = request.distillationSpec ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.evaluationSpec)) {
            body["EvaluationSpec"] = request.evaluationSpec ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["ExtraInfo"] = request.extraInfo ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.inferenceSpec)) {
            body["InferenceSpec"] = request.inferenceSpec ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.metrics)) {
            body["Metrics"] = request.metrics ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainingSpec)) {
            body["TrainingSpec"] = request.trainingSpec ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.versionDescription)) {
            body["VersionDescription"] = request.versionDescription ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateModelVersion",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/models/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ModelId)) + "/versions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(VersionName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateModelVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelVersion(_ ModelId: String, _ VersionName: String, _ request: UpdateModelVersionRequest) async throws -> UpdateModelVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateModelVersionWithOptions(ModelId as! String, VersionName as! String, request as! UpdateModelVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRunWithOptions(_ RunId: String, _ request: UpdateRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRunResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRun",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/runs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RunId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRun(_ RunId: String, _ request: UpdateRunRequest) async throws -> UpdateRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRunWithOptions(RunId as! String, request as! UpdateRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceWithOptions(_ WorkspaceId: String, _ request: UpdateWorkspaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["DisplayName"] = request.displayName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkspace",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspace(_ WorkspaceId: String, _ request: UpdateWorkspaceRequest) async throws -> UpdateWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWorkspaceWithOptions(WorkspaceId as! String, request as! UpdateWorkspaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceResourceWithOptions(_ WorkspaceId: String, _ request: UpdateWorkspaceResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkspaceResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDefault)) {
            body["IsDefault"] = request.isDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            body["ResourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spec)) {
            body["Spec"] = request.spec ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkspaceResource",
            "version": "2021-02-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/resources",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkspaceResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceResource(_ WorkspaceId: String, _ request: UpdateWorkspaceResourceRequest) async throws -> UpdateWorkspaceResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWorkspaceResourceWithOptions(WorkspaceId as! String, request as! UpdateWorkspaceResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
