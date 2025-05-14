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
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("eds-aic", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func attachKeyPairWithOptions(_ request: AttachKeyPairRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachKeyPairResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.keyPairId)) {
            query["KeyPairId"] = request.keyPairId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachKeyPair",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachKeyPairResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachKeyPair(_ request: AttachKeyPairRequest) async throws -> AttachKeyPairResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachKeyPairWithOptions(request as! AttachKeyPairRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeAndroidInstanceWithOptions(_ request: AuthorizeAndroidInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeAndroidInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIds)) {
            query["AndroidInstanceIds"] = request.androidInstanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authorizeUserId)) {
            query["AuthorizeUserId"] = request.authorizeUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unAuthorizeUserId)) {
            query["UnAuthorizeUserId"] = request.unAuthorizeUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeAndroidInstance",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeAndroidInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeAndroidInstance(_ request: AuthorizeAndroidInstanceRequest) async throws -> AuthorizeAndroidInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authorizeAndroidInstanceWithOptions(request as! AuthorizeAndroidInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func backupFileWithOptions(_ request: BackupFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BackupFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIdList)) {
            query["AndroidInstanceIdList"] = request.androidInstanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.backupAll)) {
            query["BackupAll"] = request.backupAll!;
        }
        if (!TeaUtils.Client.isUnset(request.backupFileName)) {
            query["BackupFileName"] = request.backupFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupFilePath)) {
            query["BackupFilePath"] = request.backupFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceAppList)) {
            query["SourceAppList"] = request.sourceAppList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sourceFilePathList)) {
            query["SourceFilePathList"] = request.sourceFilePathList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.uploadEndpoint)) {
            query["UploadEndpoint"] = request.uploadEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadType)) {
            query["UploadType"] = request.uploadType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BackupFile",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BackupFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func backupFile(_ request: BackupFileRequest) async throws -> BackupFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await backupFileWithOptions(request as! BackupFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetAcpConnectionTicketWithOptions(_ request: BatchGetAcpConnectionTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetAcpConnectionTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupId)) {
            query["InstanceGroupId"] = request.instanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceTasks)) {
            query["InstanceTasks"] = request.instanceTasks ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGetAcpConnectionTicket",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetAcpConnectionTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetAcpConnectionTicket(_ request: BatchGetAcpConnectionTicketRequest) async throws -> BatchGetAcpConnectionTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchGetAcpConnectionTicketWithOptions(request as! BatchGetAcpConnectionTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeCloudPhoneNodeWithOptions(_ request: ChangeCloudPhoneNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeCloudPhoneNodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneCount)) {
            query["PhoneCount"] = request.phoneCount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeCloudPhoneNode",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeCloudPhoneNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeCloudPhoneNode(_ request: ChangeCloudPhoneNodeRequest) async throws -> ChangeCloudPhoneNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeCloudPhoneNodeWithOptions(request as! ChangeCloudPhoneNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkResourceStockWithOptions(_ request: CheckResourceStockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckResourceStockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acpSpecId)) {
            query["AcpSpecId"] = request.acpSpecId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuAcceleration)) {
            query["GpuAcceleration"] = request.gpuAcceleration!;
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckResourceStock",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckResourceStockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkResourceStock(_ request: CheckResourceStockRequest) async throws -> CheckResourceStockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkResourceStockWithOptions(request as! CheckResourceStockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndroidInstanceGroupWithOptions(_ request: CreateAndroidInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAndroidInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableIpv6)) {
            query["EnableIpv6"] = request.enableIpv6!;
        }
        if (!TeaUtils.Client.isUnset(request.gpuAcceleration)) {
            query["GpuAcceleration"] = request.gpuAcceleration!;
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupName)) {
            query["InstanceGroupName"] = request.instanceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupSpec)) {
            query["InstanceGroupSpec"] = request.instanceGroupSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipv6Bandwidth)) {
            query["Ipv6Bandwidth"] = request.ipv6Bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.keyPairId)) {
            query["KeyPairId"] = request.keyPairId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.numberOfInstances)) {
            query["NumberOfInstances"] = request.numberOfInstances!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAndroidInstanceGroup",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAndroidInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndroidInstanceGroup(_ request: CreateAndroidInstanceGroupRequest) async throws -> CreateAndroidInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAndroidInstanceGroupWithOptions(request as! CreateAndroidInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppWithOptions(_ tmpReq: CreateAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAppShrinkRequest = CreateAppShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.customAppInfo)) {
            request.customAppInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customAppInfo, "CustomAppInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customAppInfoShrink)) {
            query["CustomAppInfo"] = request.customAppInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconUrl)) {
            query["IconUrl"] = request.iconUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.installParam)) {
            query["InstallParam"] = request.installParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAppUrl)) {
            query["OssAppUrl"] = request.ossAppUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signApk)) {
            query["SignApk"] = request.signApk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApp",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApp(_ request: CreateAppRequest) async throws -> CreateAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAppWithOptions(request as! CreateAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCloudPhoneNodeWithOptions(_ tmpReq: CreateCloudPhoneNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCloudPhoneNodeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateCloudPhoneNodeShrinkRequest = CreateCloudPhoneNodeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.displayConfig)) {
            request.displayConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.displayConfig, "DisplayConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.count)) {
            query["Count"] = request.count ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkId)) {
            query["NetworkId"] = request.networkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeName)) {
            query["NodeName"] = request.nodeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneCount)) {
            query["PhoneCount"] = request.phoneCount!;
        }
        if (!TeaUtils.Client.isUnset(request.resolutionHeight)) {
            query["ResolutionHeight"] = request.resolutionHeight!;
        }
        if (!TeaUtils.Client.isUnset(request.resolutionWidth)) {
            query["ResolutionWidth"] = request.resolutionWidth!;
        }
        if (!TeaUtils.Client.isUnset(request.serverShareDataVolume)) {
            query["ServerShareDataVolume"] = request.serverShareDataVolume!;
        }
        if (!TeaUtils.Client.isUnset(request.serverType)) {
            query["ServerType"] = request.serverType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayConfigShrink)) {
            body["DisplayConfig"] = request.displayConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCloudPhoneNode",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCloudPhoneNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCloudPhoneNode(_ request: CreateCloudPhoneNodeRequest) async throws -> CreateCloudPhoneNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCloudPhoneNodeWithOptions(request as! CreateCloudPhoneNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomImageWithOptions(_ request: CreateCustomImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            body["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomImage",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomImage(_ request: CreateCustomImageRequest) async throws -> CreateCustomImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCustomImageWithOptions(request as! CreateCustomImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKeyPairWithOptions(_ request: CreateKeyPairRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateKeyPairResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateKeyPair",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateKeyPairResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKeyPair(_ request: CreateKeyPairRequest) async throws -> CreateKeyPairResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createKeyPairWithOptions(request as! CreateKeyPairRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyGroupWithOptions(_ tmpReq: CreatePolicyGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePolicyGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePolicyGroupShrinkRequest = CreatePolicyGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.netRedirectPolicy)) {
            request.netRedirectPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.netRedirectPolicy, "NetRedirectPolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.watermark)) {
            request.watermarkShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.watermark, "Watermark", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cameraRedirect)) {
            body["CameraRedirect"] = request.cameraRedirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clipboard)) {
            body["Clipboard"] = request.clipboard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.html5FileTransfer)) {
            body["Html5FileTransfer"] = request.html5FileTransfer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localDrive)) {
            body["LocalDrive"] = request.localDrive ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lockResolution)) {
            body["LockResolution"] = request.lockResolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netRedirectPolicyShrink)) {
            body["NetRedirectPolicy"] = request.netRedirectPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupName)) {
            body["PolicyGroupName"] = request.policyGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyType)) {
            body["PolicyType"] = request.policyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resolutionHeight)) {
            body["ResolutionHeight"] = request.resolutionHeight!;
        }
        if (!TeaUtils.Client.isUnset(request.resolutionWidth)) {
            body["ResolutionWidth"] = request.resolutionWidth!;
        }
        if (!TeaUtils.Client.isUnset(request.watermarkShrink)) {
            body["Watermark"] = request.watermarkShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePolicyGroup",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePolicyGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyGroup(_ request: CreatePolicyGroupRequest) async throws -> CreatePolicyGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPolicyGroupWithOptions(request as! CreatePolicyGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScreenshotWithOptions(_ request: CreateScreenshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScreenshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIdList)) {
            query["AndroidInstanceIdList"] = request.androidInstanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            query["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipCheckPolicyConfig)) {
            query["SkipCheckPolicyConfig"] = request.skipCheckPolicyConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScreenshot",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScreenshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScreenshot(_ request: CreateScreenshotRequest) async throws -> CreateScreenshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createScreenshotWithOptions(request as! CreateScreenshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAndroidInstanceGroupWithOptions(_ request: DeleteAndroidInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAndroidInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceGroupIds)) {
            query["InstanceGroupIds"] = request.instanceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAndroidInstanceGroup",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAndroidInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAndroidInstanceGroup(_ request: DeleteAndroidInstanceGroupRequest) async throws -> DeleteAndroidInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAndroidInstanceGroupWithOptions(request as! DeleteAndroidInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppsWithOptions(_ request: DeleteAppsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAppsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIdList)) {
            query["AppIdList"] = request.appIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApps",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApps(_ request: DeleteAppsRequest) async throws -> DeleteAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAppsWithOptions(request as! DeleteAppsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCloudPhoneNodesWithOptions(_ request: DeleteCloudPhoneNodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCloudPhoneNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeIds)) {
            body["NodeIds"] = request.nodeIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCloudPhoneNodes",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCloudPhoneNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCloudPhoneNodes(_ request: DeleteCloudPhoneNodesRequest) async throws -> DeleteCloudPhoneNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCloudPhoneNodesWithOptions(request as! DeleteCloudPhoneNodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImagesWithOptions(_ tmpReq: DeleteImagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteImagesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteImagesShrinkRequest = DeleteImagesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.imageIds)) {
            request.imageIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.imageIds, "ImageIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageIdsShrink)) {
            body["ImageIds"] = request.imageIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteImages",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteImagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImages(_ request: DeleteImagesRequest) async throws -> DeleteImagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteImagesWithOptions(request as! DeleteImagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteKeyPairsWithOptions(_ request: DeleteKeyPairsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteKeyPairsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyPairIds)) {
            query["KeyPairIds"] = request.keyPairIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteKeyPairs",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteKeyPairsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteKeyPairs(_ request: DeleteKeyPairsRequest) async throws -> DeleteKeyPairsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteKeyPairsWithOptions(request as! DeleteKeyPairsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyGroupWithOptions(_ request: DeletePolicyGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePolicyGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyGroupIds)) {
            query["PolicyGroupIds"] = request.policyGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePolicyGroup",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePolicyGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyGroup(_ request: DeletePolicyGroupRequest) async throws -> DeletePolicyGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePolicyGroupWithOptions(request as! DeletePolicyGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAndroidInstanceGroupsWithOptions(_ request: DescribeAndroidInstanceGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAndroidInstanceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupIds)) {
            query["InstanceGroupIds"] = request.instanceGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupName)) {
            query["InstanceGroupName"] = request.instanceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyPairId)) {
            query["KeyPairId"] = request.keyPairId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleMode)) {
            query["SaleMode"] = request.saleMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAndroidInstanceGroups",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAndroidInstanceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAndroidInstanceGroups(_ request: DescribeAndroidInstanceGroupsRequest) async throws -> DescribeAndroidInstanceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAndroidInstanceGroupsWithOptions(request as! DescribeAndroidInstanceGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAndroidInstancesWithOptions(_ request: DescribeAndroidInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAndroidInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIds)) {
            query["AndroidInstanceIds"] = request.androidInstanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.androidInstanceName)) {
            query["AndroidInstanceName"] = request.androidInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizedUserId)) {
            query["AuthorizedUserId"] = request.authorizedUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupId)) {
            query["InstanceGroupId"] = request.instanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupIds)) {
            query["InstanceGroupIds"] = request.instanceGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupName)) {
            query["InstanceGroupName"] = request.instanceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyPairId)) {
            query["KeyPairId"] = request.keyPairId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeName)) {
            query["NodeName"] = request.nodeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteIds)) {
            query["OfficeSiteIds"] = request.officeSiteIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.qosRuleIds)) {
            query["QosRuleIds"] = request.qosRuleIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.saleMode)) {
            query["SaleMode"] = request.saleMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAndroidInstances",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAndroidInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAndroidInstances(_ request: DescribeAndroidInstancesRequest) async throws -> DescribeAndroidInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAndroidInstancesWithOptions(request as! DescribeAndroidInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppsWithOptions(_ request: DescribeAppsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIdList)) {
            query["AppIdList"] = request.appIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appType)) {
            query["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.installationStatus)) {
            query["InstallationStatus"] = request.installationStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.MD5)) {
            query["MD5"] = request.MD5 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
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
            "action": "DescribeApps",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApps(_ request: DescribeAppsRequest) async throws -> DescribeAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAppsWithOptions(request as! DescribeAppsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupFilesWithOptions(_ request: DescribeBackupFilesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupFilesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceId)) {
            query["AndroidInstanceId"] = request.androidInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidInstanceName)) {
            query["AndroidInstanceName"] = request.androidInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupAll)) {
            query["BackupAll"] = request.backupAll!;
        }
        if (!TeaUtils.Client.isUnset(request.backupFileId)) {
            query["BackupFileId"] = request.backupFileId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupFileName)) {
            query["BackupFileName"] = request.backupFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupId)) {
            query["InstanceGroupId"] = request.instanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            query["StatusList"] = request.statusList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupFiles",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupFilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupFiles(_ request: DescribeBackupFilesRequest) async throws -> DescribeBackupFilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupFilesWithOptions(request as! DescribeBackupFilesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudPhoneNodesWithOptions(_ request: DescribeCloudPhoneNodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCloudPhoneNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeIds)) {
            query["NodeIds"] = request.nodeIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nodeName)) {
            query["NodeName"] = request.nodeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverType)) {
            query["ServerType"] = request.serverType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCloudPhoneNodes",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCloudPhoneNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudPhoneNodes(_ request: DescribeCloudPhoneNodesRequest) async throws -> DescribeCloudPhoneNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCloudPhoneNodesWithOptions(request as! DescribeCloudPhoneNodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDisplayConfigWithOptions(_ request: DescribeDisplayConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDisplayConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIds)) {
            body["AndroidInstanceIds"] = request.androidInstanceIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDisplayConfig",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDisplayConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDisplayConfig(_ request: DescribeDisplayConfigRequest) async throws -> DescribeDisplayConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDisplayConfigWithOptions(request as! DescribeDisplayConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImageListWithOptions(_ request: DescribeImageListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeImageListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imagePackageType)) {
            query["ImagePackageType"] = request.imagePackageType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            body["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageType)) {
            body["ImageType"] = request.imageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeImageList",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeImageListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImageList(_ request: DescribeImageListRequest) async throws -> DescribeImageListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeImageListWithOptions(request as! DescribeImageListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInvocationsWithOptions(_ request: DescribeInvocationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInvocationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.invocationId)) {
            query["InvocationId"] = request.invocationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInvocations",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInvocationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInvocations(_ request: DescribeInvocationsRequest) async throws -> DescribeInvocationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInvocationsWithOptions(request as! DescribeInvocationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKeyPairsWithOptions(_ request: DescribeKeyPairsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeKeyPairsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyPairIds)) {
            query["KeyPairIds"] = request.keyPairIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeKeyPairs",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeKeyPairsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKeyPairs(_ request: DescribeKeyPairsRequest) async throws -> DescribeKeyPairsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeKeyPairsWithOptions(request as! DescribeKeyPairsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleMode)) {
            query["SaleMode"] = request.saleMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2023-09-30",
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
    public func describeSpecWithOptions(_ request: DescribeSpecRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSpecResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matrixSpec)) {
            query["MatrixSpec"] = request.matrixSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleMode)) {
            query["SaleMode"] = request.saleMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specIds)) {
            query["SpecIds"] = request.specIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.specStatus)) {
            query["SpecStatus"] = request.specStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specType)) {
            query["SpecType"] = request.specType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSpec",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSpecResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSpec(_ request: DescribeSpecRequest) async throws -> DescribeSpecResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSpecWithOptions(request as! DescribeSpecRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTasksWithOptions(_ request: DescribeTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invokeId)) {
            query["InvokeId"] = request.invokeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            query["Level"] = request.level!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.param)) {
            query["Param"] = request.param ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentTaskId)) {
            query["ParentTaskId"] = request.parentTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taskIds)) {
            query["TaskIds"] = request.taskIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            query["TaskStatus"] = request.taskStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatuses)) {
            query["TaskStatuses"] = request.taskStatuses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskTypes)) {
            query["TaskTypes"] = request.taskTypes ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTasks",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTasks(_ request: DescribeTasksRequest) async throws -> DescribeTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTasksWithOptions(request as! DescribeTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachKeyPairWithOptions(_ request: DetachKeyPairRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachKeyPairResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.keyPairId)) {
            query["KeyPairId"] = request.keyPairId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachKeyPair",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachKeyPairResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachKeyPair(_ request: DetachKeyPairRequest) async throws -> DetachKeyPairResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachKeyPairWithOptions(request as! DetachKeyPairRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disconnectAndroidInstanceWithOptions(_ request: DisconnectAndroidInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisconnectAndroidInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisconnectAndroidInstance",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisconnectAndroidInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disconnectAndroidInstance(_ request: DisconnectAndroidInstanceRequest) async throws -> DisconnectAndroidInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disconnectAndroidInstanceWithOptions(request as! DisconnectAndroidInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func distributeImageWithOptions(_ request: DistributeImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DistributeImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributeRegionList)) {
            body["DistributeRegionList"] = request.distributeRegionList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DistributeImage",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DistributeImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func distributeImage(_ request: DistributeImageRequest) async throws -> DistributeImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await distributeImageWithOptions(request as! DistributeImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downgradeAndroidInstanceGroupWithOptions(_ request: DowngradeAndroidInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DowngradeAndroidInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIds)) {
            query["AndroidInstanceIds"] = request.androidInstanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupId)) {
            query["InstanceGroupId"] = request.instanceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DowngradeAndroidInstanceGroup",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DowngradeAndroidInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downgradeAndroidInstanceGroup(_ request: DowngradeAndroidInstanceGroupRequest) async throws -> DowngradeAndroidInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await downgradeAndroidInstanceGroupWithOptions(request as! DowngradeAndroidInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func endCoordinationWithOptions(_ request: EndCoordinationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EndCoordinationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coordinatorUserId)) {
            query["CoordinatorUserId"] = request.coordinatorUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerUserId)) {
            query["OwnerUserId"] = request.ownerUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EndCoordination",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EndCoordinationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func endCoordination(_ request: EndCoordinationRequest) async throws -> EndCoordinationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await endCoordinationWithOptions(request as! EndCoordinationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expandDataVolumeWithOptions(_ request: ExpandDataVolumeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExpandDataVolumeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeIds)) {
            query["NodeIds"] = request.nodeIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.shareDataVolume)) {
            query["ShareDataVolume"] = request.shareDataVolume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExpandDataVolume",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExpandDataVolumeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expandDataVolume(_ request: ExpandDataVolumeRequest) async throws -> ExpandDataVolumeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await expandDataVolumeWithOptions(request as! ExpandDataVolumeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fetchFileWithOptions(_ request: FetchFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FetchFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIdList)) {
            query["AndroidInstanceIdList"] = request.androidInstanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sourceFilePath)) {
            query["SourceFilePath"] = request.sourceFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadEndpoint)) {
            query["UploadEndpoint"] = request.uploadEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadType)) {
            query["UploadType"] = request.uploadType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadUrl)) {
            query["UploadUrl"] = request.uploadUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FetchFile",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FetchFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fetchFile(_ request: FetchFileRequest) async throws -> FetchFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await fetchFileWithOptions(request as! FetchFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateCoordinationCodeWithOptions(_ request: GenerateCoordinationCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateCoordinationCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerUserId)) {
            query["OwnerUserId"] = request.ownerUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateCoordinationCode",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateCoordinationCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateCoordinationCode(_ request: GenerateCoordinationCodeRequest) async throws -> GenerateCoordinationCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateCoordinationCodeWithOptions(request as! GenerateCoordinationCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importKeyPairWithOptions(_ request: ImportKeyPairRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportKeyPairResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyPairName)) {
            query["KeyPairName"] = request.keyPairName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicKeyBody)) {
            query["PublicKeyBody"] = request.publicKeyBody ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportKeyPair",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportKeyPairResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importKeyPair(_ request: ImportKeyPairRequest) async throws -> ImportKeyPairResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importKeyPairWithOptions(request as! ImportKeyPairRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installAppWithOptions(_ request: InstallAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InstallAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIdList)) {
            query["AppIdList"] = request.appIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupIdList)) {
            query["InstanceGroupIdList"] = request.instanceGroupIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdList)) {
            query["InstanceIdList"] = request.instanceIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InstallApp",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InstallAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installApp(_ request: InstallAppRequest) async throws -> InstallAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await installAppWithOptions(request as! InstallAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicyGroupsWithOptions(_ request: ListPolicyGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPolicyGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupIds)) {
            body["PolicyGroupIds"] = request.policyGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupName)) {
            body["PolicyGroupName"] = request.policyGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyType)) {
            body["PolicyType"] = request.policyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPolicyGroups",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPolicyGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicyGroups(_ request: ListPolicyGroupsRequest) async throws -> ListPolicyGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPolicyGroupsWithOptions(request as! ListPolicyGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAndroidInstanceWithOptions(_ request: ModifyAndroidInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAndroidInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceId)) {
            query["AndroidInstanceId"] = request.androidInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newAndroidInstanceName)) {
            query["NewAndroidInstanceName"] = request.newAndroidInstanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAndroidInstance",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAndroidInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAndroidInstance(_ request: ModifyAndroidInstanceRequest) async throws -> ModifyAndroidInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAndroidInstanceWithOptions(request as! ModifyAndroidInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAndroidInstanceGroupWithOptions(_ request: ModifyAndroidInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAndroidInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceGroupId)) {
            query["InstanceGroupId"] = request.instanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newInstanceGroupName)) {
            query["NewInstanceGroupName"] = request.newInstanceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAndroidInstanceGroup",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAndroidInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAndroidInstanceGroup(_ request: ModifyAndroidInstanceGroupRequest) async throws -> ModifyAndroidInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAndroidInstanceGroupWithOptions(request as! ModifyAndroidInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppWithOptions(_ request: ModifyAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconUrl)) {
            query["IconUrl"] = request.iconUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApp",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApp(_ request: ModifyAppRequest) async throws -> ModifyAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAppWithOptions(request as! ModifyAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCloudPhoneNodeWithOptions(_ request: ModifyCloudPhoneNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCloudPhoneNodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCloudPhoneNode",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCloudPhoneNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCloudPhoneNode(_ request: ModifyCloudPhoneNodeRequest) async throws -> ModifyCloudPhoneNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCloudPhoneNodeWithOptions(request as! ModifyCloudPhoneNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDisplayConfigWithOptions(_ tmpReq: ModifyDisplayConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDisplayConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyDisplayConfigShrinkRequest = ModifyDisplayConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.displayConfig)) {
            request.displayConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.displayConfig, "DisplayConfig", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIds)) {
            body["AndroidInstanceIds"] = request.androidInstanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.displayConfigShrink)) {
            body["DisplayConfig"] = request.displayConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDisplayConfig",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDisplayConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDisplayConfig(_ request: ModifyDisplayConfigRequest) async throws -> ModifyDisplayConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDisplayConfigWithOptions(request as! ModifyDisplayConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceChargeTypeWithOptions(_ request: ModifyInstanceChargeTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceChargeTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupIds)) {
            query["InstanceGroupIds"] = request.instanceGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceChargeType",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceChargeTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceChargeType(_ request: ModifyInstanceChargeTypeRequest) async throws -> ModifyInstanceChargeTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceChargeTypeWithOptions(request as! ModifyInstanceChargeTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyKeyPairNameWithOptions(_ request: ModifyKeyPairNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyKeyPairNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyPairId)) {
            query["KeyPairId"] = request.keyPairId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newKeyPairName)) {
            query["NewKeyPairName"] = request.newKeyPairName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyKeyPairName",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyKeyPairNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyKeyPairName(_ request: ModifyKeyPairNameRequest) async throws -> ModifyKeyPairNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyKeyPairNameWithOptions(request as! ModifyKeyPairNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPolicyGroupWithOptions(_ tmpReq: ModifyPolicyGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPolicyGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyPolicyGroupShrinkRequest = ModifyPolicyGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.netRedirectPolicy)) {
            request.netRedirectPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.netRedirectPolicy, "NetRedirectPolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.watermark)) {
            request.watermarkShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.watermark, "Watermark", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cameraRedirect)) {
            body["CameraRedirect"] = request.cameraRedirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clipboard)) {
            body["Clipboard"] = request.clipboard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.html5FileTransfer)) {
            body["Html5FileTransfer"] = request.html5FileTransfer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localDrive)) {
            body["LocalDrive"] = request.localDrive ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lockResolution)) {
            body["LockResolution"] = request.lockResolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netRedirectPolicyShrink)) {
            body["NetRedirectPolicy"] = request.netRedirectPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            body["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupName)) {
            body["PolicyGroupName"] = request.policyGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resolutionHeight)) {
            body["ResolutionHeight"] = request.resolutionHeight!;
        }
        if (!TeaUtils.Client.isUnset(request.resolutionWidth)) {
            body["ResolutionWidth"] = request.resolutionWidth!;
        }
        if (!TeaUtils.Client.isUnset(request.watermarkShrink)) {
            body["Watermark"] = request.watermarkShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPolicyGroup",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPolicyGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPolicyGroup(_ request: ModifyPolicyGroupRequest) async throws -> ModifyPolicyGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyPolicyGroupWithOptions(request as! ModifyPolicyGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateAppWithOptions(_ request: OperateAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdList)) {
            query["InstanceIdList"] = request.instanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateApp",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateApp(_ request: OperateAppRequest) async throws -> OperateAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateAppWithOptions(request as! OperateAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootAndroidInstancesInGroupWithOptions(_ request: RebootAndroidInstancesInGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebootAndroidInstancesInGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIds)) {
            query["AndroidInstanceIds"] = request.androidInstanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.forceStop)) {
            query["ForceStop"] = request.forceStop!;
        }
        if (!TeaUtils.Client.isUnset(request.saleMode)) {
            query["SaleMode"] = request.saleMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebootAndroidInstancesInGroup",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebootAndroidInstancesInGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootAndroidInstancesInGroup(_ request: RebootAndroidInstancesInGroupRequest) async throws -> RebootAndroidInstancesInGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebootAndroidInstancesInGroupWithOptions(request as! RebootAndroidInstancesInGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recoveryFileWithOptions(_ request: RecoveryFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecoveryFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIdList)) {
            query["AndroidInstanceIdList"] = request.androidInstanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.backupAll)) {
            query["BackupAll"] = request.backupAll!;
        }
        if (!TeaUtils.Client.isUnset(request.backupFileId)) {
            query["BackupFileId"] = request.backupFileId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupFilePath)) {
            query["BackupFilePath"] = request.backupFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadEndpoint)) {
            query["UploadEndpoint"] = request.uploadEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadType)) {
            query["UploadType"] = request.uploadType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecoveryFile",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecoveryFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recoveryFile(_ request: RecoveryFileRequest) async throws -> RecoveryFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recoveryFileWithOptions(request as! RecoveryFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewAndroidInstanceGroupsWithOptions(_ request: RenewAndroidInstanceGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewAndroidInstanceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupIds)) {
            query["InstanceGroupIds"] = request.instanceGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewAndroidInstanceGroups",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewAndroidInstanceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewAndroidInstanceGroups(_ request: RenewAndroidInstanceGroupsRequest) async throws -> RenewAndroidInstanceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewAndroidInstanceGroupsWithOptions(request as! RenewAndroidInstanceGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewCloudPhoneNodesWithOptions(_ request: RenewCloudPhoneNodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewCloudPhoneNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeIds)) {
            body["NodeIds"] = request.nodeIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            body["PeriodUnit"] = request.periodUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewCloudPhoneNodes",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewCloudPhoneNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewCloudPhoneNodes(_ request: RenewCloudPhoneNodesRequest) async throws -> RenewCloudPhoneNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewCloudPhoneNodesWithOptions(request as! RenewCloudPhoneNodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAndroidInstancesInGroupWithOptions(_ request: ResetAndroidInstancesInGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetAndroidInstancesInGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIds)) {
            query["AndroidInstanceIds"] = request.androidInstanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.saleMode)) {
            query["SaleMode"] = request.saleMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetAndroidInstancesInGroup",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetAndroidInstancesInGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAndroidInstancesInGroup(_ request: ResetAndroidInstancesInGroupRequest) async throws -> ResetAndroidInstancesInGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetAndroidInstancesInGroupWithOptions(request as! ResetAndroidInstancesInGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCommandWithOptions(_ request: RunCommandRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunCommandResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commandContent)) {
            query["CommandContent"] = request.commandContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentEncoding)) {
            query["ContentEncoding"] = request.contentEncoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunCommand",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunCommandResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCommand(_ request: RunCommandRequest) async throws -> RunCommandResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runCommandWithOptions(request as! RunCommandRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendFileWithOptions(_ request: SendFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIdList)) {
            query["AndroidInstanceIdList"] = request.androidInstanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sourceFilePath)) {
            query["SourceFilePath"] = request.sourceFilePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetFileName)) {
            query["TargetFileName"] = request.targetFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadEndpoint)) {
            query["UploadEndpoint"] = request.uploadEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadType)) {
            query["UploadType"] = request.uploadType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadUrl)) {
            query["UploadUrl"] = request.uploadUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendFile",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendFile(_ request: SendFileRequest) async throws -> SendFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendFileWithOptions(request as! SendFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAdbSecureWithOptions(_ request: SetAdbSecureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetAdbSecureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetAdbSecure",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetAdbSecureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAdbSecure(_ request: SetAdbSecureRequest) async throws -> SetAdbSecureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setAdbSecureWithOptions(request as! SetAdbSecureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAndroidInstanceWithOptions(_ request: StartAndroidInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartAndroidInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIds)) {
            query["AndroidInstanceIds"] = request.androidInstanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.saleMode)) {
            query["SaleMode"] = request.saleMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartAndroidInstance",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartAndroidInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAndroidInstance(_ request: StartAndroidInstanceRequest) async throws -> StartAndroidInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startAndroidInstanceWithOptions(request as! StartAndroidInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopAndroidInstanceWithOptions(_ request: StopAndroidInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopAndroidInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidInstanceIds)) {
            query["AndroidInstanceIds"] = request.androidInstanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.forceStop)) {
            query["ForceStop"] = request.forceStop!;
        }
        if (!TeaUtils.Client.isUnset(request.saleMode)) {
            query["SaleMode"] = request.saleMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopAndroidInstance",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopAndroidInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopAndroidInstance(_ request: StopAndroidInstanceRequest) async throws -> StopAndroidInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopAndroidInstanceWithOptions(request as! StopAndroidInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallAppWithOptions(_ request: UninstallAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UninstallAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appIdList)) {
            query["AppIdList"] = request.appIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupIdList)) {
            query["InstanceGroupIdList"] = request.instanceGroupIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdList)) {
            query["InstanceIdList"] = request.instanceIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UninstallApp",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UninstallAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallApp(_ request: UninstallAppRequest) async throws -> UninstallAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uninstallAppWithOptions(request as! UninstallAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomImageNameWithOptions(_ request: UpdateCustomImageNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCustomImageNameResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            body["ImageName"] = request.imageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCustomImageName",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCustomImageNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomImageName(_ request: UpdateCustomImageNameRequest) async throws -> UpdateCustomImageNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCustomImageNameWithOptions(request as! UpdateCustomImageNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceGroupImageWithOptions(_ request: UpdateInstanceGroupImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceGroupImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupIds)) {
            body["InstanceGroupIds"] = request.instanceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceGroupImage",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceGroupImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceGroupImage(_ request: UpdateInstanceGroupImageRequest) async throws -> UpdateInstanceGroupImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateInstanceGroupImageWithOptions(request as! UpdateInstanceGroupImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceImageWithOptions(_ request: UpdateInstanceImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdList)) {
            query["InstanceIdList"] = request.instanceIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceImage",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceImage(_ request: UpdateInstanceImageRequest) async throws -> UpdateInstanceImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateInstanceImageWithOptions(request as! UpdateInstanceImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeAndroidInstanceGroupWithOptions(_ request: UpgradeAndroidInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeAndroidInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.increaseNumberOfInstance)) {
            query["IncreaseNumberOfInstance"] = request.increaseNumberOfInstance!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceGroupId)) {
            query["InstanceGroupId"] = request.instanceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeAndroidInstanceGroup",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeAndroidInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeAndroidInstanceGroup(_ request: UpgradeAndroidInstanceGroupRequest) async throws -> UpgradeAndroidInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeAndroidInstanceGroupWithOptions(request as! UpgradeAndroidInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
