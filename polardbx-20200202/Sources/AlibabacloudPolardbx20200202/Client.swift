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
            "ap-northeast-1": "polardbx.aliyuncs.com",
            "ap-northeast-2-pop": "polardbx.aliyuncs.com",
            "ap-south-1": "polardbx.aliyuncs.com",
            "ap-southeast-2": "polardbx.aliyuncs.com",
            "ap-southeast-3": "polardbx.aliyuncs.com",
            "ap-southeast-5": "polardbx.aliyuncs.com",
            "cn-beijing-finance-1": "polardbx.aliyuncs.com",
            "cn-beijing-finance-pop": "polardbx.aliyuncs.com",
            "cn-beijing-gov-1": "polardbx.aliyuncs.com",
            "cn-beijing-nu16-b01": "polardbx.aliyuncs.com",
            "cn-edge-1": "polardbx.aliyuncs.com",
            "cn-fujian": "polardbx.aliyuncs.com",
            "cn-haidian-cm12-c01": "polardbx.aliyuncs.com",
            "cn-hangzhou-bj-b01": "polardbx.aliyuncs.com",
            "cn-hangzhou-finance": "polardbx.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "polardbx.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "polardbx.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "polardbx.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "polardbx.aliyuncs.com",
            "cn-hangzhou-test-306": "polardbx.aliyuncs.com",
            "cn-hongkong-finance-pop": "polardbx.aliyuncs.com",
            "cn-huhehaote-nebula-1": "polardbx.aliyuncs.com",
            "cn-north-2-gov-1": "polardbx.aliyuncs.com",
            "cn-qingdao-nebula": "polardbx.aliyuncs.com",
            "cn-shanghai-et15-b01": "polardbx.aliyuncs.com",
            "cn-shanghai-et2-b01": "polardbx.aliyuncs.com",
            "cn-shanghai-finance-1": "polardbx.aliyuncs.com",
            "cn-shanghai-inner": "polardbx.aliyuncs.com",
            "cn-shanghai-internal-test-1": "polardbx.aliyuncs.com",
            "cn-shenzhen-finance-1": "polardbx.aliyuncs.com",
            "cn-shenzhen-inner": "polardbx.aliyuncs.com",
            "cn-shenzhen-st4-d01": "polardbx.aliyuncs.com",
            "cn-shenzhen-su18-b01": "polardbx.aliyuncs.com",
            "cn-wuhan": "polardbx.aliyuncs.com",
            "cn-wulanchabu": "polardbx.aliyuncs.com",
            "cn-yushanfang": "polardbx.aliyuncs.com",
            "cn-zhangbei": "polardbx.aliyuncs.com",
            "cn-zhangbei-na61-b01": "polardbx.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "polardbx.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "polardbx.aliyuncs.com",
            "eu-central-1": "polardbx.aliyuncs.com",
            "eu-west-1": "polardbx.aliyuncs.com",
            "eu-west-1-oxs": "polardbx.aliyuncs.com",
            "me-east-1": "polardbx.aliyuncs.com",
            "rus-west-1-pop": "polardbx.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("polardbx", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func alignStoragePrimaryAzoneWithOptions(_ request: AlignStoragePrimaryAzoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AlignStoragePrimaryAzoneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageInstanceName)) {
            query["StorageInstanceName"] = request.storageInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchTime)) {
            query["SwitchTime"] = request.switchTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchTimeMode)) {
            query["SwitchTimeMode"] = request.switchTimeMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AlignStoragePrimaryAzone",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AlignStoragePrimaryAzoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func alignStoragePrimaryAzone(_ request: AlignStoragePrimaryAzoneRequest) async throws -> AlignStoragePrimaryAzoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await alignStoragePrimaryAzoneWithOptions(request as! AlignStoragePrimaryAzoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allocateColdDataVolumeWithOptions(_ request: AllocateColdDataVolumeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AllocateColdDataVolumeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AllocateColdDataVolume",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AllocateColdDataVolumeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allocateColdDataVolume(_ request: AllocateColdDataVolumeRequest) async throws -> AllocateColdDataVolumeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await allocateColdDataVolumeWithOptions(request as! AllocateColdDataVolumeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allocateInstancePublicConnectionWithOptions(_ request: AllocateInstancePublicConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AllocateInstancePublicConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionStringPrefix)) {
            query["ConnectionStringPrefix"] = request.connectionStringPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AllocateInstancePublicConnection",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AllocateInstancePublicConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allocateInstancePublicConnection(_ request: AllocateInstancePublicConnectionRequest) async throws -> AllocateInstancePublicConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await allocateInstancePublicConnectionWithOptions(request as! AllocateInstancePublicConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachColumnarInstanceWithOptions(_ request: AttachColumnarInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachColumnarInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachColumnarInstance",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachColumnarInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachColumnarInstance(_ request: AttachColumnarInstanceRequest) async throws -> AttachColumnarInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachColumnarInstanceWithOptions(request as! AttachColumnarInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelActiveOperationTasksWithOptions(_ request: CancelActiveOperationTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelActiveOperationTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelActiveOperationTasks",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelActiveOperationTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelActiveOperationTasks(_ request: CancelActiveOperationTasksRequest) async throws -> CancelActiveOperationTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelActiveOperationTasksWithOptions(request as! CancelActiveOperationTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
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
            "action": "ChangeResourceGroup",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroup(_ request: ChangeResourceGroupRequest) async throws -> ChangeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeResourceGroupWithOptions(request as! ChangeResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkCloudResourceAuthorizedWithOptions(_ request: CheckCloudResourceAuthorizedRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckCloudResourceAuthorizedResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleArn)) {
            query["RoleArn"] = request.roleArn ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckCloudResourceAuthorized",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckCloudResourceAuthorizedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkCloudResourceAuthorized(_ request: CheckCloudResourceAuthorizedRequest) async throws -> CheckCloudResourceAuthorizedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkCloudResourceAuthorizedWithOptions(request as! CheckCloudResourceAuthorizedRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkSqlAuditSlsStatusWithOptions(_ request: CheckSqlAuditSlsStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckSqlAuditSlsStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckSqlAuditSlsStatus",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckSqlAuditSlsStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkSqlAuditSlsStatus(_ request: CheckSqlAuditSlsStatusRequest) async throws -> CheckSqlAuditSlsStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkSqlAuditSlsStatusWithOptions(request as! CheckSqlAuditSlsStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeEngineMigrationWithOptions(_ request: CloseEngineMigrationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloseEngineMigrationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.continueEnableBinlog)) {
            query["ContinueEnableBinlog"] = request.continueEnableBinlog ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloseEngineMigration",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloseEngineMigrationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeEngineMigration(_ request: CloseEngineMigrationRequest) async throws -> CloseEngineMigrationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await closeEngineMigrationWithOptions(request as! CloseEngineMigrationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmNoConnectionWithOptions(_ request: ConfirmNoConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmNoConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmNoConnection",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmNoConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmNoConnection(_ request: ConfirmNoConnectionRequest) async throws -> ConfirmNoConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmNoConnectionWithOptions(request as! ConfirmNoConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAccountWithOptions(_ request: CreateAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountDescription)) {
            query["AccountDescription"] = request.accountDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountPassword)) {
            query["AccountPassword"] = request.accountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountPrivilege)) {
            query["AccountPrivilege"] = request.accountPrivilege ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBName)) {
            query["DBName"] = request.DBName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountName)) {
            query["SecurityAccountName"] = request.securityAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountPassword)) {
            query["SecurityAccountPassword"] = request.securityAccountPassword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAccount",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAccount(_ request: CreateAccountRequest) async throws -> CreateAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAccountWithOptions(request as! CreateAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackupWithOptions(_ request: CreateBackupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBackupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupType)) {
            query["BackupType"] = request.backupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBackup",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBackupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackup(_ request: CreateBackupRequest) async throws -> CreateBackupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBackupWithOptions(request as! CreateBackupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomEndpointWithOptions(_ request: CreateCustomEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeAutoEnter)) {
            query["NodeAutoEnter"] = request.nodeAutoEnter!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeIds)) {
            query["NodeIds"] = request.nodeIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeRole)) {
            query["NodeRole"] = request.nodeRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomEndpoint",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomEndpoint(_ request: CreateCustomEndpointRequest) async throws -> CreateCustomEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCustomEndpointWithOptions(request as! CreateCustomEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDBWithOptions(_ request: CreateDBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountPrivilege)) {
            query["AccountPrivilege"] = request.accountPrivilege ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.charset)) {
            query["Charset"] = request.charset ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbDescription)) {
            query["DbDescription"] = request.dbDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountName)) {
            query["SecurityAccountName"] = request.securityAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountPassword)) {
            query["SecurityAccountPassword"] = request.securityAccountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storagePoolName)) {
            query["StoragePoolName"] = request.storagePoolName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDB",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDB(_ request: CreateDBRequest) async throws -> CreateDBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDBWithOptions(request as! CreateDBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDBInstanceWithOptions(_ tmpReq: CreateDBInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDBInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDBInstanceShrinkRequest = CreateDBInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extraParams)) {
            request.extraParamsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extraParams, "ExtraParams", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.CNNodeCount)) {
            query["CNNodeCount"] = request.CNNodeCount!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cnClass)) {
            query["CnClass"] = request.cnClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBNodeClass)) {
            query["DBNodeClass"] = request.DBNodeClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBNodeCount)) {
            query["DBNodeCount"] = request.DBNodeCount!;
        }
        if (!TeaUtils.Client.isUnset(request.DNNodeCount)) {
            query["DNNodeCount"] = request.DNNodeCount!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dnClass)) {
            query["DnClass"] = request.dnClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dnStorageSpace)) {
            query["DnStorageSpace"] = request.dnStorageSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engineVersion)) {
            query["EngineVersion"] = request.engineVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParamsShrink)) {
            query["ExtraParams"] = request.extraParamsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isColumnarReadDBInstance)) {
            query["IsColumnarReadDBInstance"] = request.isColumnarReadDBInstance!;
        }
        if (!TeaUtils.Client.isUnset(request.isReadDBInstance)) {
            query["IsReadDBInstance"] = request.isReadDBInstance!;
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            query["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryDBInstanceName)) {
            query["PrimaryDBInstanceName"] = request.primaryDBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryZone)) {
            query["PrimaryZone"] = request.primaryZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryZone)) {
            query["SecondaryZone"] = request.secondaryZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.series)) {
            query["Series"] = request.series ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tertiaryZone)) {
            query["TertiaryZone"] = request.tertiaryZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topologyType)) {
            query["TopologyType"] = request.topologyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedTime)) {
            query["UsedTime"] = request.usedTime!;
        }
        if (!TeaUtils.Client.isUnset(request.VPCId)) {
            query["VPCId"] = request.VPCId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDBInstance",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDBInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDBInstance(_ request: CreateDBInstanceRequest) async throws -> CreateDBInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDBInstanceWithOptions(request as! CreateDBInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataImportTaskWithOptions(_ request: CreateDataImportTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataImportTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstDb)) {
            query["DstDb"] = request.dstDb ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstPassword)) {
            query["DstPassword"] = request.dstPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstResId)) {
            query["DstResId"] = request.dstResId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstUserName)) {
            query["DstUserName"] = request.dstUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcDb)) {
            query["SrcDb"] = request.srcDb ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcPassword)) {
            query["SrcPassword"] = request.srcPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcResId)) {
            query["SrcResId"] = request.srcResId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUserName)) {
            query["SrcUserName"] = request.srcUserName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataImportTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataImportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataImportTask(_ request: CreateDataImportTaskRequest) async throws -> CreateDataImportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataImportTaskWithOptions(request as! CreateDataImportTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGdnInstanceWithOptions(_ request: CreateGdnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGdnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gdnMode)) {
            query["GdnMode"] = request.gdnMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rplConflictStrategy)) {
            query["RplConflictStrategy"] = request.rplConflictStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rplDmlStrategy)) {
            query["RplDmlStrategy"] = request.rplDmlStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rplSyncDdl)) {
            query["RplSyncDdl"] = request.rplSyncDdl!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGdnInstance",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGdnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGdnInstance(_ request: CreateGdnInstanceRequest) async throws -> CreateGdnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGdnInstanceWithOptions(request as! CreateGdnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRplInspectionTaskWithOptions(_ request: CreateRplInspectionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRplInspectionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dstDb)) {
            query["DstDb"] = request.dstDb ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstPassword)) {
            query["DstPassword"] = request.dstPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstResId)) {
            query["DstResId"] = request.dstResId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstUserName)) {
            query["DstUserName"] = request.dstUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcPassword)) {
            query["SrcPassword"] = request.srcPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUserName)) {
            query["SrcUserName"] = request.srcUserName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRplInspectionTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRplInspectionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRplInspectionTask(_ request: CreateRplInspectionTaskRequest) async throws -> CreateRplInspectionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRplInspectionTaskWithOptions(request as! CreateRplInspectionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSQLEvaluateTaskWithOptions(_ request: CreateSQLEvaluateTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSQLEvaluateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstDb)) {
            query["DstDb"] = request.dstDb ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstPassword)) {
            query["DstPassword"] = request.dstPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstResId)) {
            query["DstResId"] = request.dstResId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstUserName)) {
            query["DstUserName"] = request.dstUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskDesc)) {
            query["SlinkTaskDesc"] = request.slinkTaskDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcDb)) {
            query["SrcDb"] = request.srcDb ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcPassword)) {
            query["SrcPassword"] = request.srcPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcResId)) {
            query["SrcResId"] = request.srcResId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcResType)) {
            query["SrcResType"] = request.srcResType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUserName)) {
            query["SrcUserName"] = request.srcUserName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSQLEvaluateTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSQLEvaluateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSQLEvaluateTask(_ request: CreateSQLEvaluateTaskRequest) async throws -> CreateSQLEvaluateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSQLEvaluateTaskWithOptions(request as! CreateSQLEvaluateTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStoragePoolWithOptions(_ request: CreateStoragePoolRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStoragePoolResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storagePoolDNList)) {
            query["StoragePoolDNList"] = request.storagePoolDNList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storagePoolName)) {
            query["StoragePoolName"] = request.storagePoolName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStoragePool",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStoragePoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStoragePool(_ request: CreateStoragePoolRequest) async throws -> CreateStoragePoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStoragePoolWithOptions(request as! CreateStoragePoolRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStructureImportTaskWithOptions(_ request: CreateStructureImportTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStructureImportTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStructureImportTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStructureImportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStructureImportTask(_ request: CreateStructureImportTaskRequest) async throws -> CreateStructureImportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStructureImportTaskWithOptions(request as! CreateStructureImportTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSuperAccountWithOptions(_ request: CreateSuperAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSuperAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountDescription)) {
            query["AccountDescription"] = request.accountDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountPassword)) {
            query["AccountPassword"] = request.accountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSuperAccount",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSuperAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSuperAccount(_ request: CreateSuperAccountRequest) async throws -> CreateSuperAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSuperAccountWithOptions(request as! CreateSuperAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTransformOperationWithOptions(_ request: CreateTransformOperationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTransformOperationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operation)) {
            query["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTransformOperation",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTransformOperationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTransformOperation(_ request: CreateTransformOperationRequest) async throws -> CreateTransformOperationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTransformOperationWithOptions(request as! CreateTransformOperationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAccountWithOptions(_ request: DeleteAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountName)) {
            query["SecurityAccountName"] = request.securityAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountPassword)) {
            query["SecurityAccountPassword"] = request.securityAccountPassword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAccount",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAccount(_ request: DeleteAccountRequest) async throws -> DeleteAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAccountWithOptions(request as! DeleteAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomEndpointWithOptions(_ request: DeleteCustomEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customEndpointId)) {
            query["CustomEndpointId"] = request.customEndpointId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomEndpoint",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomEndpoint(_ request: DeleteCustomEndpointRequest) async throws -> DeleteCustomEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCustomEndpointWithOptions(request as! DeleteCustomEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDBWithOptions(_ request: DeleteDBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDB",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDB(_ request: DeleteDBRequest) async throws -> DeleteDBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDBWithOptions(request as! DeleteDBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDBInstanceWithOptions(_ request: DeleteDBInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDBInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDBInstance",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDBInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDBInstance(_ request: DeleteDBInstanceRequest) async throws -> DeleteDBInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDBInstanceWithOptions(request as! DeleteDBInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvaluateAndImportTaskWithOptions(_ request: DeleteEvaluateAndImportTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEvaluateAndImportTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEvaluateAndImportTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEvaluateAndImportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEvaluateAndImportTask(_ request: DeleteEvaluateAndImportTaskRequest) async throws -> DeleteEvaluateAndImportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEvaluateAndImportTaskWithOptions(request as! DeleteEvaluateAndImportTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGdnInstanceWithOptions(_ request: DeleteGdnInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGdnInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gdnInstanceName)) {
            query["GdnInstanceName"] = request.gdnInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGdnInstance",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGdnInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGdnInstance(_ request: DeleteGdnInstanceRequest) async throws -> DeleteGdnInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGdnInstanceWithOptions(request as! DeleteGdnInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountListWithOptions(_ request: DescribeAccountListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccountListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccountList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccountListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountList(_ request: DescribeAccountListRequest) async throws -> DescribeAccountListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccountListWithOptions(request as! DescribeAccountListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeActiveOperationMaintainConfWithOptions(_ request: DescribeActiveOperationMaintainConfRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeActiveOperationMaintainConfResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeActiveOperationMaintainConf",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeActiveOperationMaintainConfResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeActiveOperationMaintainConf(_ request: DescribeActiveOperationMaintainConfRequest) async throws -> DescribeActiveOperationMaintainConfResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeActiveOperationMaintainConfWithOptions(request as! DescribeActiveOperationMaintainConfRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeActiveOperationTaskCountWithOptions(_ request: DescribeActiveOperationTaskCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeActiveOperationTaskCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeActiveOperationTaskCount",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeActiveOperationTaskCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeActiveOperationTaskCount(_ request: DescribeActiveOperationTaskCountRequest) async throws -> DescribeActiveOperationTaskCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeActiveOperationTaskCountWithOptions(request as! DescribeActiveOperationTaskCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeActiveOperationTasksWithOptions(_ request: DescribeActiveOperationTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeActiveOperationTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeActiveOperationTasks",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeActiveOperationTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeActiveOperationTasks(_ request: DescribeActiveOperationTasksRequest) async throws -> DescribeActiveOperationTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeActiveOperationTasksWithOptions(request as! DescribeActiveOperationTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeArchiveTableListWithOptions(_ request: DescribeArchiveTableListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeArchiveTableListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeArchiveTableList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeArchiveTableListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeArchiveTableList(_ request: DescribeArchiveTableListRequest) async throws -> DescribeArchiveTableListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeArchiveTableListWithOptions(request as! DescribeArchiveTableListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableCrossRegionsWithOptions(_ request: DescribeAvailableCrossRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAvailableCrossRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAvailableCrossRegions",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAvailableCrossRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableCrossRegions(_ request: DescribeAvailableCrossRegionsRequest) async throws -> DescribeAvailableCrossRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAvailableCrossRegionsWithOptions(request as! DescribeAvailableCrossRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPolicyWithOptions(_ request: DescribeBackupPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupPolicy",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPolicy(_ request: DescribeBackupPolicyRequest) async throws -> DescribeBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupPolicyWithOptions(request as! DescribeBackupPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupSetWithOptions(_ request: DescribeBackupSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destCrossRegion)) {
            query["DestCrossRegion"] = request.destCrossRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupSet",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupSet(_ request: DescribeBackupSetRequest) async throws -> DescribeBackupSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupSetWithOptions(request as! DescribeBackupSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupSetListWithOptions(_ request: DescribeBackupSetListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupSetListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupSetList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupSetListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupSetList(_ request: DescribeBackupSetListRequest) async throws -> DescribeBackupSetListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupSetListWithOptions(request as! DescribeBackupSetListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBinaryLogListWithOptions(_ request: DescribeBinaryLogListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBinaryLogListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBinaryLogList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBinaryLogListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBinaryLogList(_ request: DescribeBinaryLogListRequest) async throws -> DescribeBinaryLogListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBinaryLogListWithOptions(request as! DescribeBinaryLogListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCdcClassListWithOptions(_ request: DescribeCdcClassListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCdcClassListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCdcClassList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCdcClassListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCdcClassList(_ request: DescribeCdcClassListRequest) async throws -> DescribeCdcClassListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCdcClassListWithOptions(request as! DescribeCdcClassListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCdcInfoWithOptions(_ request: DescribeCdcInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCdcInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCdcInfo",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCdcInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCdcInfo(_ request: DescribeCdcInfoRequest) async throws -> DescribeCdcInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCdcInfoWithOptions(request as! DescribeCdcInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCdcVersionListWithOptions(_ request: DescribeCdcVersionListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCdcVersionListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCdcVersionList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCdcVersionListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCdcVersionList(_ request: DescribeCdcVersionListRequest) async throws -> DescribeCdcVersionListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCdcVersionListWithOptions(request as! DescribeCdcVersionListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCharacterSetWithOptions(_ request: DescribeCharacterSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCharacterSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCharacterSet",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCharacterSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCharacterSet(_ request: DescribeCharacterSetRequest) async throws -> DescribeCharacterSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCharacterSetWithOptions(request as! DescribeCharacterSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeColdDataBasicInfoWithOptions(_ request: DescribeColdDataBasicInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeColdDataBasicInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeColdDataBasicInfo",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeColdDataBasicInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeColdDataBasicInfo(_ request: DescribeColdDataBasicInfoRequest) async throws -> DescribeColdDataBasicInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeColdDataBasicInfoWithOptions(request as! DescribeColdDataBasicInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeColumnarClassListWithOptions(_ request: DescribeColumnarClassListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeColumnarClassListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeColumnarClassList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeColumnarClassListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeColumnarClassList(_ request: DescribeColumnarClassListRequest) async throws -> DescribeColumnarClassListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeColumnarClassListWithOptions(request as! DescribeColumnarClassListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeColumnarInfoWithOptions(_ request: DescribeColumnarInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeColumnarInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeColumnarInfo",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeColumnarInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeColumnarInfo(_ request: DescribeColumnarInfoRequest) async throws -> DescribeColumnarInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeColumnarInfoWithOptions(request as! DescribeColumnarInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeColumnarVersionListWithOptions(_ request: DescribeColumnarVersionListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeColumnarVersionListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeColumnarVersionList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeColumnarVersionListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeColumnarVersionList(_ request: DescribeColumnarVersionListRequest) async throws -> DescribeColumnarVersionListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeColumnarVersionListWithOptions(request as! DescribeColumnarVersionListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeComponentPropetiesWithOptions(_ request: DescribeComponentPropetiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeComponentPropetiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentName)) {
            query["ComponentName"] = request.componentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            query["StorageType"] = request.storageType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeComponentPropeties",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeComponentPropetiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeComponentPropeties(_ request: DescribeComponentPropetiesRequest) async throws -> DescribeComponentPropetiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeComponentPropetiesWithOptions(request as! DescribeComponentPropetiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCustomEndpointListWithOptions(_ request: DescribeCustomEndpointListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCustomEndpointListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkDeleteCN)) {
            query["CheckDeleteCN"] = request.checkDeleteCN!;
        }
        if (!TeaUtils.Client.isUnset(request.customEndpointIds)) {
            query["CustomEndpointIds"] = request.customEndpointIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCustomEndpointList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCustomEndpointListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCustomEndpointList(_ request: DescribeCustomEndpointListRequest) async throws -> DescribeCustomEndpointListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCustomEndpointListWithOptions(request as! DescribeCustomEndpointListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceAttributeWithOptions(_ request: DescribeDBInstanceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceAttribute",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceAttribute(_ request: DescribeDBInstanceAttributeRequest) async throws -> DescribeDBInstanceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceAttributeWithOptions(request as! DescribeDBInstanceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceConfigWithOptions(_ request: DescribeDBInstanceConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configName)) {
            query["ConfigName"] = request.configName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceConfig",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceConfig(_ request: DescribeDBInstanceConfigRequest) async throws -> DescribeDBInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceConfigWithOptions(request as! DescribeDBInstanceConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceHAWithOptions(_ request: DescribeDBInstanceHARequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceHAResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceHA",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceHAResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceHA(_ request: DescribeDBInstanceHARequest) async throws -> DescribeDBInstanceHAResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceHAWithOptions(request as! DescribeDBInstanceHARequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceSSLWithOptions(_ request: DescribeDBInstanceSSLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceSSLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceSSL",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceSSLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceSSL(_ request: DescribeDBInstanceSSLRequest) async throws -> DescribeDBInstanceSSLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceSSLWithOptions(request as! DescribeDBInstanceSSLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceTDEWithOptions(_ request: DescribeDBInstanceTDERequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceTDEResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceTDE",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceTDEResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceTDE(_ request: DescribeDBInstanceTDERequest) async throws -> DescribeDBInstanceTDEResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceTDEWithOptions(request as! DescribeDBInstanceTDERequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceTopologyWithOptions(_ request: DescribeDBInstanceTopologyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceTopologyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minuteSimple)) {
            query["MinuteSimple"] = request.minuteSimple!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceTopology",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceTopologyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceTopology(_ request: DescribeDBInstanceTopologyRequest) async throws -> DescribeDBInstanceTopologyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceTopologyWithOptions(request as! DescribeDBInstanceTopologyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceViaEndpointWithOptions(_ request: DescribeDBInstanceViaEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceViaEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endpoint)) {
            query["Endpoint"] = request.endpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceViaEndpoint",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceViaEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceViaEndpoint(_ request: DescribeDBInstanceViaEndpointRequest) async throws -> DescribeDBInstanceViaEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceViaEndpointWithOptions(request as! DescribeDBInstanceViaEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstancesWithOptions(_ request: DescribeDBInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbVersion)) {
            query["DbVersion"] = request.dbVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mustHasCdc)) {
            query["MustHasCdc"] = request.mustHasCdc!;
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
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.series)) {
            query["Series"] = request.series ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstances",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstances(_ request: DescribeDBInstancesRequest) async throws -> DescribeDBInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstancesWithOptions(request as! DescribeDBInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBNodePerformanceWithOptions(_ request: DescribeDBNodePerformanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBNodePerformanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.characterType)) {
            query["CharacterType"] = request.characterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBNodeIds)) {
            query["DBNodeIds"] = request.DBNodeIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBNodeRole)) {
            query["DBNodeRole"] = request.DBNodeRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBNodePerformance",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBNodePerformanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBNodePerformance(_ request: DescribeDBNodePerformanceRequest) async throws -> DescribeDBNodePerformanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBNodePerformanceWithOptions(request as! DescribeDBNodePerformanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataImportTaskInfoWithOptions(_ request: DescribeDataImportTaskInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDataImportTaskInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.failPageNumber)) {
            query["FailPageNumber"] = request.failPageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.failPageSize)) {
            query["FailPageSize"] = request.failPageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.successPageNumber)) {
            query["SuccessPageNumber"] = request.successPageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.successPageSize)) {
            query["SuccessPageSize"] = request.successPageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDataImportTaskInfo",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDataImportTaskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataImportTaskInfo(_ request: DescribeDataImportTaskInfoRequest) async throws -> DescribeDataImportTaskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDataImportTaskInfoWithOptions(request as! DescribeDataImportTaskInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDbListWithOptions(_ request: DescribeDbListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDbListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBName)) {
            query["DBName"] = request.DBName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDbList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDbListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDbList(_ request: DescribeDbListRequest) async throws -> DescribeDbListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDbListWithOptions(request as! DescribeDbListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDistributeTableListWithOptions(_ request: DescribeDistributeTableListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDistributeTableListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDistributeTableList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDistributeTableListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDistributeTableList(_ request: DescribeDistributeTableListRequest) async throws -> DescribeDistributeTableListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDistributeTableListWithOptions(request as! DescribeDistributeTableListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnabledCrossRegionsWithOptions(_ request: DescribeEnabledCrossRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnabledCrossRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnabledCrossRegions",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnabledCrossRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnabledCrossRegions(_ request: DescribeEnabledCrossRegionsRequest) async throws -> DescribeEnabledCrossRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnabledCrossRegionsWithOptions(request as! DescribeEnabledCrossRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEvaluateAndImportTaskWithOptions(_ request: DescribeEvaluateAndImportTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEvaluateAndImportTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEvaluateAndImportTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEvaluateAndImportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEvaluateAndImportTask(_ request: DescribeEvaluateAndImportTaskRequest) async throws -> DescribeEvaluateAndImportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEvaluateAndImportTaskWithOptions(request as! DescribeEvaluateAndImportTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEvaluateAndImportTasksWithOptions(_ request: DescribeEvaluateAndImportTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEvaluateAndImportTasksResponse {
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEvaluateAndImportTasks",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEvaluateAndImportTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEvaluateAndImportTasks(_ request: DescribeEvaluateAndImportTasksRequest) async throws -> DescribeEvaluateAndImportTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEvaluateAndImportTasksWithOptions(request as! DescribeEvaluateAndImportTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEventsWithOptions(_ request: DescribeEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEvents",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEvents(_ request: DescribeEventsRequest) async throws -> DescribeEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEventsWithOptions(request as! DescribeEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGdnInstancesWithOptions(_ request: DescribeGdnInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGdnInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterType)) {
            query["FilterType"] = request.filterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterValue)) {
            query["FilterValue"] = request.filterValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.GDNId)) {
            query["GDNId"] = request.GDNId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGdnInstances",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGdnInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGdnInstances(_ request: DescribeGdnInstancesRequest) async throws -> DescribeGdnInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGdnInstancesWithOptions(request as! DescribeGdnInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOpenBackupSetWithOptions(_ request: DescribeOpenBackupSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOpenBackupSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreTime)) {
            query["RestoreTime"] = request.restoreTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOpenBackupSet",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOpenBackupSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOpenBackupSet(_ request: DescribeOpenBackupSetRequest) async throws -> DescribeOpenBackupSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOpenBackupSetWithOptions(request as! DescribeOpenBackupSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeParameterGroupsWithOptions(_ request: DescribeParameterGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeParameterGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeParameterGroups",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeParameterGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeParameterGroups(_ request: DescribeParameterGroupsRequest) async throws -> DescribeParameterGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeParameterGroupsWithOptions(request as! DescribeParameterGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeParameterTemplatesWithOptions(_ request: DescribeParameterTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeParameterTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engineVersion)) {
            query["EngineVersion"] = request.engineVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramLevel)) {
            query["ParamLevel"] = request.paramLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeParameterTemplates",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeParameterTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeParameterTemplates(_ request: DescribeParameterTemplatesRequest) async throws -> DescribeParameterTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeParameterTemplatesWithOptions(request as! DescribeParameterTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeParametersWithOptions(_ request: DescribeParametersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeParametersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramLevel)) {
            query["ParamLevel"] = request.paramLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeParameters",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeParametersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeParameters(_ request: DescribeParametersRequest) async throws -> DescribeParametersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeParametersWithOptions(request as! DescribeParametersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolarxDataNodesWithOptions(_ request: DescribePolarxDataNodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePolarxDataNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeType)) {
            query["NodeType"] = request.nodeType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.searchKey)) {
            query["SearchKey"] = request.searchKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePolarxDataNodes",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePolarxDataNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolarxDataNodes(_ request: DescribePolarxDataNodesRequest) async throws -> DescribePolarxDataNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePolarxDataNodesWithOptions(request as! DescribePolarxDataNodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRdsVpcsWithOptions(_ request: DescribeRdsVpcsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRdsVpcsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRdsVpcs",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRdsVpcsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRdsVpcs(_ request: DescribeRdsVpcsRequest) async throws -> DescribeRdsVpcsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRdsVpcsWithOptions(request as! DescribeRdsVpcsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRdsVswitchesWithOptions(_ request: DescribeRdsVswitchesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRdsVswitchesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRdsVswitches",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRdsVswitchesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRdsVswitches(_ request: DescribeRdsVswitchesRequest) async throws -> DescribeRdsVswitchesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRdsVswitchesWithOptions(request as! DescribeRdsVswitchesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2020-02-02",
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
    public func describeRegions() async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRplInspectionTaskWithOptions(_ request: DescribeRplInspectionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRplInspectionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.failPageNumber)) {
            query["FailPageNumber"] = request.failPageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.failPageSize)) {
            query["FailPageSize"] = request.failPageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.successPageNumber)) {
            query["SuccessPageNumber"] = request.successPageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.successPageSize)) {
            query["SuccessPageSize"] = request.successPageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRplInspectionTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRplInspectionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRplInspectionTask(_ request: DescribeRplInspectionTaskRequest) async throws -> DescribeRplInspectionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRplInspectionTaskWithOptions(request as! DescribeRplInspectionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScaleOutMigrateTaskListWithOptions(_ request: DescribeScaleOutMigrateTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScaleOutMigrateTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScaleOutMigrateTaskList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScaleOutMigrateTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScaleOutMigrateTaskList(_ request: DescribeScaleOutMigrateTaskListRequest) async throws -> DescribeScaleOutMigrateTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScaleOutMigrateTaskListWithOptions(request as! DescribeScaleOutMigrateTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityIpsWithOptions(_ request: DescribeSecurityIpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityIpsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityIps",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityIpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityIps(_ request: DescribeSecurityIpsRequest) async throws -> DescribeSecurityIpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityIpsWithOptions(request as! DescribeSecurityIpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeShowStorageInfoWithOptions(_ request: DescribeShowStorageInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeShowStorageInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeShowStorageInfo",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeShowStorageInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeShowStorageInfo(_ request: DescribeShowStorageInfoRequest) async throws -> DescribeShowStorageInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeShowStorageInfoWithOptions(request as! DescribeShowStorageInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowLogRecordsWithOptions(_ request: DescribeSlowLogRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSlowLogRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.characterType)) {
            query["CharacterType"] = request.characterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBName)) {
            query["DBName"] = request.DBName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBNodeIds)) {
            query["DBNodeIds"] = request.DBNodeIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSlowLogRecords",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSlowLogRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowLogRecords(_ request: DescribeSlowLogRecordsRequest) async throws -> DescribeSlowLogRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSlowLogRecordsWithOptions(request as! DescribeSlowLogRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSqlAuditInfoWithOptions(_ request: DescribeSqlAuditInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSqlAuditInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auditAccountName)) {
            query["AuditAccountName"] = request.auditAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.auditAccountPassword)) {
            query["AuditAccountPassword"] = request.auditAccountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSqlAuditInfo",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSqlAuditInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSqlAuditInfo(_ request: DescribeSqlAuditInfoRequest) async throws -> DescribeSqlAuditInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSqlAuditInfoWithOptions(request as! DescribeSqlAuditInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSqlFlashbackTaskListWithOptions(_ request: DescribeSqlFlashbackTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSqlFlashbackTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.polardbxInstanceId)) {
            query["PolardbxInstanceId"] = request.polardbxInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSqlFlashbackTaskList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSqlFlashbackTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSqlFlashbackTaskList(_ request: DescribeSqlFlashbackTaskListRequest) async throws -> DescribeSqlFlashbackTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSqlFlashbackTaskListWithOptions(request as! DescribeSqlFlashbackTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStoragePoolInfoWithOptions(_ request: DescribeStoragePoolInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStoragePoolInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStoragePoolInfo",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeStoragePoolInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStoragePoolInfo(_ request: DescribeStoragePoolInfoRequest) async throws -> DescribeStoragePoolInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeStoragePoolInfoWithOptions(request as! DescribeStoragePoolInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStructureImportTaskInfoWithOptions(_ request: DescribeStructureImportTaskInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStructureImportTaskInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStructureImportTaskInfo",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeStructureImportTaskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStructureImportTaskInfo(_ request: DescribeStructureImportTaskInfoRequest) async throws -> DescribeStructureImportTaskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeStructureImportTaskInfoWithOptions(request as! DescribeStructureImportTaskInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTagsWithOptions(_ request: DescribeTagsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTags",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTags(_ request: DescribeTagsRequest) async throws -> DescribeTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTagsWithOptions(request as! DescribeTagsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTasksWithOptions(_ request: DescribeTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTasks",
            "version": "2020-02-02",
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
    public func describeTransformStatusWithOptions(_ request: DescribeTransformStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTransformStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryReport)) {
            query["QueryReport"] = request.queryReport!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTransformStatus",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTransformStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTransformStatus(_ request: DescribeTransformStatusRequest) async throws -> DescribeTransformStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTransformStatusWithOptions(request as! DescribeTransformStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserEncryptionKeyListWithOptions(_ request: DescribeUserEncryptionKeyListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserEncryptionKeyListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserEncryptionKeyList",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserEncryptionKeyListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserEncryptionKeyList(_ request: DescribeUserEncryptionKeyListRequest) async throws -> DescribeUserEncryptionKeyListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserEncryptionKeyListWithOptions(request as! DescribeUserEncryptionKeyListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableRightsSeparationWithOptions(_ request: DisableRightsSeparationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableRightsSeparationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbaAccountName)) {
            query["DbaAccountName"] = request.dbaAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbaAccountPassword)) {
            query["DbaAccountPassword"] = request.dbaAccountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableRightsSeparation",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableRightsSeparationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableRightsSeparation(_ request: DisableRightsSeparationRequest) async throws -> DisableRightsSeparationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableRightsSeparationWithOptions(request as! DisableRightsSeparationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSqlAuditWithOptions(_ request: DisableSqlAuditRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableSqlAuditResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auditAccountName)) {
            query["AuditAccountName"] = request.auditAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.auditAccountPassword)) {
            query["AuditAccountPassword"] = request.auditAccountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableSqlAudit",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableSqlAuditResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSqlAudit(_ request: DisableSqlAuditRequest) async throws -> DisableSqlAuditResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableSqlAuditWithOptions(request as! DisableSqlAuditRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableRightsSeparationWithOptions(_ request: EnableRightsSeparationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableRightsSeparationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auditAccountDescription)) {
            query["AuditAccountDescription"] = request.auditAccountDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.auditAccountName)) {
            query["AuditAccountName"] = request.auditAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.auditAccountPassword)) {
            query["AuditAccountPassword"] = request.auditAccountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountDescription)) {
            query["SecurityAccountDescription"] = request.securityAccountDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountName)) {
            query["SecurityAccountName"] = request.securityAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountPassword)) {
            query["SecurityAccountPassword"] = request.securityAccountPassword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableRightsSeparation",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableRightsSeparationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableRightsSeparation(_ request: EnableRightsSeparationRequest) async throws -> EnableRightsSeparationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableRightsSeparationWithOptions(request as! EnableRightsSeparationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSqlAuditWithOptions(_ request: EnableSqlAuditRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableSqlAuditResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auditAccountName)) {
            query["AuditAccountName"] = request.auditAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.auditAccountPassword)) {
            query["AuditAccountPassword"] = request.auditAccountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireAfterDays)) {
            query["ExpireAfterDays"] = request.expireAfterDays!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableSqlAudit",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableSqlAuditResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSqlAudit(_ request: EnableSqlAuditRequest) async throws -> EnableSqlAuditResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableSqlAuditWithOptions(request as! EnableSqlAuditRequest, runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2020-02-02",
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
    public func migrateDBInstanceWithOptions(_ request: MigrateDBInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MigrateDBInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryZoneId)) {
            query["PrimaryZoneId"] = request.primaryZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryZoneId)) {
            query["SecondaryZoneId"] = request.secondaryZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchMode)) {
            query["SwitchMode"] = request.switchMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tertiaryZoneId)) {
            query["TertiaryZoneId"] = request.tertiaryZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topologyType)) {
            query["TopologyType"] = request.topologyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswitchId)) {
            query["VswitchId"] = request.vswitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MigrateDBInstance",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MigrateDBInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func migrateDBInstance(_ request: MigrateDBInstanceRequest) async throws -> MigrateDBInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await migrateDBInstanceWithOptions(request as! MigrateDBInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountDescriptionWithOptions(_ request: ModifyAccountDescriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAccountDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountDescription)) {
            query["AccountDescription"] = request.accountDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAccountDescription",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAccountDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountDescription(_ request: ModifyAccountDescriptionRequest) async throws -> ModifyAccountDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAccountDescriptionWithOptions(request as! ModifyAccountDescriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountPrivilegeWithOptions(_ request: ModifyAccountPrivilegeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAccountPrivilegeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountPrivilege)) {
            query["AccountPrivilege"] = request.accountPrivilege ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountName)) {
            query["SecurityAccountName"] = request.securityAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountPassword)) {
            query["SecurityAccountPassword"] = request.securityAccountPassword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAccountPrivilege",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAccountPrivilegeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountPrivilege(_ request: ModifyAccountPrivilegeRequest) async throws -> ModifyAccountPrivilegeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAccountPrivilegeWithOptions(request as! ModifyAccountPrivilegeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyActiveOperationMaintainConfWithOptions(_ request: ModifyActiveOperationMaintainConfRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyActiveOperationMaintainConfResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyActiveOperationMaintainConf",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyActiveOperationMaintainConfResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyActiveOperationMaintainConf(_ request: ModifyActiveOperationMaintainConfRequest) async throws -> ModifyActiveOperationMaintainConfResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyActiveOperationMaintainConfWithOptions(request as! ModifyActiveOperationMaintainConfRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyActiveOperationTasksWithOptions(_ request: ModifyActiveOperationTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyActiveOperationTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ids)) {
            query["Ids"] = request.ids ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.immediateStart)) {
            query["ImmediateStart"] = request.immediateStart!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchTime)) {
            query["SwitchTime"] = request.switchTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyActiveOperationTasks",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyActiveOperationTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyActiveOperationTasks(_ request: ModifyActiveOperationTasksRequest) async throws -> ModifyActiveOperationTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyActiveOperationTasksWithOptions(request as! ModifyActiveOperationTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCdcClassWithOptions(_ request: ModifyCdcClassRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCdcClassResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.CDCNodeCount)) {
            query["CDCNodeCount"] = request.CDCNodeCount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cdcClass)) {
            query["CdcClass"] = request.cdcClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchMode)) {
            query["SwitchMode"] = request.switchMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCdcClass",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCdcClassResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCdcClass(_ request: ModifyCdcClassRequest) async throws -> ModifyCdcClassResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCdcClassWithOptions(request as! ModifyCdcClassRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyColumnarClassWithOptions(_ request: ModifyColumnarClassRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyColumnarClassResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnarClass)) {
            query["ColumnarClass"] = request.columnarClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnarNodeCount)) {
            query["ColumnarNodeCount"] = request.columnarNodeCount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchMode)) {
            query["SwitchMode"] = request.switchMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyColumnarClass",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyColumnarClassResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyColumnarClass(_ request: ModifyColumnarClassRequest) async throws -> ModifyColumnarClassResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyColumnarClassWithOptions(request as! ModifyColumnarClassRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCustomEndpointWithOptions(_ request: ModifyCustomEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCustomEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customEndpointId)) {
            query["CustomEndpointId"] = request.customEndpointId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeAutoEnter)) {
            query["NodeAutoEnter"] = request.nodeAutoEnter!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeIds)) {
            query["NodeIds"] = request.nodeIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeRole)) {
            query["NodeRole"] = request.nodeRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCustomEndpoint",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCustomEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCustomEndpoint(_ request: ModifyCustomEndpointRequest) async throws -> ModifyCustomEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCustomEndpointWithOptions(request as! ModifyCustomEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCustomEndpointNetWithOptions(_ request: ModifyCustomEndpointNetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCustomEndpointNetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connPrefix)) {
            query["ConnPrefix"] = request.connPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customEndpointId)) {
            query["CustomEndpointId"] = request.customEndpointId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCustomEndpointNet",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCustomEndpointNetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCustomEndpointNet(_ request: ModifyCustomEndpointNetRequest) async throws -> ModifyCustomEndpointNetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCustomEndpointNetWithOptions(request as! ModifyCustomEndpointNetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceClassWithOptions(_ request: ModifyDBInstanceClassRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBInstanceClassResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cnClass)) {
            query["CnClass"] = request.cnClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dnClass)) {
            query["DnClass"] = request.dnClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dnStorageSpace)) {
            query["DnStorageSpace"] = request.dnStorageSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specifiedDNScale)) {
            query["SpecifiedDNScale"] = request.specifiedDNScale!;
        }
        if (!TeaUtils.Client.isUnset(request.specifiedDNSpecMapJson)) {
            query["SpecifiedDNSpecMapJson"] = request.specifiedDNSpecMapJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchTime)) {
            query["SwitchTime"] = request.switchTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchTimeMode)) {
            query["SwitchTimeMode"] = request.switchTimeMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDBInstanceClass)) {
            query["TargetDBInstanceClass"] = request.targetDBInstanceClass ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBInstanceClass",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBInstanceClassResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceClass(_ request: ModifyDBInstanceClassRequest) async throws -> ModifyDBInstanceClassResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBInstanceClassWithOptions(request as! ModifyDBInstanceClassRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceConfigWithOptions(_ request: ModifyDBInstanceConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configName)) {
            query["ConfigName"] = request.configName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configValue)) {
            query["ConfigValue"] = request.configValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBInstanceConfig",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceConfig(_ request: ModifyDBInstanceConfigRequest) async throws -> ModifyDBInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBInstanceConfigWithOptions(request as! ModifyDBInstanceConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceConnectionStringWithOptions(_ request: ModifyDBInstanceConnectionStringRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBInstanceConnectionStringResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionString)) {
            query["ConnectionString"] = request.connectionString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newPort)) {
            query["NewPort"] = request.newPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newPrefix)) {
            query["NewPrefix"] = request.newPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBInstanceConnectionString",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBInstanceConnectionStringResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceConnectionString(_ request: ModifyDBInstanceConnectionStringRequest) async throws -> ModifyDBInstanceConnectionStringResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBInstanceConnectionStringWithOptions(request as! ModifyDBInstanceConnectionStringRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceDescriptionWithOptions(_ request: ModifyDBInstanceDescriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBInstanceDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceDescription)) {
            query["DBInstanceDescription"] = request.DBInstanceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBInstanceDescription",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBInstanceDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceDescription(_ request: ModifyDBInstanceDescriptionRequest) async throws -> ModifyDBInstanceDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBInstanceDescriptionWithOptions(request as! ModifyDBInstanceDescriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceMaintainTimeWithOptions(_ request: ModifyDBInstanceMaintainTimeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBInstanceMaintainTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maintainTime)) {
            query["MaintainTime"] = request.maintainTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBInstanceMaintainTime",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBInstanceMaintainTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceMaintainTime(_ request: ModifyDBInstanceMaintainTimeRequest) async throws -> ModifyDBInstanceMaintainTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBInstanceMaintainTimeWithOptions(request as! ModifyDBInstanceMaintainTimeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceVipWithOptions(_ request: ModifyDBInstanceVipRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBInstanceVipResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBInstanceVip",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBInstanceVipResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceVip(_ request: ModifyDBInstanceVipRequest) async throws -> ModifyDBInstanceVipResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBInstanceVipWithOptions(request as! ModifyDBInstanceVipRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatabaseDescriptionWithOptions(_ request: ModifyDatabaseDescriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDatabaseDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbDescription)) {
            query["DbDescription"] = request.dbDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDatabaseDescription",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDatabaseDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatabaseDescription(_ request: ModifyDatabaseDescriptionRequest) async throws -> ModifyDatabaseDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDatabaseDescriptionWithOptions(request as! ModifyDatabaseDescriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEngineMigrationWithOptions(_ request: ModifyEngineMigrationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyEngineMigrationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionStrings)) {
            query["ConnectionStrings"] = request.connectionStrings ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newMasterDBInstanceName)) {
            query["NewMasterDBInstanceName"] = request.newMasterDBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDBInstanceName)) {
            query["SourceDBInstanceName"] = request.sourceDBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.swapConnectionString)) {
            query["SwapConnectionString"] = request.swapConnectionString ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyEngineMigration",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyEngineMigrationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEngineMigration(_ request: ModifyEngineMigrationRequest) async throws -> ModifyEngineMigrationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyEngineMigrationWithOptions(request as! ModifyEngineMigrationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyParameterWithOptions(_ request: ModifyParameterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyParameterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramLevel)) {
            query["ParamLevel"] = request.paramLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameterGroupId)) {
            query["ParameterGroupId"] = request.parameterGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyParameter",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyParameterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyParameter(_ request: ModifyParameterRequest) async throws -> ModifyParameterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyParameterWithOptions(request as! ModifyParameterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecurityIpsWithOptions(_ request: ModifySecurityIpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySecurityIpsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyMode)) {
            query["ModifyMode"] = request.modifyMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityIPList)) {
            query["SecurityIPList"] = request.securityIPList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySecurityIps",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySecurityIpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecurityIps(_ request: ModifySecurityIpsRequest) async throws -> ModifySecurityIpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySecurityIpsWithOptions(request as! ModifySecurityIpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func preCheckSqlFlashbackTaskWithOptions(_ request: PreCheckSqlFlashbackTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PreCheckSqlFlashbackTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.polardbxInstanceId)) {
            query["PolardbxInstanceId"] = request.polardbxInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PreCheckSqlFlashbackTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PreCheckSqlFlashbackTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func preCheckSqlFlashbackTask(_ request: PreCheckSqlFlashbackTaskRequest) async throws -> PreCheckSqlFlashbackTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await preCheckSqlFlashbackTaskWithOptions(request as! PreCheckSqlFlashbackTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshImportMetaWithOptions(_ request: RefreshImportMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshImportMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshImportMeta",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshImportMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshImportMeta(_ request: RefreshImportMetaRequest) async throws -> RefreshImportMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refreshImportMetaWithOptions(request as! RefreshImportMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseColdDataVolumeWithOptions(_ request: ReleaseColdDataVolumeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseColdDataVolumeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseColdDataVolume",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseColdDataVolumeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseColdDataVolume(_ request: ReleaseColdDataVolumeRequest) async throws -> ReleaseColdDataVolumeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseColdDataVolumeWithOptions(request as! ReleaseColdDataVolumeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstancePublicConnectionWithOptions(_ request: ReleaseInstancePublicConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseInstancePublicConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentConnectionString)) {
            query["CurrentConnectionString"] = request.currentConnectionString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseInstancePublicConnection",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseInstancePublicConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstancePublicConnection(_ request: ReleaseInstancePublicConnectionRequest) async throws -> ReleaseInstancePublicConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseInstancePublicConnectionWithOptions(request as! ReleaseInstancePublicConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAccountPasswordWithOptions(_ request: ResetAccountPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetAccountPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountPassword)) {
            query["AccountPassword"] = request.accountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountName)) {
            query["SecurityAccountName"] = request.securityAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountPassword)) {
            query["SecurityAccountPassword"] = request.securityAccountPassword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetAccountPassword",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetAccountPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAccountPassword(_ request: ResetAccountPasswordRequest) async throws -> ResetAccountPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetAccountPasswordWithOptions(request as! ResetAccountPasswordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAccountPasswordRestrictWithOptions(_ request: ResetAccountPasswordRestrictRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetAccountPasswordRestrictResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountPassword)) {
            query["AccountPassword"] = request.accountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountName)) {
            query["SecurityAccountName"] = request.securityAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityAccountPassword)) {
            query["SecurityAccountPassword"] = request.securityAccountPassword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetAccountPasswordRestrict",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetAccountPasswordRestrictResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAccountPasswordRestrict(_ request: ResetAccountPasswordRestrictRequest) async throws -> ResetAccountPasswordRestrictResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetAccountPasswordRestrictWithOptions(request as! ResetAccountPasswordRestrictRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartDBInstanceWithOptions(_ request: RestartDBInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartDBInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartDBInstance",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartDBInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartDBInstance(_ request: RestartDBInstanceRequest) async throws -> RestartDBInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await restartDBInstanceWithOptions(request as! RestartDBInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartDataImportTaskWithOptions(_ request: RestartDataImportTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartDataImportTaskResponse {
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
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartDataImportTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartDataImportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartDataImportTask(_ request: RestartDataImportTaskRequest) async throws -> RestartDataImportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await restartDataImportTaskWithOptions(request as! RestartDataImportTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipCurrentStepWithOptions(_ request: SkipCurrentStepRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SkipCurrentStepResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentStep)) {
            query["CurrentStep"] = request.currentStep ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SkipCurrentStep",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SkipCurrentStepResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipCurrentStep(_ request: SkipCurrentStepRequest) async throws -> SkipCurrentStepResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await skipCurrentStepWithOptions(request as! SkipCurrentStepRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSwitchDatabaseWithOptions(_ request: StartSwitchDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSwitchDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstMainConnectString)) {
            query["DstMainConnectString"] = request.dstMainConnectString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstMainPort)) {
            query["DstMainPort"] = request.dstMainPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isModifyEndpoint)) {
            query["IsModifyEndpoint"] = request.isModifyEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcMainConnectString)) {
            query["SrcMainConnectString"] = request.srcMainConnectString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcMainPort)) {
            query["SrcMainPort"] = request.srcMainPort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartSwitchDatabase",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSwitchDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSwitchDatabase(_ request: StartSwitchDatabaseRequest) async throws -> StartSwitchDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startSwitchDatabaseWithOptions(request as! StartSwitchDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDataImportTaskWithOptions(_ request: StopDataImportTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopDataImportTaskResponse {
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
        if (!TeaUtils.Client.isUnset(request.slinkTaskId)) {
            query["SlinkTaskId"] = request.slinkTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopDataImportTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopDataImportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDataImportTask(_ request: StopDataImportTaskRequest) async throws -> StopDataImportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopDataImportTaskWithOptions(request as! StopDataImportTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSqlFlashbackTaskWithOptions(_ request: SubmitSqlFlashbackTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSqlFlashbackTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.polardbxInstanceId)) {
            query["PolardbxInstanceId"] = request.polardbxInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recallRestoreType)) {
            query["RecallRestoreType"] = request.recallRestoreType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recallType)) {
            query["RecallType"] = request.recallType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sqlPk)) {
            query["SqlPk"] = request.sqlPk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sqlType)) {
            query["SqlType"] = request.sqlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceId)) {
            query["TraceId"] = request.traceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSqlFlashbackTask",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitSqlFlashbackTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSqlFlashbackTask(_ request: SubmitSqlFlashbackTaskRequest) async throws -> SubmitSqlFlashbackTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitSqlFlashbackTaskWithOptions(request as! SubmitSqlFlashbackTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchDBInstanceHAWithOptions(_ request: SwitchDBInstanceHARequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchDBInstanceHAResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchTime)) {
            query["SwitchTime"] = request.switchTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchTimeMode)) {
            query["SwitchTimeMode"] = request.switchTimeMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPrimaryAzoneId)) {
            query["TargetPrimaryAzoneId"] = request.targetPrimaryAzoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPrimaryRegionId)) {
            query["TargetPrimaryRegionId"] = request.targetPrimaryRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchDBInstanceHA",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchDBInstanceHAResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchDBInstanceHA(_ request: SwitchDBInstanceHARequest) async throws -> SwitchDBInstanceHAResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchDBInstanceHAWithOptions(request as! SwitchDBInstanceHARequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchGdnMemberRoleWithOptions(_ request: SwitchGdnMemberRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchGdnMemberRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchMode)) {
            query["SwitchMode"] = request.switchMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskTimeout)) {
            query["TaskTimeout"] = request.taskTimeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchGdnMemberRole",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchGdnMemberRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchGdnMemberRole(_ request: SwitchGdnMemberRoleRequest) async throws -> SwitchGdnMemberRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchGdnMemberRoleWithOptions(request as! SwitchGdnMemberRoleRequest, runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2020-02-02",
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
            "version": "2020-02-02",
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
    public func updateBackupPolicyWithOptions(_ request: UpdateBackupPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPeriod)) {
            query["BackupPeriod"] = request.backupPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanBegin)) {
            query["BackupPlanBegin"] = request.backupPlanBegin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetRetention)) {
            query["BackupSetRetention"] = request.backupSetRetention!;
        }
        if (!TeaUtils.Client.isUnset(request.backupType)) {
            query["BackupType"] = request.backupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupWay)) {
            query["BackupWay"] = request.backupWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.coldDataBackupInterval)) {
            query["ColdDataBackupInterval"] = request.coldDataBackupInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.coldDataBackupRetention)) {
            query["ColdDataBackupRetention"] = request.coldDataBackupRetention!;
        }
        if (!TeaUtils.Client.isUnset(request.crossRegionDataBackupRetention)) {
            query["CrossRegionDataBackupRetention"] = request.crossRegionDataBackupRetention!;
        }
        if (!TeaUtils.Client.isUnset(request.crossRegionLogBackupRetention)) {
            query["CrossRegionLogBackupRetention"] = request.crossRegionLogBackupRetention!;
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destCrossRegion)) {
            query["DestCrossRegion"] = request.destCrossRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceCleanOnHighSpaceUsage)) {
            query["ForceCleanOnHighSpaceUsage"] = request.forceCleanOnHighSpaceUsage!;
        }
        if (!TeaUtils.Client.isUnset(request.isCrossRegionDataBackupEnabled)) {
            query["IsCrossRegionDataBackupEnabled"] = request.isCrossRegionDataBackupEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.isCrossRegionLogBackupEnabled)) {
            query["IsCrossRegionLogBackupEnabled"] = request.isCrossRegionLogBackupEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.isEnabled)) {
            query["IsEnabled"] = request.isEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.localLogRetention)) {
            query["LocalLogRetention"] = request.localLogRetention!;
        }
        if (!TeaUtils.Client.isUnset(request.localLogRetentionNumber)) {
            query["LocalLogRetentionNumber"] = request.localLogRetentionNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.logLocalRetentionSpace)) {
            query["LogLocalRetentionSpace"] = request.logLocalRetentionSpace!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.removeLogRetention)) {
            query["RemoveLogRetention"] = request.removeLogRetention!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBackupPolicy",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBackupPolicy(_ request: UpdateBackupPolicyRequest) async throws -> UpdateBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateBackupPolicyWithOptions(request as! UpdateBackupPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDBInstanceSSLWithOptions(_ request: UpdateDBInstanceSSLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDBInstanceSSLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certCommonName)) {
            query["CertCommonName"] = request.certCommonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSSL)) {
            query["EnableSSL"] = request.enableSSL!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDBInstanceSSL",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDBInstanceSSLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDBInstanceSSL(_ request: UpdateDBInstanceSSLRequest) async throws -> UpdateDBInstanceSSLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDBInstanceSSLWithOptions(request as! UpdateDBInstanceSSLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDBInstanceTDEWithOptions(_ request: UpdateDBInstanceTDERequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDBInstanceTDEResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptionKey)) {
            query["EncryptionKey"] = request.encryptionKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleArn)) {
            query["RoleArn"] = request.roleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.TDEStatus)) {
            query["TDEStatus"] = request.TDEStatus!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDBInstanceTDE",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDBInstanceTDEResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDBInstanceTDE(_ request: UpdateDBInstanceTDERequest) async throws -> UpdateDBInstanceTDEResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDBInstanceTDEWithOptions(request as! UpdateDBInstanceTDERequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePolarDBXInstanceNodeWithOptions(_ request: UpdatePolarDBXInstanceNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePolarDBXInstanceNodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addDNSpec)) {
            query["AddDNSpec"] = request.addDNSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.CNNodeCount)) {
            query["CNNodeCount"] = request.CNNodeCount!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DNNodeCount)) {
            query["DNNodeCount"] = request.DNNodeCount!;
        }
        if (!TeaUtils.Client.isUnset(request.dbInstanceNodeCount)) {
            query["DbInstanceNodeCount"] = request.dbInstanceNodeCount!;
        }
        if (!TeaUtils.Client.isUnset(request.deleteDNIds)) {
            query["DeleteDNIds"] = request.deleteDNIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storagePoolName)) {
            query["StoragePoolName"] = request.storagePoolName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePolarDBXInstanceNode",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePolarDBXInstanceNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePolarDBXInstanceNode(_ request: UpdatePolarDBXInstanceNodeRequest) async throws -> UpdatePolarDBXInstanceNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePolarDBXInstanceNodeWithOptions(request as! UpdatePolarDBXInstanceNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeCDCVersionWithOptions(_ request: UpgradeCDCVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeCDCVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cdcDbVersion)) {
            query["CdcDbVersion"] = request.cdcDbVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cdcMinorVersion)) {
            query["CdcMinorVersion"] = request.cdcMinorVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchMode)) {
            query["SwitchMode"] = request.switchMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeCDCVersion",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeCDCVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeCDCVersion(_ request: UpgradeCDCVersionRequest) async throws -> UpgradeCDCVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeCDCVersionWithOptions(request as! UpgradeCDCVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeColumnarVersionWithOptions(_ request: UpgradeColumnarVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeColumnarVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnarVersion)) {
            query["ColumnarVersion"] = request.columnarVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchMode)) {
            query["SwitchMode"] = request.switchMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeColumnarVersion",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeColumnarVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeColumnarVersion(_ request: UpgradeColumnarVersionRequest) async throws -> UpgradeColumnarVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeColumnarVersionWithOptions(request as! UpgradeColumnarVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeDBInstanceKernelVersionWithOptions(_ request: UpgradeDBInstanceKernelVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeDBInstanceKernelVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceName)) {
            query["DBInstanceName"] = request.DBInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minorVersion)) {
            query["MinorVersion"] = request.minorVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchMode)) {
            query["SwitchMode"] = request.switchMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeDBInstanceKernelVersion",
            "version": "2020-02-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeDBInstanceKernelVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeDBInstanceKernelVersion(_ request: UpgradeDBInstanceKernelVersionRequest) async throws -> UpgradeDBInstanceKernelVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeDBInstanceKernelVersionWithOptions(request as! UpgradeDBInstanceKernelVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
