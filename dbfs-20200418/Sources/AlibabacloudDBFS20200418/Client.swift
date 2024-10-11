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
            "ap-northeast-2-pop": "dbfs.aliyuncs.com",
            "cn-beijing-finance-1": "dbfs.aliyuncs.com",
            "cn-beijing-finance-pop": "dbfs.aliyuncs.com",
            "cn-beijing-gov-1": "dbfs.aliyuncs.com",
            "cn-beijing-nu16-b01": "dbfs.aliyuncs.com",
            "cn-edge-1": "dbfs.aliyuncs.com",
            "cn-fujian": "dbfs.aliyuncs.com",
            "cn-haidian-cm12-c01": "dbfs.aliyuncs.com",
            "cn-hangzhou-bj-b01": "dbfs.aliyuncs.com",
            "cn-hangzhou-finance": "dbfs.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "dbfs.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "dbfs.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "dbfs.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "dbfs.aliyuncs.com",
            "cn-hangzhou-test-306": "dbfs.aliyuncs.com",
            "cn-hongkong-finance-pop": "dbfs.aliyuncs.com",
            "cn-huhehaote-nebula-1": "dbfs.aliyuncs.com",
            "cn-north-2-gov-1": "dbfs.aliyuncs.com",
            "cn-qingdao-nebula": "dbfs.aliyuncs.com",
            "cn-shanghai-et15-b01": "dbfs.aliyuncs.com",
            "cn-shanghai-et2-b01": "dbfs.aliyuncs.com",
            "cn-shanghai-finance-1": "dbfs.aliyuncs.com",
            "cn-shanghai-inner": "dbfs.aliyuncs.com",
            "cn-shanghai-internal-test-1": "dbfs.aliyuncs.com",
            "cn-shenzhen-finance-1": "dbfs.aliyuncs.com",
            "cn-shenzhen-inner": "dbfs.aliyuncs.com",
            "cn-shenzhen-st4-d01": "dbfs.aliyuncs.com",
            "cn-shenzhen-su18-b01": "dbfs.aliyuncs.com",
            "cn-wuhan": "dbfs.aliyuncs.com",
            "cn-wulanchabu": "dbfs.aliyuncs.com",
            "cn-yushanfang": "dbfs.aliyuncs.com",
            "cn-zhangbei": "dbfs.aliyuncs.com",
            "cn-zhangbei-na61-b01": "dbfs.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "dbfs.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "dbfs.aliyuncs.com",
            "eu-west-1-oxs": "dbfs.aliyuncs.com",
            "rus-west-1-pop": "dbfs.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("dbfs", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addTagsBatchWithOptions(_ request: AddTagsBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTagsBatchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbfsList)) {
            query["DbfsList"] = request.dbfsList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddTagsBatch",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddTagsBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTagsBatch(_ request: AddTagsBatchRequest) async throws -> AddTagsBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addTagsBatchWithOptions(request as! AddTagsBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAutoSnapshotPolicyWithOptions(_ tmpReq: ApplyAutoSnapshotPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyAutoSnapshotPolicyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyAutoSnapshotPolicyShrinkRequest = ApplyAutoSnapshotPolicyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dbfsIds)) {
            request.dbfsIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dbfsIds, "DbfsIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbfsIdsShrink)) {
            query["DbfsIds"] = request.dbfsIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyAutoSnapshotPolicy",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyAutoSnapshotPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAutoSnapshotPolicy(_ request: ApplyAutoSnapshotPolicyRequest) async throws -> ApplyAutoSnapshotPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyAutoSnapshotPolicyWithOptions(request as! ApplyAutoSnapshotPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDbfsWithOptions(_ request: AttachDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachMode)) {
            query["AttachMode"] = request.attachMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attachPoint)) {
            query["AttachPoint"] = request.attachPoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ECSInstanceId)) {
            query["ECSInstanceId"] = request.ECSInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fsId)) {
            query["FsId"] = request.fsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverUrl)) {
            query["ServerUrl"] = request.serverUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDbfs(_ request: AttachDbfsRequest) async throws -> AttachDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachDbfsWithOptions(request as! AttachDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelAutoSnapshotPolicyWithOptions(_ tmpReq: CancelAutoSnapshotPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelAutoSnapshotPolicyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CancelAutoSnapshotPolicyShrinkRequest = CancelAutoSnapshotPolicyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dbfsIds)) {
            request.dbfsIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dbfsIds, "DbfsIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbfsIdsShrink)) {
            query["DbfsIds"] = request.dbfsIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelAutoSnapshotPolicy",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelAutoSnapshotPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelAutoSnapshotPolicy(_ request: CancelAutoSnapshotPolicyRequest) async throws -> CancelAutoSnapshotPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelAutoSnapshotPolicyWithOptions(request as! CancelAutoSnapshotPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutoSnapshotPolicyWithOptions(_ tmpReq: CreateAutoSnapshotPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAutoSnapshotPolicyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAutoSnapshotPolicyShrinkRequest = CreateAutoSnapshotPolicyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.repeatWeekdays)) {
            request.repeatWeekdaysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.repeatWeekdays, "RepeatWeekdays", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.timePoints)) {
            request.timePointsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.timePoints, "TimePoints", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["PolicyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repeatWeekdaysShrink)) {
            query["RepeatWeekdays"] = request.repeatWeekdaysShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retentionDays)) {
            query["RetentionDays"] = request.retentionDays!;
        }
        if (!TeaUtils.Client.isUnset(request.timePointsShrink)) {
            query["TimePoints"] = request.timePointsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAutoSnapshotPolicy",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAutoSnapshotPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutoSnapshotPolicy(_ request: CreateAutoSnapshotPolicyRequest) async throws -> CreateAutoSnapshotPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAutoSnapshotPolicyWithOptions(request as! CreateAutoSnapshotPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDbfsWithOptions(_ request: CreateDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.advancedFeatures)) {
            query["AdvancedFeatures"] = request.advancedFeatures ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deleteSnapshot)) {
            query["DeleteSnapshot"] = request.deleteSnapshot!;
        }
        if (!TeaUtils.Client.isUnset(request.enableRaid)) {
            query["EnableRaid"] = request.enableRaid!;
        }
        if (!TeaUtils.Client.isUnset(request.encryption)) {
            query["Encryption"] = request.encryption!;
        }
        if (!TeaUtils.Client.isUnset(request.fsName)) {
            query["FsName"] = request.fsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.KMSKeyId)) {
            query["KMSKeyId"] = request.KMSKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.performanceLevel)) {
            query["PerformanceLevel"] = request.performanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.raidStripeUnitNumber)) {
            query["RaidStripeUnitNumber"] = request.raidStripeUnitNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sizeG)) {
            query["SizeG"] = request.sizeG!;
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedScene)) {
            query["UsedScene"] = request.usedScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDbfs(_ request: CreateDbfsRequest) async throws -> CreateDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDbfsWithOptions(request as! CreateDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceLinkedRoleWithOptions(_ request: CreateServiceLinkedRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceLinkedRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "action": "CreateServiceLinkedRole",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceLinkedRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceLinkedRole(_ request: CreateServiceLinkedRoleRequest) async throws -> CreateServiceLinkedRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createServiceLinkedRoleWithOptions(request as! CreateServiceLinkedRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSnapshotWithOptions(_ request: CreateSnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fsId)) {
            query["FsId"] = request.fsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retentionDays)) {
            query["RetentionDays"] = request.retentionDays!;
        }
        if (!TeaUtils.Client.isUnset(request.snapshotName)) {
            query["SnapshotName"] = request.snapshotName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSnapshot",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSnapshot(_ request: CreateSnapshotRequest) async throws -> CreateSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSnapshotWithOptions(request as! CreateSnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAutoSnapshotPolicyWithOptions(_ request: DeleteAutoSnapshotPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAutoSnapshotPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAutoSnapshotPolicy",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAutoSnapshotPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAutoSnapshotPolicy(_ request: DeleteAutoSnapshotPolicyRequest) async throws -> DeleteAutoSnapshotPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAutoSnapshotPolicyWithOptions(request as! DeleteAutoSnapshotPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDbfsWithOptions(_ request: DeleteDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.fsId)) {
            query["FsId"] = request.fsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDbfs(_ request: DeleteDbfsRequest) async throws -> DeleteDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDbfsWithOptions(request as! DeleteDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnapshotWithOptions(_ request: DeleteSnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSnapshot",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnapshot(_ request: DeleteSnapshotRequest) async throws -> DeleteSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSnapshotWithOptions(request as! DeleteSnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTagsBatchWithOptions(_ request: DeleteTagsBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTagsBatchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbfsList)) {
            query["DbfsList"] = request.dbfsList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTagsBatch",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTagsBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTagsBatch(_ request: DeleteTagsBatchRequest) async throws -> DeleteTagsBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTagsBatchWithOptions(request as! DeleteTagsBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDbfsSpecificationsWithOptions(_ request: DescribeDbfsSpecificationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDbfsSpecificationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceType)) {
            query["EcsInstanceType"] = request.ecsInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDbfsSpecifications",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDbfsSpecificationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDbfsSpecifications(_ request: DescribeDbfsSpecificationsRequest) async throws -> DescribeDbfsSpecificationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDbfsSpecificationsWithOptions(request as! DescribeDbfsSpecificationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceTypesWithOptions(_ request: DescribeInstanceTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceTypes",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceTypes(_ request: DescribeInstanceTypesRequest) async throws -> DescribeInstanceTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceTypesWithOptions(request as! DescribeInstanceTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachDbfsWithOptions(_ request: DetachDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ECSInstanceId)) {
            query["ECSInstanceId"] = request.ECSInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fsId)) {
            query["FsId"] = request.fsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachDbfs(_ request: DetachDbfsRequest) async throws -> DetachDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachDbfsWithOptions(request as! DetachDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAutoSnapshotPolicyWithOptions(_ request: GetAutoSnapshotPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAutoSnapshotPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAutoSnapshotPolicy",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAutoSnapshotPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAutoSnapshotPolicy(_ request: GetAutoSnapshotPolicyRequest) async throws -> GetAutoSnapshotPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAutoSnapshotPolicyWithOptions(request as! GetAutoSnapshotPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDbfsWithOptions(_ request: GetDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fsId)) {
            query["FsId"] = request.fsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDbfs(_ request: GetDbfsRequest) async throws -> GetDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDbfsWithOptions(request as! GetDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceLinkedRoleWithOptions(_ request: GetServiceLinkedRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceLinkedRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceLinkedRole",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceLinkedRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceLinkedRole(_ request: GetServiceLinkedRoleRequest) async throws -> GetServiceLinkedRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getServiceLinkedRoleWithOptions(request as! GetServiceLinkedRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSnapshotLinkWithOptions(_ request: GetSnapshotLinkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSnapshotLinkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSnapshotLink",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSnapshotLinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSnapshotLink(_ request: GetSnapshotLinkRequest) async throws -> GetSnapshotLinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSnapshotLinkWithOptions(request as! GetSnapshotLinkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoSnapshotPoliciesWithOptions(_ request: ListAutoSnapshotPoliciesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAutoSnapshotPoliciesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterKey)) {
            query["FilterKey"] = request.filterKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterValue)) {
            query["FilterValue"] = request.filterValue ?? "";
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
            "action": "ListAutoSnapshotPolicies",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAutoSnapshotPoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoSnapshotPolicies(_ request: ListAutoSnapshotPoliciesRequest) async throws -> ListAutoSnapshotPoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAutoSnapshotPoliciesWithOptions(request as! ListAutoSnapshotPoliciesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoSnapshotPolicyAppliedDbfsWithOptions(_ request: ListAutoSnapshotPolicyAppliedDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAutoSnapshotPolicyAppliedDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterKey)) {
            query["FilterKey"] = request.filterKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterValue)) {
            query["FilterValue"] = request.filterValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAutoSnapshotPolicyAppliedDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAutoSnapshotPolicyAppliedDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoSnapshotPolicyAppliedDbfs(_ request: ListAutoSnapshotPolicyAppliedDbfsRequest) async throws -> ListAutoSnapshotPolicyAppliedDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAutoSnapshotPolicyAppliedDbfsWithOptions(request as! ListAutoSnapshotPolicyAppliedDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoSnapshotPolicyUnappliedDbfsWithOptions(_ request: ListAutoSnapshotPolicyUnappliedDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAutoSnapshotPolicyUnappliedDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterKey)) {
            query["FilterKey"] = request.filterKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterValue)) {
            query["FilterValue"] = request.filterValue ?? "";
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
            "action": "ListAutoSnapshotPolicyUnappliedDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAutoSnapshotPolicyUnappliedDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAutoSnapshotPolicyUnappliedDbfs(_ request: ListAutoSnapshotPolicyUnappliedDbfsRequest) async throws -> ListAutoSnapshotPolicyUnappliedDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAutoSnapshotPolicyUnappliedDbfsWithOptions(request as! ListAutoSnapshotPolicyUnappliedDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDbfsWithOptions(_ request: ListDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterKey)) {
            query["FilterKey"] = request.filterKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterValue)) {
            query["FilterValue"] = request.filterValue ?? "";
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
        if (!TeaUtils.Client.isUnset(request.sortKey)) {
            query["SortKey"] = request.sortKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            query["SortType"] = request.sortType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDbfs(_ request: ListDbfsRequest) async throws -> ListDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDbfsWithOptions(request as! ListDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDbfsAttachableEcsInstancesWithOptions(_ request: ListDbfsAttachableEcsInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDbfsAttachableEcsInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterKey)) {
            query["FilterKey"] = request.filterKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterValue)) {
            query["FilterValue"] = request.filterValue ?? "";
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
            "action": "ListDbfsAttachableEcsInstances",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDbfsAttachableEcsInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDbfsAttachableEcsInstances(_ request: ListDbfsAttachableEcsInstancesRequest) async throws -> ListDbfsAttachableEcsInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDbfsAttachableEcsInstancesWithOptions(request as! ListDbfsAttachableEcsInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDbfsAttachedEcsInstancesWithOptions(_ request: ListDbfsAttachedEcsInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDbfsAttachedEcsInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fsId)) {
            query["FsId"] = request.fsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDbfsAttachedEcsInstances",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDbfsAttachedEcsInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDbfsAttachedEcsInstances(_ request: ListDbfsAttachedEcsInstancesRequest) async throws -> ListDbfsAttachedEcsInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDbfsAttachedEcsInstancesWithOptions(request as! ListDbfsAttachedEcsInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSnapshotWithOptions(_ request: ListSnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterKey)) {
            query["FilterKey"] = request.filterKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterValue)) {
            query["FilterValue"] = request.filterValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fsId)) {
            query["FsId"] = request.fsId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.snapshotIds)) {
            query["SnapshotIds"] = request.snapshotIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotName)) {
            query["SnapshotName"] = request.snapshotName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotType)) {
            query["SnapshotType"] = request.snapshotType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortKey)) {
            query["SortKey"] = request.sortKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            query["SortType"] = request.sortType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSnapshot",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSnapshot(_ request: ListSnapshotRequest) async throws -> ListSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSnapshotWithOptions(request as! ListSnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSnapshotLinksWithOptions(_ request: ListSnapshotLinksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSnapshotLinksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterKey)) {
            query["FilterKey"] = request.filterKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterValue)) {
            query["FilterValue"] = request.filterValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fsIds)) {
            query["FsIds"] = request.fsIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.linkIds)) {
            query["LinkIds"] = request.linkIds ?? "";
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
            "action": "ListSnapshotLinks",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSnapshotLinksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSnapshotLinks(_ request: ListSnapshotLinksRequest) async throws -> ListSnapshotLinksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSnapshotLinksWithOptions(request as! ListSnapshotLinksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagKeysWithOptions(_ request: ListTagKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagKeys",
            "version": "2020-04-18",
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
    public func listTagValuesWithOptions(_ request: ListTagValuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagValuesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "action": "ListTagValues",
            "version": "2020-04-18",
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
    public func modifyAutoSnapshotPolicyWithOptions(_ tmpReq: ModifyAutoSnapshotPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAutoSnapshotPolicyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyAutoSnapshotPolicyShrinkRequest = ModifyAutoSnapshotPolicyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.repeatWeekdays)) {
            request.repeatWeekdaysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.repeatWeekdays, "RepeatWeekdays", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.timePoints)) {
            request.timePointsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.timePoints, "TimePoints", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["PolicyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repeatWeekdaysShrink)) {
            query["RepeatWeekdays"] = request.repeatWeekdaysShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retentionDays)) {
            query["RetentionDays"] = request.retentionDays!;
        }
        if (!TeaUtils.Client.isUnset(request.timePointsShrink)) {
            query["TimePoints"] = request.timePointsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAutoSnapshotPolicy",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAutoSnapshotPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAutoSnapshotPolicy(_ request: ModifyAutoSnapshotPolicyRequest) async throws -> ModifyAutoSnapshotPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAutoSnapshotPolicyWithOptions(request as! ModifyAutoSnapshotPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySnapshotAttributeWithOptions(_ request: ModifySnapshotAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySnapshotAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotName)) {
            query["SnapshotName"] = request.snapshotName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySnapshotAttribute",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySnapshotAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySnapshotAttribute(_ request: ModifySnapshotAttributeRequest) async throws -> ModifySnapshotAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySnapshotAttributeWithOptions(request as! ModifySnapshotAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renameDbfsWithOptions(_ request: RenameDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenameDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fsId)) {
            query["FsId"] = request.fsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fsName)) {
            query["FsName"] = request.fsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenameDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenameDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renameDbfs(_ request: RenameDbfsRequest) async throws -> RenameDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renameDbfsWithOptions(request as! RenameDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resizeDbfsWithOptions(_ request: ResizeDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResizeDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fsId)) {
            query["FsId"] = request.fsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newSizeG)) {
            query["NewSizeG"] = request.newSizeG!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResizeDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResizeDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resizeDbfs(_ request: ResizeDbfsRequest) async throws -> ResizeDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resizeDbfsWithOptions(request as! ResizeDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagDbfsWithOptions(_ request: TagDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbfsId)) {
            query["DbfsId"] = request.dbfsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagDbfs(_ request: TagDbfsRequest) async throws -> TagDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tagDbfsWithOptions(request as! TagDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDbfsWithOptions(_ request: UpdateDbfsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDbfsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.advancedFeatures)) {
            query["AdvancedFeatures"] = request.advancedFeatures ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fsId)) {
            query["FsId"] = request.fsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedScene)) {
            query["UsedScene"] = request.usedScene ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDbfs",
            "version": "2020-04-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDbfsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDbfs(_ request: UpdateDbfsRequest) async throws -> UpdateDbfsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDbfsWithOptions(request as! UpdateDbfsRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
