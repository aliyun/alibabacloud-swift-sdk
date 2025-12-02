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
            "cn-qingdao": "adb.aliyuncs.com",
            "cn-beijing": "adb.aliyuncs.com",
            "cn-hangzhou": "adb.aliyuncs.com",
            "cn-shanghai": "adb.aliyuncs.com",
            "cn-shenzhen": "adb.aliyuncs.com",
            "cn-hongkong": "adb.aliyuncs.com",
            "ap-southeast-1": "adb.aliyuncs.com",
            "us-west-1": "adb.aliyuncs.com",
            "us-east-1": "adb.aliyuncs.com",
            "cn-hangzhou-finance": "adb.aliyuncs.com",
            "cn-north-2-gov-1": "adb.aliyuncs.com",
            "ap-northeast-2-pop": "adb.ap-northeast-1.aliyuncs.com",
            "cn-beijing-finance-1": "adb.aliyuncs.com",
            "cn-beijing-finance-pop": "adb.aliyuncs.com",
            "cn-beijing-gov-1": "adb.aliyuncs.com",
            "cn-beijing-nu16-b01": "adb.aliyuncs.com",
            "cn-edge-1": "adb.aliyuncs.com",
            "cn-fujian": "adb.aliyuncs.com",
            "cn-haidian-cm12-c01": "adb.aliyuncs.com",
            "cn-hangzhou-bj-b01": "adb.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "adb.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "adb.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "adb.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "adb.aliyuncs.com",
            "cn-hangzhou-test-306": "adb.aliyuncs.com",
            "cn-hongkong-finance-pop": "adb.aliyuncs.com",
            "cn-qingdao-nebula": "adb.aliyuncs.com",
            "cn-shanghai-et15-b01": "adb.aliyuncs.com",
            "cn-shanghai-et2-b01": "adb.aliyuncs.com",
            "cn-shanghai-finance-1": "adb.aliyuncs.com",
            "cn-shanghai-inner": "adb.aliyuncs.com",
            "cn-shanghai-internal-test-1": "adb.aliyuncs.com",
            "cn-shenzhen-finance-1": "adb.aliyuncs.com",
            "cn-shenzhen-inner": "adb.aliyuncs.com",
            "cn-shenzhen-st4-d01": "adb.aliyuncs.com",
            "cn-shenzhen-su18-b01": "adb.aliyuncs.com",
            "cn-wuhan": "adb.aliyuncs.com",
            "cn-yushanfang": "adb.aliyuncs.com",
            "cn-zhangbei-na61-b01": "adb.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "adb.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "adb.aliyuncs.com",
            "eu-west-1-oxs": "adb.ap-northeast-1.aliyuncs.com",
            "me-east-1": "adb.ap-northeast-1.aliyuncs.com",
            "rus-west-1-pop": "adb.ap-northeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("adb", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func allocateClusterPublicConnectionWithOptions(_ request: AllocateClusterPublicConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AllocateClusterPublicConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionStringPrefix)) {
            query["ConnectionStringPrefix"] = request.connectionStringPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AllocateClusterPublicConnection",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AllocateClusterPublicConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allocateClusterPublicConnection(_ request: AllocateClusterPublicConnectionRequest) async throws -> AllocateClusterPublicConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await allocateClusterPublicConnectionWithOptions(request as! AllocateClusterPublicConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAdviceByIdWithOptions(_ request: ApplyAdviceByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyAdviceByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adviceDate)) {
            query["AdviceDate"] = request.adviceDate!;
        }
        if (!TeaUtils.Client.isUnset(request.adviceId)) {
            query["AdviceId"] = request.adviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applyType)) {
            query["ApplyType"] = request.applyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildImmediately)) {
            query["BuildImmediately"] = request.buildImmediately!;
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyAdviceById",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyAdviceByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAdviceById(_ request: ApplyAdviceByIdRequest) async throws -> ApplyAdviceByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyAdviceByIdWithOptions(request as! ApplyAdviceByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachUserENIWithOptions(_ request: AttachUserENIRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachUserENIResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachUserENI",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachUserENIResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachUserENI(_ request: AttachUserENIRequest) async throws -> AttachUserENIResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachUserENIWithOptions(request as! AttachUserENIRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchApplyAdviceByIdListWithOptions(_ request: BatchApplyAdviceByIdListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchApplyAdviceByIdListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adviceDate)) {
            query["AdviceDate"] = request.adviceDate!;
        }
        if (!TeaUtils.Client.isUnset(request.adviceIdList)) {
            query["AdviceIdList"] = request.adviceIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applyType)) {
            query["ApplyType"] = request.applyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildImmediately)) {
            query["BuildImmediately"] = request.buildImmediately!;
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchApplyAdviceByIdList",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchApplyAdviceByIdListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchApplyAdviceByIdList(_ request: BatchApplyAdviceByIdListRequest) async throws -> BatchApplyAdviceByIdListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchApplyAdviceByIdListWithOptions(request as! BatchApplyAdviceByIdListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAccountWithOptions(_ request: BindAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ramUser)) {
            query["RamUser"] = request.ramUser ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAccount",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAccount(_ request: BindAccountRequest) async throws -> BindAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAccountWithOptions(request as! BindAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindDBResourceGroupWithUserWithOptions(_ request: BindDBResourceGroupWithUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindDBResourceGroupWithUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupUser)) {
            query["GroupUser"] = request.groupUser ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindDBResourceGroupWithUser",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindDBResourceGroupWithUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindDBResourceGroupWithUser(_ request: BindDBResourceGroupWithUserRequest) async throws -> BindDBResourceGroupWithUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindDBResourceGroupWithUserWithOptions(request as! BindDBResourceGroupWithUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelSparkReplStatementWithOptions(_ request: CancelSparkReplStatementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelSparkReplStatementResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId!;
        }
        if (!TeaUtils.Client.isUnset(request.statementId)) {
            body["StatementId"] = request.statementId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelSparkReplStatement",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelSparkReplStatementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelSparkReplStatement(_ request: CancelSparkReplStatementRequest) async throws -> CancelSparkReplStatementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelSparkReplStatementWithOptions(request as! CancelSparkReplStatementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelSparkWarehouseBatchSQLWithOptions(_ request: CancelSparkWarehouseBatchSQLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelSparkWarehouseBatchSQLResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agency)) {
            body["Agency"] = request.agency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryId)) {
            body["QueryId"] = request.queryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelSparkWarehouseBatchSQL",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelSparkWarehouseBatchSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelSparkWarehouseBatchSQL(_ request: CancelSparkWarehouseBatchSQLRequest) async throws -> CancelSparkWarehouseBatchSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelSparkWarehouseBatchSQLWithOptions(request as! CancelSparkWarehouseBatchSQLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkBindRamUserWithOptions(_ request: CheckBindRamUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckBindRamUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckBindRamUser",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckBindRamUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkBindRamUser(_ request: CheckBindRamUserRequest) async throws -> CheckBindRamUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkBindRamUserWithOptions(request as! CheckBindRamUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkSampleDataSetWithOptions(_ request: CheckSampleDataSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckSampleDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckSampleDataSet",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckSampleDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkSampleDataSet(_ request: CheckSampleDataSetRequest) async throws -> CheckSampleDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkSampleDataSetWithOptions(request as! CheckSampleDataSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureResultExportWithOptions(_ tmpReq: ConfigureResultExportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureResultExportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ConfigureResultExportShrinkRequest = ConfigureResultExportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ossInfo)) {
            request.ossInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ossInfo, "OssInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.slsInfo)) {
            request.slsInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.slsInfo, "SlsInfo", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportType)) {
            body["ExportType"] = request.exportType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossInfoShrink)) {
            body["OssInfo"] = request.ossInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsInfoShrink)) {
            body["SlsInfo"] = request.slsInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureResultExport",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureResultExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureResultExport(_ request: ConfigureResultExportRequest) async throws -> ConfigureResultExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureResultExportWithOptions(request as! ConfigureResultExportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAPSJobWithOptions(_ request: CreateAPSJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAPSJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apsJobName)) {
            body["ApsJobName"] = request.apsJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbList)) {
            body["DbList"] = request.dbList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointInstanceID)) {
            body["DestinationEndpointInstanceID"] = request.destinationEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointPassword)) {
            body["DestinationEndpointPassword"] = request.destinationEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointUserName)) {
            body["DestinationEndpointUserName"] = request.destinationEndpointUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionList)) {
            body["PartitionList"] = request.partitionList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceID)) {
            body["SourceEndpointInstanceID"] = request.sourceEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPassword)) {
            body["SourceEndpointPassword"] = request.sourceEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRegion)) {
            body["SourceEndpointRegion"] = request.sourceEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointUserName)) {
            body["SourceEndpointUserName"] = request.sourceEndpointUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTableMode)) {
            body["TargetTableMode"] = request.targetTableMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAPSJob",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAPSJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAPSJob(_ request: CreateAPSJobRequest) async throws -> CreateAPSJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAPSJobWithOptions(request as! CreateAPSJobRequest, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAccount",
            "version": "2021-12-01",
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
    public func createApsCopyWorkloadWithOptions(_ request: CreateApsCopyWorkloadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApsCopyWorkloadResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceId)) {
            body["DatasourceId"] = request.datasourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            body["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadId)) {
            body["WorkloadId"] = request.workloadId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadType)) {
            body["WorkloadType"] = request.workloadType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApsCopyWorkload",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApsCopyWorkloadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsCopyWorkload(_ request: CreateApsCopyWorkloadRequest) async throws -> CreateApsCopyWorkloadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApsCopyWorkloadWithOptions(request as! CreateApsCopyWorkloadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsDatasoureWithOptions(_ tmpReq: CreateApsDatasoureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApsDatasoureResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateApsDatasoureShrinkRequest = CreateApsDatasoureShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.databricksInfo)) {
            request.databricksInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.databricksInfo, "DatabricksInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.hiveInfo)) {
            request.hiveInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hiveInfo, "HiveInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.kafkaInfo)) {
            request.kafkaInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.kafkaInfo, "KafkaInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.polarDBMysqlInfo)) {
            request.polarDBMysqlInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.polarDBMysqlInfo, "PolarDBMysqlInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.polarDBXInfo)) {
            request.polarDBXInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.polarDBXInfo, "PolarDBXInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.rdsMysqlInfo)) {
            request.rdsMysqlInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rdsMysqlInfo, "RdsMysqlInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.slsInfo)) {
            request.slsInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.slsInfo, "SlsInfo", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databricksInfoShrink)) {
            body["DatabricksInfo"] = request.databricksInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceDescription)) {
            body["DatasourceDescription"] = request.datasourceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceName)) {
            body["DatasourceName"] = request.datasourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceType)) {
            body["DatasourceType"] = request.datasourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hiveInfoShrink)) {
            body["HiveInfo"] = request.hiveInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kafkaInfoShrink)) {
            body["KafkaInfo"] = request.kafkaInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            body["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.polarDBMysqlInfoShrink)) {
            body["PolarDBMysqlInfo"] = request.polarDBMysqlInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.polarDBXInfoShrink)) {
            body["PolarDBXInfo"] = request.polarDBXInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsMysqlInfoShrink)) {
            body["RdsMysqlInfo"] = request.rdsMysqlInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsInfoShrink)) {
            body["SlsInfo"] = request.slsInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApsDatasoure",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApsDatasoureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsDatasoure(_ request: CreateApsDatasoureRequest) async throws -> CreateApsDatasoureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApsDatasoureWithOptions(request as! CreateApsDatasoureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsHiveJobWithOptions(_ request: CreateApsHiveJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApsHiveJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.advancedConfig)) {
            body["AdvancedConfig"] = request.advancedConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conflictStrategy)) {
            body["ConflictStrategy"] = request.conflictStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceId)) {
            body["DatasourceId"] = request.datasourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.fullComputeUnit)) {
            body["FullComputeUnit"] = request.fullComputeUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossLocation)) {
            body["OssLocation"] = request.ossLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parallelism)) {
            body["Parallelism"] = request.parallelism!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroup)) {
            body["ResourceGroup"] = request.resourceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncAllowExpression)) {
            body["SyncAllowExpression"] = request.syncAllowExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncDenyExpression)) {
            body["SyncDenyExpression"] = request.syncDenyExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            body["TargetType"] = request.targetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadName)) {
            body["WorkloadName"] = request.workloadName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApsHiveJob",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApsHiveJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsHiveJob(_ request: CreateApsHiveJobRequest) async throws -> CreateApsHiveJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApsHiveJobWithOptions(request as! CreateApsHiveJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsKafkaHudiJobWithOptions(_ tmpReq: CreateApsKafkaHudiJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApsKafkaHudiJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateApsKafkaHudiJobShrinkRequest = CreateApsKafkaHudiJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columns)) {
            request.columnsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columns, "Columns", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.partitionSpecs)) {
            request.partitionSpecsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.partitionSpecs, "PartitionSpecs", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrossRole)) {
            body["AcrossRole"] = request.acrossRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.acrossUid)) {
            body["AcrossUid"] = request.acrossUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.advancedConfig)) {
            body["AdvancedConfig"] = request.advancedConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnsShrink)) {
            body["Columns"] = request.columnsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataOutputFormat)) {
            body["DataOutputFormat"] = request.dataOutputFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceId)) {
            body["DatasourceId"] = request.datasourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            body["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fullComputeUnit)) {
            body["FullComputeUnit"] = request.fullComputeUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hudiAdvancedConfig)) {
            body["HudiAdvancedConfig"] = request.hudiAdvancedConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incrementalComputeUnit)) {
            body["IncrementalComputeUnit"] = request.incrementalComputeUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jsonParseLevel)) {
            body["JsonParseLevel"] = request.jsonParseLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.kafkaClusterId)) {
            body["KafkaClusterId"] = request.kafkaClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kafkaTopic)) {
            body["KafkaTopic"] = request.kafkaTopic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lakehouseId)) {
            body["LakehouseId"] = request.lakehouseId!;
        }
        if (!TeaUtils.Client.isUnset(request.maxOffsetsPerTrigger)) {
            body["MaxOffsetsPerTrigger"] = request.maxOffsetsPerTrigger!;
        }
        if (!TeaUtils.Client.isUnset(request.ossLocation)) {
            body["OssLocation"] = request.ossLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputFormat)) {
            body["OutputFormat"] = request.outputFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionSpecsShrink)) {
            body["PartitionSpecs"] = request.partitionSpecsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryKeyDefinition)) {
            body["PrimaryKeyDefinition"] = request.primaryKeyDefinition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroup)) {
            body["ResourceGroup"] = request.resourceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceRegionId)) {
            body["SourceRegionId"] = request.sourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startingOffsets)) {
            body["StartingOffsets"] = request.startingOffsets ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetGenerateRule)) {
            body["TargetGenerateRule"] = request.targetGenerateRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            body["TargetType"] = request.targetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadName)) {
            body["WorkloadName"] = request.workloadName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApsKafkaHudiJob",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApsKafkaHudiJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsKafkaHudiJob(_ request: CreateApsKafkaHudiJobRequest) async throws -> CreateApsKafkaHudiJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApsKafkaHudiJobWithOptions(request as! CreateApsKafkaHudiJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsSlsADBJobWithOptions(_ tmpReq: CreateApsSlsADBJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApsSlsADBJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateApsSlsADBJobShrinkRequest = CreateApsSlsADBJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columns)) {
            request.columnsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columns, "Columns", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.partitionSpecs)) {
            request.partitionSpecsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.partitionSpecs, "PartitionSpecs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.unixTimestampConvert)) {
            request.unixTimestampConvertShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.unixTimestampConvert, "UnixTimestampConvert", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrossRole)) {
            body["AcrossRole"] = request.acrossRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.acrossUid)) {
            body["AcrossUid"] = request.acrossUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.advancedConfig)) {
            body["AdvancedConfig"] = request.advancedConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnsShrink)) {
            body["Columns"] = request.columnsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceId)) {
            body["DatasourceId"] = request.datasourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            body["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dirtyDataHandleMode)) {
            body["DirtyDataHandleMode"] = request.dirtyDataHandleMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dirtyDataProcessPattern)) {
            body["DirtyDataProcessPattern"] = request.dirtyDataProcessPattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exactlyOnce)) {
            body["ExactlyOnce"] = request.exactlyOnce ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fullComputeUnit)) {
            body["FullComputeUnit"] = request.fullComputeUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hudiAdvancedConfig)) {
            body["HudiAdvancedConfig"] = request.hudiAdvancedConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incrementalComputeUnit)) {
            body["IncrementalComputeUnit"] = request.incrementalComputeUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lakehouseId)) {
            body["LakehouseId"] = request.lakehouseId!;
        }
        if (!TeaUtils.Client.isUnset(request.maxOffsetsPerTrigger)) {
            body["MaxOffsetsPerTrigger"] = request.maxOffsetsPerTrigger!;
        }
        if (!TeaUtils.Client.isUnset(request.ossLocation)) {
            body["OssLocation"] = request.ossLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputFormat)) {
            body["OutputFormat"] = request.outputFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionSpecsShrink)) {
            body["PartitionSpecs"] = request.partitionSpecsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryKeyDefinition)) {
            body["PrimaryKeyDefinition"] = request.primaryKeyDefinition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            body["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroup)) {
            body["ResourceGroup"] = request.resourceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceRegionId)) {
            body["SourceRegionId"] = request.sourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startingOffsets)) {
            body["StartingOffsets"] = request.startingOffsets ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.store)) {
            body["Store"] = request.store ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetGenerateRule)) {
            body["TargetGenerateRule"] = request.targetGenerateRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            body["TargetType"] = request.targetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unixTimestampConvertShrink)) {
            body["UnixTimestampConvert"] = request.unixTimestampConvertShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadName)) {
            body["WorkloadName"] = request.workloadName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApsSlsADBJob",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApsSlsADBJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsSlsADBJob(_ request: CreateApsSlsADBJobRequest) async throws -> CreateApsSlsADBJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApsSlsADBJobWithOptions(request as! CreateApsSlsADBJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsWebhookWithOptions(_ tmpReq: CreateApsWebhookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApsWebhookResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateApsWebhookShrinkRequest = CreateApsWebhookShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.webhook)) {
            request.webhookShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.webhook, "Webhook", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            body["JobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhookShrink)) {
            body["Webhook"] = request.webhookShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApsWebhook",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApsWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApsWebhook(_ request: CreateApsWebhookRequest) async throws -> CreateApsWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApsWebhookWithOptions(request as! CreateApsWebhookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackupWithOptions(_ request: CreateBackupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBackupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
            "action": "CreateBackup",
            "version": "2021-12-01",
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
    public func createDBClusterWithOptions(_ request: CreateDBClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDBClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cloneSourceRegionId)) {
            query["CloneSourceRegionId"] = request.cloneSourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.computeResource)) {
            query["ComputeResource"] = request.computeResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterDescription)) {
            query["DBClusterDescription"] = request.DBClusterDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterNetworkType)) {
            query["DBClusterNetworkType"] = request.DBClusterNetworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterVersion)) {
            query["DBClusterVersion"] = request.DBClusterVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskEncryption)) {
            query["DiskEncryption"] = request.diskEncryption!;
        }
        if (!TeaUtils.Client.isUnset(request.enableDefaultResourcePool)) {
            query["EnableDefaultResourcePool"] = request.enableDefaultResourcePool!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSSL)) {
            query["EnableSSL"] = request.enableSSL!;
        }
        if (!TeaUtils.Client.isUnset(request.kmsId)) {
            query["KmsId"] = request.kmsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productForm)) {
            query["ProductForm"] = request.productForm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersion)) {
            query["ProductVersion"] = request.productVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reservedNodeCount)) {
            query["ReservedNodeCount"] = request.reservedNodeCount!;
        }
        if (!TeaUtils.Client.isUnset(request.reservedNodeSize)) {
            query["ReservedNodeSize"] = request.reservedNodeSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreToTime)) {
            query["RestoreToTime"] = request.restoreToTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreType)) {
            query["RestoreType"] = request.restoreType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryVSwitchId)) {
            query["SecondaryVSwitchId"] = request.secondaryVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryZoneId)) {
            query["SecondaryZoneId"] = request.secondaryZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDbClusterId)) {
            query["SourceDbClusterId"] = request.sourceDbClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageResource)) {
            query["StorageResource"] = request.storageResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.usedTime)) {
            query["UsedTime"] = request.usedTime ?? "";
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
            "action": "CreateDBCluster",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDBClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDBCluster(_ request: CreateDBClusterRequest) async throws -> CreateDBClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDBClusterWithOptions(request as! CreateDBClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDBResourceGroupWithOptions(_ tmpReq: CreateDBResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDBResourceGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDBResourceGroupShrinkRequest = CreateDBResourceGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.engineParams)) {
            request.engineParamsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.engineParams, "EngineParams", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.gpuElasticPlan)) {
            request.gpuElasticPlanShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.gpuElasticPlan, "GpuElasticPlan", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.rayConfig)) {
            request.rayConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rayConfig, "RayConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.rules)) {
            request.rulesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rules, "Rules", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoStopInterval)) {
            query["AutoStopInterval"] = request.autoStopInterval ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterMode)) {
            query["ClusterMode"] = request.clusterMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterSizeResource)) {
            query["ClusterSizeResource"] = request.clusterSizeResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSpot)) {
            query["EnableSpot"] = request.enableSpot!;
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engineParamsShrink)) {
            query["EngineParams"] = request.engineParamsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuElasticPlanShrink)) {
            query["GpuElasticPlan"] = request.gpuElasticPlanShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            query["GroupType"] = request.groupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxClusterCount)) {
            query["MaxClusterCount"] = request.maxClusterCount!;
        }
        if (!TeaUtils.Client.isUnset(request.maxComputeResource)) {
            query["MaxComputeResource"] = request.maxComputeResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxGpuQuantity)) {
            query["MaxGpuQuantity"] = request.maxGpuQuantity!;
        }
        if (!TeaUtils.Client.isUnset(request.minClusterCount)) {
            query["MinClusterCount"] = request.minClusterCount!;
        }
        if (!TeaUtils.Client.isUnset(request.minComputeResource)) {
            query["MinComputeResource"] = request.minComputeResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minGpuQuantity)) {
            query["MinGpuQuantity"] = request.minGpuQuantity!;
        }
        if (!TeaUtils.Client.isUnset(request.rayConfigShrink)) {
            query["RayConfig"] = request.rayConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rulesShrink)) {
            query["Rules"] = request.rulesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specName)) {
            query["SpecName"] = request.specName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetResourceGroupName)) {
            query["TargetResourceGroupName"] = request.targetResourceGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDBResourceGroup",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDBResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDBResourceGroup(_ request: CreateDBResourceGroupRequest) async throws -> CreateDBResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDBResourceGroupWithOptions(request as! CreateDBResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createElasticPlanWithOptions(_ request: CreateElasticPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateElasticPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoScale)) {
            query["AutoScale"] = request.autoScale!;
        }
        if (!TeaUtils.Client.isUnset(request.cronExpression)) {
            query["CronExpression"] = request.cronExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticPlanName)) {
            query["ElasticPlanName"] = request.elasticPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            query["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetSize)) {
            query["TargetSize"] = request.targetSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateElasticPlan",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateElasticPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createElasticPlan(_ request: CreateElasticPlanRequest) async throws -> CreateElasticPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createElasticPlanWithOptions(request as! CreateElasticPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLakeStorageWithOptions(_ tmpReq: CreateLakeStorageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLakeStorageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateLakeStorageShrinkRequest = CreateLakeStorageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.permissions)) {
            request.permissionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.permissions, "Permissions", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permissionsShrink)) {
            body["Permissions"] = request.permissionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLakeStorage",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLakeStorageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLakeStorage(_ request: CreateLakeStorageRequest) async throws -> CreateLakeStorageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLakeStorageWithOptions(request as! CreateLakeStorageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMaterializedViewRecommendWithOptions(_ request: CreateMaterializedViewRecommendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMaterializedViewRecommendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minRewriteQueryCount)) {
            query["MinRewriteQueryCount"] = request.minRewriteQueryCount!;
        }
        if (!TeaUtils.Client.isUnset(request.minRewriteQueryPattern)) {
            query["MinRewriteQueryPattern"] = request.minRewriteQueryPattern!;
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
        if (!TeaUtils.Client.isUnset(request.scanQueriesRange)) {
            query["ScanQueriesRange"] = request.scanQueriesRange!;
        }
        if (!TeaUtils.Client.isUnset(request.schedulingDay)) {
            query["SchedulingDay"] = request.schedulingDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedulingPolicy)) {
            query["SchedulingPolicy"] = request.schedulingPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slowQueryThreshold)) {
            query["SlowQueryThreshold"] = request.slowQueryThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.specifiedTime)) {
            query["SpecifiedTime"] = request.specifiedTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMaterializedViewRecommend",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMaterializedViewRecommendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMaterializedViewRecommend(_ request: CreateMaterializedViewRecommendRequest) async throws -> CreateMaterializedViewRecommendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMaterializedViewRecommendWithOptions(request as! CreateMaterializedViewRecommendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOssSubDirectoryWithOptions(_ request: CreateOssSubDirectoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOssSubDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            body["Path"] = request.path ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOssSubDirectory",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOssSubDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOssSubDirectory(_ request: CreateOssSubDirectoryRequest) async throws -> CreateOssSubDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOssSubDirectoryWithOptions(request as! CreateOssSubDirectoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPerformanceViewWithOptions(_ tmpReq: CreatePerformanceViewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePerformanceViewResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePerformanceViewShrinkRequest = CreatePerformanceViewShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.viewDetail)) {
            request.viewDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.viewDetail, "ViewDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createFromViewType)) {
            query["CreateFromViewType"] = request.createFromViewType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fillOriginViewKeys)) {
            query["FillOriginViewKeys"] = request.fillOriginViewKeys!;
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
        if (!TeaUtils.Client.isUnset(request.viewDetailShrink)) {
            query["ViewDetail"] = request.viewDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.viewName)) {
            query["ViewName"] = request.viewName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePerformanceView",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePerformanceViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPerformanceView(_ request: CreatePerformanceViewRequest) async throws -> CreatePerformanceViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPerformanceViewWithOptions(request as! CreatePerformanceViewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSparkTemplateWithOptions(_ request: CreateSparkTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSparkTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["ParentId"] = request.parentId!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSparkTemplate",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSparkTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSparkTemplate(_ request: CreateSparkTemplateRequest) async throws -> CreateSparkTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSparkTemplateWithOptions(request as! CreateSparkTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAccountWithOptions(_ request: DeleteAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAccount",
            "version": "2021-12-01",
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
    public func deleteApsDatasoureWithOptions(_ request: DeleteApsDatasoureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApsDatasoureResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceId)) {
            body["DatasourceId"] = request.datasourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApsDatasoure",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApsDatasoureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApsDatasoure(_ request: DeleteApsDatasoureRequest) async throws -> DeleteApsDatasoureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApsDatasoureWithOptions(request as! DeleteApsDatasoureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApsJobWithOptions(_ request: DeleteApsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apsJobId)) {
            body["ApsJobId"] = request.apsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApsJob",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApsJob(_ request: DeleteApsJobRequest) async throws -> DeleteApsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApsJobWithOptions(request as! DeleteApsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApsWebhookWithOptions(_ request: DeleteApsWebhookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApsWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhookId)) {
            body["WebhookId"] = request.webhookId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApsWebhook",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApsWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApsWebhook(_ request: DeleteApsWebhookRequest) async throws -> DeleteApsWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApsWebhookWithOptions(request as! DeleteApsWebhookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupsWithOptions(_ request: DeleteBackupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBackupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupIds)) {
            query["BackupIds"] = request.backupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
            "action": "DeleteBackups",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBackupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackups(_ request: DeleteBackupsRequest) async throws -> DeleteBackupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBackupsWithOptions(request as! DeleteBackupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDBClusterWithOptions(_ request: DeleteDBClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDBClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDBCluster",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDBClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDBCluster(_ request: DeleteDBClusterRequest) async throws -> DeleteDBClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDBClusterWithOptions(request as! DeleteDBClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDBResourceGroupWithOptions(_ request: DeleteDBResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDBResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDBResourceGroup",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDBResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDBResourceGroup(_ request: DeleteDBResourceGroupRequest) async throws -> DeleteDBResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDBResourceGroupWithOptions(request as! DeleteDBResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteElasticPlanWithOptions(_ request: DeleteElasticPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteElasticPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticPlanName)) {
            query["ElasticPlanName"] = request.elasticPlanName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteElasticPlan",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteElasticPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteElasticPlan(_ request: DeleteElasticPlanRequest) async throws -> DeleteElasticPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteElasticPlanWithOptions(request as! DeleteElasticPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLakeStorageWithOptions(_ request: DeleteLakeStorageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLakeStorageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lakeStorageId)) {
            body["LakeStorageId"] = request.lakeStorageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLakeStorage",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLakeStorageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLakeStorage(_ request: DeleteLakeStorageRequest) async throws -> DeleteLakeStorageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLakeStorageWithOptions(request as! DeleteLakeStorageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMaterializedViewRecommendWithOptions(_ request: DeleteMaterializedViewRecommendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMaterializedViewRecommendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMaterializedViewRecommend",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMaterializedViewRecommendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMaterializedViewRecommend(_ request: DeleteMaterializedViewRecommendRequest) async throws -> DeleteMaterializedViewRecommendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMaterializedViewRecommendWithOptions(request as! DeleteMaterializedViewRecommendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePerformanceViewWithOptions(_ request: DeletePerformanceViewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePerformanceViewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.viewName)) {
            query["ViewName"] = request.viewName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePerformanceView",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePerformanceViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePerformanceView(_ request: DeletePerformanceViewRequest) async throws -> DeletePerformanceViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePerformanceViewWithOptions(request as! DeletePerformanceViewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSparkTemplateWithOptions(_ request: DeleteSparkTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSparkTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSparkTemplate",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSparkTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSparkTemplate(_ request: DeleteSparkTemplateRequest) async throws -> DeleteSparkTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSparkTemplateWithOptions(request as! DeleteSparkTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSparkTemplateFileWithOptions(_ request: DeleteSparkTemplateFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSparkTemplateFileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSparkTemplateFile",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSparkTemplateFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSparkTemplateFile(_ request: DeleteSparkTemplateFileRequest) async throws -> DeleteSparkTemplateFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSparkTemplateFileWithOptions(request as! DeleteSparkTemplateFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAPSADBInstancesWithOptions(_ request: DescribeAPSADBInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAPSADBInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAPSADBInstances",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAPSADBInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAPSADBInstances(_ request: DescribeAPSADBInstancesRequest) async throws -> DescribeAPSADBInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAPSADBInstancesWithOptions(request as! DescribeAPSADBInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAbnormalPatternDetectionWithOptions(_ request: DescribeAbnormalPatternDetectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAbnormalPatternDetectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAbnormalPatternDetection",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAbnormalPatternDetectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAbnormalPatternDetection(_ request: DescribeAbnormalPatternDetectionRequest) async throws -> DescribeAbnormalPatternDetectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAbnormalPatternDetectionWithOptions(request as! DescribeAbnormalPatternDetectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountAllPrivilegesWithOptions(_ request: DescribeAccountAllPrivilegesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccountAllPrivilegesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccountAllPrivileges",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccountAllPrivilegesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountAllPrivileges(_ request: DescribeAccountAllPrivilegesRequest) async throws -> DescribeAccountAllPrivilegesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccountAllPrivilegesWithOptions(request as! DescribeAccountAllPrivilegesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountPrivilegeObjectsWithOptions(_ request: DescribeAccountPrivilegeObjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccountPrivilegeObjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnPrivilegeObject)) {
            query["ColumnPrivilegeObject"] = request.columnPrivilegeObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePrivilegeObject)) {
            query["DatabasePrivilegeObject"] = request.databasePrivilegeObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privilegeType)) {
            query["PrivilegeType"] = request.privilegeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tablePrivilegeObject)) {
            query["TablePrivilegeObject"] = request.tablePrivilegeObject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccountPrivilegeObjects",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccountPrivilegeObjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountPrivilegeObjects(_ request: DescribeAccountPrivilegeObjectsRequest) async throws -> DescribeAccountPrivilegeObjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccountPrivilegeObjectsWithOptions(request as! DescribeAccountPrivilegeObjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountPrivilegesWithOptions(_ request: DescribeAccountPrivilegesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccountPrivilegesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnPrivilegeObject)) {
            query["ColumnPrivilegeObject"] = request.columnPrivilegeObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePrivilegeObject)) {
            query["DatabasePrivilegeObject"] = request.databasePrivilegeObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privilegeType)) {
            query["PrivilegeType"] = request.privilegeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tablePrivilegeObject)) {
            query["TablePrivilegeObject"] = request.tablePrivilegeObject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccountPrivileges",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccountPrivilegesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountPrivileges(_ request: DescribeAccountPrivilegesRequest) async throws -> DescribeAccountPrivilegesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccountPrivilegesWithOptions(request as! DescribeAccountPrivilegesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountsWithOptions(_ request: DescribeAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccounts",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccounts(_ request: DescribeAccountsRequest) async throws -> DescribeAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccountsWithOptions(request as! DescribeAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdbMySqlColumnsWithOptions(_ request: DescribeAdbMySqlColumnsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAdbMySqlColumnsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            query["Schema"] = request.schema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAdbMySqlColumns",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAdbMySqlColumnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdbMySqlColumns(_ request: DescribeAdbMySqlColumnsRequest) async throws -> DescribeAdbMySqlColumnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAdbMySqlColumnsWithOptions(request as! DescribeAdbMySqlColumnsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdbMySqlIndexesWithOptions(_ request: DescribeAdbMySqlIndexesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAdbMySqlIndexesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            query["Schema"] = request.schema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAdbMySqlIndexes",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAdbMySqlIndexesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdbMySqlIndexes(_ request: DescribeAdbMySqlIndexesRequest) async throws -> DescribeAdbMySqlIndexesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAdbMySqlIndexesWithOptions(request as! DescribeAdbMySqlIndexesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdbMySqlSchemasWithOptions(_ request: DescribeAdbMySqlSchemasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAdbMySqlSchemasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAdbMySqlSchemas",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAdbMySqlSchemasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdbMySqlSchemas(_ request: DescribeAdbMySqlSchemasRequest) async throws -> DescribeAdbMySqlSchemasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAdbMySqlSchemasWithOptions(request as! DescribeAdbMySqlSchemasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdbMySqlTableMetaWithOptions(_ request: DescribeAdbMySqlTableMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAdbMySqlTableMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            query["Schema"] = request.schema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAdbMySqlTableMeta",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAdbMySqlTableMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdbMySqlTableMeta(_ request: DescribeAdbMySqlTableMetaRequest) async throws -> DescribeAdbMySqlTableMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAdbMySqlTableMetaWithOptions(request as! DescribeAdbMySqlTableMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdbMySqlTablesWithOptions(_ request: DescribeAdbMySqlTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAdbMySqlTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            query["Schema"] = request.schema ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAdbMySqlTables",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAdbMySqlTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdbMySqlTables(_ request: DescribeAdbMySqlTablesRequest) async throws -> DescribeAdbMySqlTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAdbMySqlTablesWithOptions(request as! DescribeAdbMySqlTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdviceServiceEnabledWithOptions(_ request: DescribeAdviceServiceEnabledRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAdviceServiceEnabledResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAdviceServiceEnabled",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAdviceServiceEnabledResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdviceServiceEnabled(_ request: DescribeAdviceServiceEnabledRequest) async throws -> DescribeAdviceServiceEnabledResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAdviceServiceEnabledWithOptions(request as! DescribeAdviceServiceEnabledRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAllDataSourceWithOptions(_ request: DescribeAllDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAllDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAllDataSource",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAllDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAllDataSource(_ request: DescribeAllDataSourceRequest) async throws -> DescribeAllDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAllDataSourceWithOptions(request as! DescribeAllDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppliedAdvicesWithOptions(_ request: DescribeAppliedAdvicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppliedAdvicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adviceType)) {
            query["AdviceType"] = request.adviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaTableName)) {
            query["SchemaTableName"] = request.schemaTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAppliedAdvices",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppliedAdvicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppliedAdvices(_ request: DescribeAppliedAdvicesRequest) async throws -> DescribeAppliedAdvicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAppliedAdvicesWithOptions(request as! DescribeAppliedAdvicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsActionLogsWithOptions(_ request: DescribeApsActionLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApsActionLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
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
        if (!TeaUtils.Client.isUnset(request.stage)) {
            query["Stage"] = request.stage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadId)) {
            query["WorkloadId"] = request.workloadId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApsActionLogs",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApsActionLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsActionLogs(_ request: DescribeApsActionLogsRequest) async throws -> DescribeApsActionLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApsActionLogsWithOptions(request as! DescribeApsActionLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsDatasourceWithOptions(_ request: DescribeApsDatasourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApsDatasourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceId)) {
            body["DatasourceId"] = request.datasourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApsDatasource",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApsDatasourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsDatasource(_ request: DescribeApsDatasourceRequest) async throws -> DescribeApsDatasourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApsDatasourceWithOptions(request as! DescribeApsDatasourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsDatasourcesWithOptions(_ request: DescribeApsDatasourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApsDatasourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceName)) {
            body["DatasourceName"] = request.datasourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceType)) {
            body["DatasourceType"] = request.datasourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApsDatasources",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApsDatasourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsDatasources(_ request: DescribeApsDatasourcesRequest) async throws -> DescribeApsDatasourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApsDatasourcesWithOptions(request as! DescribeApsDatasourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsHiveWorkloadWithOptions(_ request: DescribeApsHiveWorkloadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApsHiveWorkloadResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadId)) {
            body["WorkloadId"] = request.workloadId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApsHiveWorkload",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApsHiveWorkloadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsHiveWorkload(_ request: DescribeApsHiveWorkloadRequest) async throws -> DescribeApsHiveWorkloadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApsHiveWorkloadWithOptions(request as! DescribeApsHiveWorkloadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsJobDetailWithOptions(_ request: DescribeApsJobDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApsJobDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apsJobId)) {
            body["ApsJobId"] = request.apsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApsJobDetail",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApsJobDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsJobDetail(_ request: DescribeApsJobDetailRequest) async throws -> DescribeApsJobDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApsJobDetailWithOptions(request as! DescribeApsJobDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsJobsWithOptions(_ request: DescribeApsJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApsJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apsJobName)) {
            body["ApsJobName"] = request.apsJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            body["CreateTimeEnd"] = request.createTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            body["CreateTimeStart"] = request.createTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApsJobs",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApsJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsJobs(_ request: DescribeApsJobsRequest) async throws -> DescribeApsJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApsJobsWithOptions(request as! DescribeApsJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsMigrationWorkloadsWithOptions(_ request: DescribeApsMigrationWorkloadsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApsMigrationWorkloadsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossLocation)) {
            body["OssLocation"] = request.ossLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadName)) {
            body["WorkloadName"] = request.workloadName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApsMigrationWorkloads",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApsMigrationWorkloadsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsMigrationWorkloads(_ request: DescribeApsMigrationWorkloadsRequest) async throws -> DescribeApsMigrationWorkloadsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApsMigrationWorkloadsWithOptions(request as! DescribeApsMigrationWorkloadsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsProgressWithOptions(_ request: DescribeApsProgressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApsProgressResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadId)) {
            body["WorkloadId"] = request.workloadId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApsProgress",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApsProgressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsProgress(_ request: DescribeApsProgressRequest) async throws -> DescribeApsProgressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApsProgressWithOptions(request as! DescribeApsProgressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsResourceGroupsWithOptions(_ request: DescribeApsResourceGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApsResourceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadId)) {
            body["WorkloadId"] = request.workloadId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApsResourceGroups",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApsResourceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApsResourceGroups(_ request: DescribeApsResourceGroupsRequest) async throws -> DescribeApsResourceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApsResourceGroupsWithOptions(request as! DescribeApsResourceGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAuditLogRecordsWithOptions(_ request: DescribeAuditLogRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAuditLogRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBName)) {
            query["DBName"] = request.DBName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostAddress)) {
            query["HostAddress"] = request.hostAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.proxyUser)) {
            query["ProxyUser"] = request.proxyUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryKeyword)) {
            query["QueryKeyword"] = request.queryKeyword ?? "";
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
        if (!TeaUtils.Client.isUnset(request.sqlType)) {
            query["SqlType"] = request.sqlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.succeed)) {
            query["Succeed"] = request.succeed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            query["User"] = request.user ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAuditLogRecords",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAuditLogRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAuditLogRecords(_ request: DescribeAuditLogRecordsRequest) async throws -> DescribeAuditLogRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAuditLogRecordsWithOptions(request as! DescribeAuditLogRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableAdvicesWithOptions(_ request: DescribeAvailableAdvicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAvailableAdvicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adviceDate)) {
            query["AdviceDate"] = request.adviceDate!;
        }
        if (!TeaUtils.Client.isUnset(request.adviceType)) {
            query["AdviceType"] = request.adviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaTableName)) {
            query["SchemaTableName"] = request.schemaTableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAvailableAdvices",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAvailableAdvicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableAdvices(_ request: DescribeAvailableAdvicesRequest) async throws -> DescribeAvailableAdvicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAvailableAdvicesWithOptions(request as! DescribeAvailableAdvicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPolicyWithOptions(_ request: DescribeBackupPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "DescribeBackupPolicy",
            "version": "2021-12-01",
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
    public func describeBackupsWithOptions(_ request: DescribeBackupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupId)) {
            query["BackupId"] = request.backupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.remote)) {
            query["Remote"] = request.remote!;
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
            "action": "DescribeBackups",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackups(_ request: DescribeBackupsRequest) async throws -> DescribeBackupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupsWithOptions(request as! DescribeBackupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBadSqlDetectionWithOptions(_ request: DescribeBadSqlDetectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBadSqlDetectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBadSqlDetection",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBadSqlDetectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBadSqlDetection(_ request: DescribeBadSqlDetectionRequest) async throws -> DescribeBadSqlDetectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBadSqlDetectionWithOptions(request as! DescribeBadSqlDetectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAccessWhiteListWithOptions(_ request: DescribeClusterAccessWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterAccessWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterAccessWhiteList",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterAccessWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterAccessWhiteList(_ request: DescribeClusterAccessWhiteListRequest) async throws -> DescribeClusterAccessWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterAccessWhiteListWithOptions(request as! DescribeClusterAccessWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterNetInfoWithOptions(_ request: DescribeClusterNetInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterNetInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterNetInfo",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterNetInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterNetInfo(_ request: DescribeClusterNetInfoRequest) async throws -> DescribeClusterNetInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterNetInfoWithOptions(request as! DescribeClusterNetInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterResourceDetailWithOptions(_ request: DescribeClusterResourceDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterResourceDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterResourceDetail",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterResourceDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterResourceDetail(_ request: DescribeClusterResourceDetailRequest) async throws -> DescribeClusterResourceDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterResourceDetailWithOptions(request as! DescribeClusterResourceDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterResourceUsageWithOptions(_ request: DescribeClusterResourceUsageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterResourceUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterResourceUsage",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterResourceUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterResourceUsage(_ request: DescribeClusterResourceUsageRequest) async throws -> DescribeClusterResourceUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterResourceUsageWithOptions(request as! DescribeClusterResourceUsageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeColumnsWithOptions(_ request: DescribeColumnsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeColumnsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeColumns",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeColumnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeColumns(_ request: DescribeColumnsRequest) async throws -> DescribeColumnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeColumnsWithOptions(request as! DescribeColumnsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCompactionServiceSwitchWithOptions(_ request: DescribeCompactionServiceSwitchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCompactionServiceSwitchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCompactionServiceSwitch",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCompactionServiceSwitchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCompactionServiceSwitch(_ request: DescribeCompactionServiceSwitchRequest) async throws -> DescribeCompactionServiceSwitchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCompactionServiceSwitchWithOptions(request as! DescribeCompactionServiceSwitchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeComputeResourceUsageWithOptions(_ request: DescribeComputeResourceUsageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeComputeResourceUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            query["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeComputeResourceUsage",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeComputeResourceUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeComputeResourceUsage(_ request: DescribeComputeResourceUsageRequest) async throws -> DescribeComputeResourceUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeComputeResourceUsageWithOptions(request as! DescribeComputeResourceUsageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeControllerDetectionWithOptions(_ request: DescribeControllerDetectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeControllerDetectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeControllerDetection",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeControllerDetectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeControllerDetection(_ request: DescribeControllerDetectionRequest) async throws -> DescribeControllerDetectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeControllerDetectionWithOptions(request as! DescribeControllerDetectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterAttributeWithOptions(_ request: DescribeDBClusterAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBClusterAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBClusterAttribute",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBClusterAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterAttribute(_ request: DescribeDBClusterAttributeRequest) async throws -> DescribeDBClusterAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBClusterAttributeWithOptions(request as! DescribeDBClusterAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterHealthStatusWithOptions(_ request: DescribeDBClusterHealthStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBClusterHealthStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBClusterHealthStatus",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBClusterHealthStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterHealthStatus(_ request: DescribeDBClusterHealthStatusRequest) async throws -> DescribeDBClusterHealthStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBClusterHealthStatusWithOptions(request as! DescribeDBClusterHealthStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterPerformanceWithOptions(_ request: DescribeDBClusterPerformanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBClusterPerformanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourcePools)) {
            query["ResourcePools"] = request.resourcePools ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBClusterPerformance",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBClusterPerformanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterPerformance(_ request: DescribeDBClusterPerformanceRequest) async throws -> DescribeDBClusterPerformanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBClusterPerformanceWithOptions(request as! DescribeDBClusterPerformanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterSSLWithOptions(_ request: DescribeDBClusterSSLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBClusterSSLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBClusterSSL",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBClusterSSLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterSSL(_ request: DescribeDBClusterSSLRequest) async throws -> DescribeDBClusterSSLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBClusterSSLWithOptions(request as! DescribeDBClusterSSLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterSpaceSummaryWithOptions(_ request: DescribeDBClusterSpaceSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBClusterSpaceSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
            "action": "DescribeDBClusterSpaceSummary",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBClusterSpaceSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterSpaceSummary(_ request: DescribeDBClusterSpaceSummaryRequest) async throws -> DescribeDBClusterSpaceSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBClusterSpaceSummaryWithOptions(request as! DescribeDBClusterSpaceSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterStatusWithOptions(_ request: DescribeDBClusterStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBClusterStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBClusterStatus",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBClusterStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusterStatus(_ request: DescribeDBClusterStatusRequest) async throws -> DescribeDBClusterStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBClusterStatusWithOptions(request as! DescribeDBClusterStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClustersWithOptions(_ request: DescribeDBClustersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBClustersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterDescription)) {
            query["DBClusterDescription"] = request.DBClusterDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterIds)) {
            query["DBClusterIds"] = request.DBClusterIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterStatus)) {
            query["DBClusterStatus"] = request.DBClusterStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterVersion)) {
            query["DBClusterVersion"] = request.DBClusterVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productVersion)) {
            query["ProductVersion"] = request.productVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBClusters",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBClusters(_ request: DescribeDBClustersRequest) async throws -> DescribeDBClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBClustersWithOptions(request as! DescribeDBClustersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBResourceGroupWithOptions(_ request: DescribeDBResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            query["GroupType"] = request.groupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBResourceGroup",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBResourceGroup(_ request: DescribeDBResourceGroupRequest) async throws -> DescribeDBResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBResourceGroupWithOptions(request as! DescribeDBResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiagnosisDimensionsWithOptions(_ request: DescribeDiagnosisDimensionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDiagnosisDimensionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryCondition)) {
            query["QueryCondition"] = request.queryCondition ?? "";
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
            "action": "DescribeDiagnosisDimensions",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDiagnosisDimensionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiagnosisDimensions(_ request: DescribeDiagnosisDimensionsRequest) async throws -> DescribeDiagnosisDimensionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDiagnosisDimensionsWithOptions(request as! DescribeDiagnosisDimensionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiagnosisRecordsWithOptions(_ request: DescribeDiagnosisRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDiagnosisRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientIp)) {
            query["ClientIp"] = request.clientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.database)) {
            query["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxPeakMemory)) {
            query["MaxPeakMemory"] = request.maxPeakMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.maxScanSize)) {
            query["MaxScanSize"] = request.maxScanSize!;
        }
        if (!TeaUtils.Client.isUnset(request.minPeakMemory)) {
            query["MinPeakMemory"] = request.minPeakMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.minScanSize)) {
            query["MinScanSize"] = request.minScanSize!;
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
        if (!TeaUtils.Client.isUnset(request.patternId)) {
            query["PatternId"] = request.patternId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryCondition)) {
            query["QueryCondition"] = request.queryCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroup)) {
            query["ResourceGroup"] = request.resourceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDiagnosisRecords",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDiagnosisRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiagnosisRecords(_ request: DescribeDiagnosisRecordsRequest) async throws -> DescribeDiagnosisRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDiagnosisRecordsWithOptions(request as! DescribeDiagnosisRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiagnosisSQLInfoWithOptions(_ request: DescribeDiagnosisSQLInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDiagnosisSQLInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processId)) {
            query["ProcessId"] = request.processId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processRcHost)) {
            query["ProcessRcHost"] = request.processRcHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processStartTime)) {
            query["ProcessStartTime"] = request.processStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.processState)) {
            query["ProcessState"] = request.processState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDiagnosisSQLInfo",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDiagnosisSQLInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiagnosisSQLInfo(_ request: DescribeDiagnosisSQLInfoRequest) async throws -> DescribeDiagnosisSQLInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDiagnosisSQLInfoWithOptions(request as! DescribeDiagnosisSQLInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDownloadRecordsWithOptions(_ request: DescribeDownloadRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDownloadRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDownloadRecords",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDownloadRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDownloadRecords(_ request: DescribeDownloadRecordsRequest) async throws -> DescribeDownloadRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDownloadRecordsWithOptions(request as! DescribeDownloadRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElasticPlanAttributeWithOptions(_ request: DescribeElasticPlanAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeElasticPlanAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticPlanName)) {
            query["ElasticPlanName"] = request.elasticPlanName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeElasticPlanAttribute",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeElasticPlanAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElasticPlanAttribute(_ request: DescribeElasticPlanAttributeRequest) async throws -> DescribeElasticPlanAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeElasticPlanAttributeWithOptions(request as! DescribeElasticPlanAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElasticPlanJobsWithOptions(_ request: DescribeElasticPlanJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeElasticPlanJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticPlanName)) {
            query["ElasticPlanName"] = request.elasticPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            query["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeElasticPlanJobs",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeElasticPlanJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElasticPlanJobs(_ request: DescribeElasticPlanJobsRequest) async throws -> DescribeElasticPlanJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeElasticPlanJobsWithOptions(request as! DescribeElasticPlanJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElasticPlanSpecificationsWithOptions(_ request: DescribeElasticPlanSpecificationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeElasticPlanSpecificationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            query["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeElasticPlanSpecifications",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeElasticPlanSpecificationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElasticPlanSpecifications(_ request: DescribeElasticPlanSpecificationsRequest) async throws -> DescribeElasticPlanSpecificationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeElasticPlanSpecificationsWithOptions(request as! DescribeElasticPlanSpecificationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElasticPlansWithOptions(_ request: DescribeElasticPlansRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeElasticPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticPlanName)) {
            query["ElasticPlanName"] = request.elasticPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            query["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeElasticPlans",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeElasticPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeElasticPlans(_ request: DescribeElasticPlansRequest) async throws -> DescribeElasticPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeElasticPlansWithOptions(request as! DescribeElasticPlansRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnabledPrivilegesWithOptions(_ request: DescribeEnabledPrivilegesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEnabledPrivilegesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEnabledPrivileges",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEnabledPrivilegesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEnabledPrivileges(_ request: DescribeEnabledPrivilegesRequest) async throws -> DescribeEnabledPrivilegesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEnabledPrivilegesWithOptions(request as! DescribeEnabledPrivilegesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEssdCacheConfigWithOptions(_ request: DescribeEssdCacheConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEssdCacheConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEssdCacheConfig",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEssdCacheConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEssdCacheConfig(_ request: DescribeEssdCacheConfigRequest) async throws -> DescribeEssdCacheConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEssdCacheConfigWithOptions(request as! DescribeEssdCacheConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExcessivePrimaryKeysWithOptions(_ request: DescribeExcessivePrimaryKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeExcessivePrimaryKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
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
            "action": "DescribeExcessivePrimaryKeys",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeExcessivePrimaryKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExcessivePrimaryKeys(_ request: DescribeExcessivePrimaryKeysRequest) async throws -> DescribeExcessivePrimaryKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeExcessivePrimaryKeysWithOptions(request as! DescribeExcessivePrimaryKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExecutorDetectionWithOptions(_ request: DescribeExecutorDetectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeExecutorDetectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeExecutorDetection",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeExecutorDetectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExecutorDetection(_ request: DescribeExecutorDetectionRequest) async throws -> DescribeExecutorDetectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeExecutorDetectionWithOptions(request as! DescribeExecutorDetectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHistoryTasksWithOptions(_ request: DescribeHistoryTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHistoryTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromExecTime)) {
            query["FromExecTime"] = request.fromExecTime!;
        }
        if (!TeaUtils.Client.isUnset(request.fromStartTime)) {
            query["FromStartTime"] = request.fromStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toExecTime)) {
            query["ToExecTime"] = request.toExecTime!;
        }
        if (!TeaUtils.Client.isUnset(request.toStartTime)) {
            query["ToStartTime"] = request.toStartTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHistoryTasks",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHistoryTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHistoryTasks(_ request: DescribeHistoryTasksRequest) async throws -> DescribeHistoryTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHistoryTasksWithOptions(request as! DescribeHistoryTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHistoryTasksStatWithOptions(_ request: DescribeHistoryTasksStatRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHistoryTasksStatResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromExecTime)) {
            query["FromExecTime"] = request.fromExecTime!;
        }
        if (!TeaUtils.Client.isUnset(request.fromStartTime)) {
            query["FromStartTime"] = request.fromStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toExecTime)) {
            query["ToExecTime"] = request.toExecTime!;
        }
        if (!TeaUtils.Client.isUnset(request.toStartTime)) {
            query["ToStartTime"] = request.toStartTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHistoryTasksStat",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHistoryTasksStatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHistoryTasksStat(_ request: DescribeHistoryTasksStatRequest) async throws -> DescribeHistoryTasksStatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHistoryTasksStatWithOptions(request as! DescribeHistoryTasksStatRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInclinedNodesWithOptions(_ request: DescribeInclinedNodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInclinedNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
            "action": "DescribeInclinedNodes",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInclinedNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInclinedNodes(_ request: DescribeInclinedNodesRequest) async throws -> DescribeInclinedNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInclinedNodesWithOptions(request as! DescribeInclinedNodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInclinedTablesWithOptions(_ request: DescribeInclinedTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInclinedTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableType)) {
            query["TableType"] = request.tableType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInclinedTables",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInclinedTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInclinedTables(_ request: DescribeInclinedTablesRequest) async throws -> DescribeInclinedTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInclinedTablesWithOptions(request as! DescribeInclinedTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobResourceUsageWithOptions(_ request: DescribeJobResourceUsageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeJobResourceUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
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
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeJobResourceUsage",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeJobResourceUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobResourceUsage(_ request: DescribeJobResourceUsageRequest) async throws -> DescribeJobResourceUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeJobResourceUsageWithOptions(request as! DescribeJobResourceUsageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKernelVersionWithOptions(_ request: DescribeKernelVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeKernelVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
            "action": "DescribeKernelVersion",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeKernelVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKernelVersion(_ request: DescribeKernelVersionRequest) async throws -> DescribeKernelVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeKernelVersionWithOptions(request as! DescribeKernelVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLLMAnswerWithOptions(_ request: DescribeLLMAnswerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLLMAnswerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
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
            "action": "DescribeLLMAnswer",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLLMAnswerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLLMAnswer(_ request: DescribeLLMAnswerRequest) async throws -> DescribeLLMAnswerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLLMAnswerWithOptions(request as! DescribeLLMAnswerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLLMSimilarQuestionsWithOptions(_ request: DescribeLLMSimilarQuestionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLLMSimilarQuestionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
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
            "action": "DescribeLLMSimilarQuestions",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLLMSimilarQuestionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLLMSimilarQuestions(_ request: DescribeLLMSimilarQuestionsRequest) async throws -> DescribeLLMSimilarQuestionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLLMSimilarQuestionsWithOptions(request as! DescribeLLMSimilarQuestionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLakeCacheSizeWithOptions(_ request: DescribeLakeCacheSizeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLakeCacheSizeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLakeCacheSize",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLakeCacheSizeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLakeCacheSize(_ request: DescribeLakeCacheSizeRequest) async throws -> DescribeLakeCacheSizeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLakeCacheSizeWithOptions(request as! DescribeLakeCacheSizeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMVRecommendResultsWithOptions(_ request: DescribeMVRecommendResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMVRecommendResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionInner)) {
            query["ActionInner"] = request.actionInner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["From"] = request.from ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subQueryId)) {
            query["SubQueryId"] = request.subQueryId!;
        }
        if (!TeaUtils.Client.isUnset(request.subtaskId)) {
            query["SubtaskId"] = request.subtaskId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMVRecommendResults",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMVRecommendResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMVRecommendResults(_ request: DescribeMVRecommendResultsRequest) async throws -> DescribeMVRecommendResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMVRecommendResultsWithOptions(request as! DescribeMVRecommendResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMvRecommendSubTasksWithOptions(_ request: DescribeMvRecommendSubTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMvRecommendSubTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionInner)) {
            query["ActionInner"] = request.actionInner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["From"] = request.from ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subtaskId)) {
            query["SubtaskId"] = request.subtaskId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMvRecommendSubTasks",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMvRecommendSubTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMvRecommendSubTasks(_ request: DescribeMvRecommendSubTasksRequest) async throws -> DescribeMvRecommendSubTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMvRecommendSubTasksWithOptions(request as! DescribeMvRecommendSubTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMvRecommendTasksWithOptions(_ request: DescribeMvRecommendTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMvRecommendTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionInner)) {
            query["ActionInner"] = request.actionInner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["From"] = request.from ?? "";
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
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMvRecommendTasks",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMvRecommendTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMvRecommendTasks(_ request: DescribeMvRecommendTasksRequest) async throws -> DescribeMvRecommendTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMvRecommendTasksWithOptions(request as! DescribeMvRecommendTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOperatorPermissionWithOptions(_ request: DescribeOperatorPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOperatorPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "DescribeOperatorPermission",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOperatorPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOperatorPermission(_ request: DescribeOperatorPermissionRequest) async throws -> DescribeOperatorPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOperatorPermissionWithOptions(request as! DescribeOperatorPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOversizeNonPartitionTableInfosWithOptions(_ request: DescribeOversizeNonPartitionTableInfosRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOversizeNonPartitionTableInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
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
            "action": "DescribeOversizeNonPartitionTableInfos",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOversizeNonPartitionTableInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOversizeNonPartitionTableInfos(_ request: DescribeOversizeNonPartitionTableInfosRequest) async throws -> DescribeOversizeNonPartitionTableInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOversizeNonPartitionTableInfosWithOptions(request as! DescribeOversizeNonPartitionTableInfosRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePatternPerformanceWithOptions(_ request: DescribePatternPerformanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePatternPerformanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.patternId)) {
            query["PatternId"] = request.patternId ?? "";
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
            "action": "DescribePatternPerformance",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePatternPerformanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePatternPerformance(_ request: DescribePatternPerformanceRequest) async throws -> DescribePatternPerformanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePatternPerformanceWithOptions(request as! DescribePatternPerformanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePerformanceViewAttributeWithOptions(_ request: DescribePerformanceViewAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePerformanceViewAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.viewName)) {
            query["ViewName"] = request.viewName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePerformanceViewAttribute",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePerformanceViewAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePerformanceViewAttribute(_ request: DescribePerformanceViewAttributeRequest) async throws -> DescribePerformanceViewAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePerformanceViewAttributeWithOptions(request as! DescribePerformanceViewAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePerformanceViewsWithOptions(_ request: DescribePerformanceViewsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePerformanceViewsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
            "action": "DescribePerformanceViews",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePerformanceViewsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePerformanceViews(_ request: DescribePerformanceViewsRequest) async throws -> DescribePerformanceViewsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePerformanceViewsWithOptions(request as! DescribePerformanceViewsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["AcceptLanguage"] = request.acceptLanguage ?? "";
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
            "action": "DescribeRegions",
            "version": "2021-12-01",
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
    public func describeResourceGroupSpecWithOptions(_ request: DescribeResourceGroupSpecRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceGroupSpecResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupType)) {
            query["ResourceGroupType"] = request.resourceGroupType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceGroupSpec",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceGroupSpecResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceGroupSpec(_ request: DescribeResourceGroupSpecRequest) async throws -> DescribeResourceGroupSpecResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceGroupSpecWithOptions(request as! DescribeResourceGroupSpecRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResultExportConfigWithOptions(_ request: DescribeResultExportConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResultExportConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportType)) {
            query["ExportType"] = request.exportType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResultExportConfig",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResultExportConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResultExportConfig(_ request: DescribeResultExportConfigRequest) async throws -> DescribeResultExportConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResultExportConfigWithOptions(request as! DescribeResultExportConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSQLPatternsWithOptions(_ request: DescribeSQLPatternsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSQLPatternsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSQLPatterns",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSQLPatternsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSQLPatterns(_ request: DescribeSQLPatternsRequest) async throws -> DescribeSQLPatternsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSQLPatternsWithOptions(request as! DescribeSQLPatternsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSQLWebSocketDomainWithOptions(_ request: DescribeSQLWebSocketDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSQLWebSocketDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.module)) {
            query["Module"] = request.module ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSQLWebSocketDomain",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSQLWebSocketDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSQLWebSocketDomain(_ request: DescribeSQLWebSocketDomainRequest) async throws -> DescribeSQLWebSocketDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSQLWebSocketDomainWithOptions(request as! DescribeSQLWebSocketDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSchemasWithOptions(_ request: DescribeSchemasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSchemasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSchemas",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSchemasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSchemas(_ request: DescribeSchemasRequest) async throws -> DescribeSchemasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSchemasWithOptions(request as! DescribeSchemasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkAppDiagnosisInfoWithOptions(_ request: DescribeSparkAppDiagnosisInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSparkAppDiagnosisInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSparkAppDiagnosisInfo",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSparkAppDiagnosisInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkAppDiagnosisInfo(_ request: DescribeSparkAppDiagnosisInfoRequest) async throws -> DescribeSparkAppDiagnosisInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSparkAppDiagnosisInfoWithOptions(request as! DescribeSparkAppDiagnosisInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkAppTypeWithOptions(_ request: DescribeSparkAppTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSparkAppTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSparkAppType",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSparkAppTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkAppType(_ request: DescribeSparkAppTypeRequest) async throws -> DescribeSparkAppTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSparkAppTypeWithOptions(request as! DescribeSparkAppTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkAuditLogRecordsWithOptions(_ request: DescribeSparkAuditLogRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSparkAuditLogRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientIp)) {
            query["ClientIp"] = request.clientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
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
        if (!TeaUtils.Client.isUnset(request.processId)) {
            query["ProcessId"] = request.processId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUser)) {
            query["ProxyUser"] = request.proxyUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            query["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.SQLText)) {
            query["SQLText"] = request.SQLText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statementId)) {
            query["StatementId"] = request.statementId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statementSource)) {
            query["StatementSource"] = request.statementSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalTime)) {
            query["TotalTime"] = request.totalTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            query["User"] = request.user ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSparkAuditLogRecords",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSparkAuditLogRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkAuditLogRecords(_ request: DescribeSparkAuditLogRecordsRequest) async throws -> DescribeSparkAuditLogRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSparkAuditLogRecordsWithOptions(request as! DescribeSparkAuditLogRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkCodeLogWithOptions(_ request: DescribeSparkCodeLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSparkCodeLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSparkCodeLog",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSparkCodeLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkCodeLog(_ request: DescribeSparkCodeLogRequest) async throws -> DescribeSparkCodeLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSparkCodeLogWithOptions(request as! DescribeSparkCodeLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkCodeOutputWithOptions(_ request: DescribeSparkCodeOutputRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSparkCodeOutputResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSparkCodeOutput",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSparkCodeOutputResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkCodeOutput(_ request: DescribeSparkCodeOutputRequest) async throws -> DescribeSparkCodeOutputResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSparkCodeOutputWithOptions(request as! DescribeSparkCodeOutputRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkCodeWebUiWithOptions(_ request: DescribeSparkCodeWebUiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSparkCodeWebUiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSparkCodeWebUi",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSparkCodeWebUiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkCodeWebUi(_ request: DescribeSparkCodeWebUiRequest) async throws -> DescribeSparkCodeWebUiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSparkCodeWebUiWithOptions(request as! DescribeSparkCodeWebUiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkSQLDiagnosisAttributeWithOptions(_ request: DescribeSparkSQLDiagnosisAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSparkSQLDiagnosisAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.innerQueryId)) {
            query["InnerQueryId"] = request.innerQueryId!;
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSparkSQLDiagnosisAttribute",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSparkSQLDiagnosisAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkSQLDiagnosisAttribute(_ request: DescribeSparkSQLDiagnosisAttributeRequest) async throws -> DescribeSparkSQLDiagnosisAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSparkSQLDiagnosisAttributeWithOptions(request as! DescribeSparkSQLDiagnosisAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkSQLDiagnosisListWithOptions(_ request: DescribeSparkSQLDiagnosisListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSparkSQLDiagnosisListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxStartTime)) {
            query["MaxStartTime"] = request.maxStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minStartTime)) {
            query["MinStartTime"] = request.minStartTime ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statementId)) {
            query["StatementId"] = request.statementId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSparkSQLDiagnosisList",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSparkSQLDiagnosisListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSparkSQLDiagnosisList(_ request: DescribeSparkSQLDiagnosisListRequest) async throws -> DescribeSparkSQLDiagnosisListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSparkSQLDiagnosisListWithOptions(request as! DescribeSparkSQLDiagnosisListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSqlPatternWithOptions(_ request: DescribeSqlPatternRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSqlPatternResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sqlPattern)) {
            query["SqlPattern"] = request.sqlPattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSqlPattern",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSqlPatternResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSqlPattern(_ request: DescribeSqlPatternRequest) async throws -> DescribeSqlPatternResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSqlPatternWithOptions(request as! DescribeSqlPatternRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStorageResourceUsageWithOptions(_ request: DescribeStorageResourceUsageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStorageResourceUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStorageResourceUsage",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeStorageResourceUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStorageResourceUsage(_ request: DescribeStorageResourceUsageRequest) async throws -> DescribeStorageResourceUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeStorageResourceUsageWithOptions(request as! DescribeStorageResourceUsageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTableAccessCountWithOptions(_ request: DescribeTableAccessCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTableAccessCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTableAccessCount",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTableAccessCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTableAccessCount(_ request: DescribeTableAccessCountRequest) async throws -> DescribeTableAccessCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTableAccessCountWithOptions(request as! DescribeTableAccessCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTableDetailWithOptions(_ request: DescribeTableDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTableDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTableDetail",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTableDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTableDetail(_ request: DescribeTableDetailRequest) async throws -> DescribeTableDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTableDetailWithOptions(request as! DescribeTableDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTablePartitionDiagnoseWithOptions(_ request: DescribeTablePartitionDiagnoseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTablePartitionDiagnoseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTablePartitionDiagnose",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTablePartitionDiagnoseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTablePartitionDiagnose(_ request: DescribeTablePartitionDiagnoseRequest) async throws -> DescribeTablePartitionDiagnoseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTablePartitionDiagnoseWithOptions(request as! DescribeTablePartitionDiagnoseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTableStatisticsWithOptions(_ request: DescribeTableStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTableStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTableStatistics",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTableStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTableStatistics(_ request: DescribeTableStatisticsRequest) async throws -> DescribeTableStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTableStatisticsWithOptions(request as! DescribeTableStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTablesWithOptions(_ request: DescribeTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTables",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTables(_ request: DescribeTablesRequest) async throws -> DescribeTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTablesWithOptions(request as! DescribeTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserQuotaWithOptions(_ request: DescribeUserQuotaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserQuota",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserQuota(_ request: DescribeUserQuotaRequest) async throws -> DescribeUserQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserQuotaWithOptions(request as! DescribeUserQuotaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeViewJobsWithOptions(_ request: DescribeViewJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeViewJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterOwner)) {
            query["FilterOwner"] = request.filterOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterViewName)) {
            query["FilterViewName"] = request.filterViewName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterViewType)) {
            query["FilterViewType"] = request.filterViewType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeViewJobs",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeViewJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeViewJobs(_ request: DescribeViewJobsRequest) async throws -> DescribeViewJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeViewJobsWithOptions(request as! DescribeViewJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWorkerDetectionWithOptions(_ request: DescribeWorkerDetectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWorkerDetectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
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
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWorkerDetection",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWorkerDetectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWorkerDetection(_ request: DescribeWorkerDetectionRequest) async throws -> DescribeWorkerDetectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeWorkerDetectionWithOptions(request as! DescribeWorkerDetectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachUserENIWithOptions(_ request: DetachUserENIRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachUserENIResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachUserENI",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachUserENIResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachUserENI(_ request: DetachUserENIRequest) async throws -> DetachUserENIResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachUserENIWithOptions(request as! DetachUserENIRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableAdviceServiceWithOptions(_ request: DisableAdviceServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableAdviceServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableAdviceService",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableAdviceServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableAdviceService(_ request: DisableAdviceServiceRequest) async throws -> DisableAdviceServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableAdviceServiceWithOptions(request as! DisableAdviceServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableElasticPlanWithOptions(_ request: DisableElasticPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableElasticPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticPlanName)) {
            query["ElasticPlanName"] = request.elasticPlanName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableElasticPlan",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableElasticPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableElasticPlan(_ request: DisableElasticPlanRequest) async throws -> DisableElasticPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableElasticPlanWithOptions(request as! DisableElasticPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadDiagnosisRecordsWithOptions(_ request: DownloadDiagnosisRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DownloadDiagnosisRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientIp)) {
            query["ClientIp"] = request.clientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.database)) {
            query["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxPeakMemory)) {
            query["MaxPeakMemory"] = request.maxPeakMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.maxScanSize)) {
            query["MaxScanSize"] = request.maxScanSize!;
        }
        if (!TeaUtils.Client.isUnset(request.minPeakMemory)) {
            query["MinPeakMemory"] = request.minPeakMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.minScanSize)) {
            query["MinScanSize"] = request.minScanSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryCondition)) {
            query["QueryCondition"] = request.queryCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroup)) {
            query["ResourceGroup"] = request.resourceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DownloadDiagnosisRecords",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DownloadDiagnosisRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadDiagnosisRecords(_ request: DownloadDiagnosisRecordsRequest) async throws -> DownloadDiagnosisRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await downloadDiagnosisRecordsWithOptions(request as! DownloadDiagnosisRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadInstanceCACertificateWithOptions(_ request: DownloadInstanceCACertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DownloadInstanceCACertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DownloadInstanceCACertificate",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DownloadInstanceCACertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadInstanceCACertificate(_ request: DownloadInstanceCACertificateRequest) async throws -> DownloadInstanceCACertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await downloadInstanceCACertificateWithOptions(request as! DownloadInstanceCACertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableAdviceServiceWithOptions(_ request: EnableAdviceServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableAdviceServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableAdviceService",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableAdviceServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableAdviceService(_ request: EnableAdviceServiceRequest) async throws -> EnableAdviceServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableAdviceServiceWithOptions(request as! EnableAdviceServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableElasticPlanWithOptions(_ request: EnableElasticPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableElasticPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticPlanName)) {
            query["ElasticPlanName"] = request.elasticPlanName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableElasticPlan",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableElasticPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableElasticPlan(_ request: EnableElasticPlanRequest) async throws -> EnableElasticPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableElasticPlanWithOptions(request as! EnableElasticPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeSparkReplStatementWithOptions(_ request: ExecuteSparkReplStatementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteSparkReplStatementResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeType)) {
            body["CodeType"] = request.codeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteSparkReplStatement",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteSparkReplStatementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeSparkReplStatement(_ request: ExecuteSparkReplStatementRequest) async throws -> ExecuteSparkReplStatementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeSparkReplStatementWithOptions(request as! ExecuteSparkReplStatementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeSparkWarehouseBatchSQLWithOptions(_ request: ExecuteSparkWarehouseBatchSQLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteSparkWarehouseBatchSQLResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agency)) {
            body["Agency"] = request.agency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executeResultLimit)) {
            body["ExecuteResultLimit"] = request.executeResultLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.executeTimeLimitInSeconds)) {
            body["ExecuteTimeLimitInSeconds"] = request.executeTimeLimitInSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            body["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeConfig)) {
            body["RuntimeConfig"] = request.runtimeConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            body["Schema"] = request.schema ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteSparkWarehouseBatchSQL",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteSparkWarehouseBatchSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeSparkWarehouseBatchSQL(_ request: ExecuteSparkWarehouseBatchSQLRequest) async throws -> ExecuteSparkWarehouseBatchSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeSparkWarehouseBatchSQLWithOptions(request as! ExecuteSparkWarehouseBatchSQLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func existRunningSQLEngineWithOptions(_ request: ExistRunningSQLEngineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExistRunningSQLEngineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            body["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExistRunningSQLEngine",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExistRunningSQLEngineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func existRunningSQLEngine(_ request: ExistRunningSQLEngineRequest) async throws -> ExistRunningSQLEngineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await existRunningSQLEngineWithOptions(request as! ExistRunningSQLEngineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getADBSparkNecessaryRAMPermissionsWithOptions(_ request: GetADBSparkNecessaryRAMPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetADBSparkNecessaryRAMPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetADBSparkNecessaryRAMPermissions",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetADBSparkNecessaryRAMPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getADBSparkNecessaryRAMPermissions(_ request: GetADBSparkNecessaryRAMPermissionsRequest) async throws -> GetADBSparkNecessaryRAMPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getADBSparkNecessaryRAMPermissionsWithOptions(request as! GetADBSparkNecessaryRAMPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApsManagedDatabasesWithOptions(_ request: GetApsManagedDatabasesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApsManagedDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApsManagedDatabases",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApsManagedDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApsManagedDatabases(_ request: GetApsManagedDatabasesRequest) async throws -> GetApsManagedDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApsManagedDatabasesWithOptions(request as! GetApsManagedDatabasesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCreateTableSQLWithOptions(_ request: GetCreateTableSQLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCreateTableSQLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCreateTableSQL",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCreateTableSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCreateTableSQL(_ request: GetCreateTableSQLRequest) async throws -> GetCreateTableSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCreateTableSQLWithOptions(request as! GetCreateTableSQLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseObjectsWithOptions(_ request: GetDatabaseObjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatabaseObjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterOwner)) {
            query["FilterOwner"] = request.filterOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterSchemaName)) {
            query["FilterSchemaName"] = request.filterSchemaName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatabaseObjects",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatabaseObjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseObjects(_ request: GetDatabaseObjectsRequest) async throws -> GetDatabaseObjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDatabaseObjectsWithOptions(request as! GetDatabaseObjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLakeStorageWithOptions(_ request: GetLakeStorageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLakeStorageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lakeStorageId)) {
            query["LakeStorageId"] = request.lakeStorageId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLakeStorage",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLakeStorageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLakeStorage(_ request: GetLakeStorageRequest) async throws -> GetLakeStorageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLakeStorageWithOptions(request as! GetLakeStorageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppAttemptLogWithOptions(_ request: GetSparkAppAttemptLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkAppAttemptLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attemptId)) {
            body["AttemptId"] = request.attemptId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logLength)) {
            body["LogLength"] = request.logLength!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkAppAttemptLog",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkAppAttemptLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppAttemptLog(_ request: GetSparkAppAttemptLogRequest) async throws -> GetSparkAppAttemptLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkAppAttemptLogWithOptions(request as! GetSparkAppAttemptLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppInfoWithOptions(_ request: GetSparkAppInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkAppInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkAppInfo",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkAppInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppInfo(_ request: GetSparkAppInfoRequest) async throws -> GetSparkAppInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkAppInfoWithOptions(request as! GetSparkAppInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppLogWithOptions(_ request: GetSparkAppLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkAppLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logLength)) {
            body["LogLength"] = request.logLength!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkAppLog",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkAppLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppLog(_ request: GetSparkAppLogRequest) async throws -> GetSparkAppLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkAppLogWithOptions(request as! GetSparkAppLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppMetricsWithOptions(_ request: GetSparkAppMetricsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkAppMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkAppMetrics",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkAppMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppMetrics(_ request: GetSparkAppMetricsRequest) async throws -> GetSparkAppMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkAppMetricsWithOptions(request as! GetSparkAppMetricsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppStateWithOptions(_ request: GetSparkAppStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkAppStateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkAppState",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkAppStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppState(_ request: GetSparkAppStateRequest) async throws -> GetSparkAppStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkAppStateWithOptions(request as! GetSparkAppStateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppWebUiAddressWithOptions(_ request: GetSparkAppWebUiAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkAppWebUiAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkAppWebUiAddress",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkAppWebUiAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkAppWebUiAddress(_ request: GetSparkAppWebUiAddressRequest) async throws -> GetSparkAppWebUiAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkAppWebUiAddressWithOptions(request as! GetSparkAppWebUiAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkConfigLogPathWithOptions(_ request: GetSparkConfigLogPathRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkConfigLogPathResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkConfigLogPath",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkConfigLogPathResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkConfigLogPath(_ request: GetSparkConfigLogPathRequest) async throws -> GetSparkConfigLogPathResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkConfigLogPathWithOptions(request as! GetSparkConfigLogPathRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkLogAnalyzeTaskWithOptions(_ request: GetSparkLogAnalyzeTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkLogAnalyzeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkLogAnalyzeTask",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkLogAnalyzeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkLogAnalyzeTask(_ request: GetSparkLogAnalyzeTaskRequest) async throws -> GetSparkLogAnalyzeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkLogAnalyzeTaskWithOptions(request as! GetSparkLogAnalyzeTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkReplSessionWithOptions(_ request: GetSparkReplSessionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkReplSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkReplSession",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkReplSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkReplSession(_ request: GetSparkReplSessionRequest) async throws -> GetSparkReplSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkReplSessionWithOptions(request as! GetSparkReplSessionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkReplStatementWithOptions(_ request: GetSparkReplStatementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkReplStatementResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId!;
        }
        if (!TeaUtils.Client.isUnset(request.statementId)) {
            body["StatementId"] = request.statementId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkReplStatement",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkReplStatementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkReplStatement(_ request: GetSparkReplStatementRequest) async throws -> GetSparkReplStatementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkReplStatementWithOptions(request as! GetSparkReplStatementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkSQLEngineStateWithOptions(_ request: GetSparkSQLEngineStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkSQLEngineStateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            body["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkSQLEngineState",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkSQLEngineStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkSQLEngineState(_ request: GetSparkSQLEngineStateRequest) async throws -> GetSparkSQLEngineStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkSQLEngineStateWithOptions(request as! GetSparkSQLEngineStateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkTemplateFileContentWithOptions(_ request: GetSparkTemplateFileContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkTemplateFileContentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkTemplateFileContent",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkTemplateFileContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkTemplateFileContent(_ request: GetSparkTemplateFileContentRequest) async throws -> GetSparkTemplateFileContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkTemplateFileContentWithOptions(request as! GetSparkTemplateFileContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkTemplateFolderTreeWithOptions(_ request: GetSparkTemplateFolderTreeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkTemplateFolderTreeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkTemplateFolderTree",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkTemplateFolderTreeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkTemplateFolderTree(_ request: GetSparkTemplateFolderTreeRequest) async throws -> GetSparkTemplateFolderTreeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkTemplateFolderTreeWithOptions(request as! GetSparkTemplateFolderTreeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkTemplateFullTreeWithOptions(_ request: GetSparkTemplateFullTreeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkTemplateFullTreeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkTemplateFullTree",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkTemplateFullTreeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkTemplateFullTree(_ request: GetSparkTemplateFullTreeRequest) async throws -> GetSparkTemplateFullTreeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkTemplateFullTreeWithOptions(request as! GetSparkTemplateFullTreeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkWarehouseBatchSQLWithOptions(_ request: GetSparkWarehouseBatchSQLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkWarehouseBatchSQLResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agency)) {
            body["Agency"] = request.agency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryId)) {
            body["QueryId"] = request.queryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkWarehouseBatchSQL",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkWarehouseBatchSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkWarehouseBatchSQL(_ request: GetSparkWarehouseBatchSQLRequest) async throws -> GetSparkWarehouseBatchSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkWarehouseBatchSQLWithOptions(request as! GetSparkWarehouseBatchSQLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableWithOptions(_ request: GetTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTable",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTable(_ request: GetTableRequest) async throws -> GetTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTableWithOptions(request as! GetTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableColumnsWithOptions(_ request: GetTableColumnsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableColumnsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnName)) {
            query["ColumnName"] = request.columnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableColumns",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableColumnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableColumns(_ request: GetTableColumnsRequest) async throws -> GetTableColumnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTableColumnsWithOptions(request as! GetTableColumnsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableDDLWithOptions(_ request: GetTableDDLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableDDLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableDDL",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableDDLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableDDL(_ request: GetTableDDLRequest) async throws -> GetTableDDLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTableDDLWithOptions(request as! GetTableDDLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableObjectsWithOptions(_ request: GetTableObjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableObjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterDescription)) {
            query["FilterDescription"] = request.filterDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterOwner)) {
            query["FilterOwner"] = request.filterOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterTblName)) {
            query["FilterTblName"] = request.filterTblName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterTblType)) {
            query["FilterTblType"] = request.filterTblType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableObjects",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableObjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableObjects(_ request: GetTableObjectsRequest) async throws -> GetTableObjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTableObjectsWithOptions(request as! GetTableObjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getViewDDLWithOptions(_ request: GetViewDDLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetViewDDLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.viewName)) {
            query["ViewName"] = request.viewName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetViewDDL",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetViewDDLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getViewDDL(_ request: GetViewDDLRequest) async throws -> GetViewDDLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getViewDDLWithOptions(request as! GetViewDDLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getViewObjectsWithOptions(_ request: GetViewObjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetViewObjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterOwner)) {
            query["FilterOwner"] = request.filterOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterViewName)) {
            query["FilterViewName"] = request.filterViewName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterViewType)) {
            query["FilterViewType"] = request.filterViewType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showMvBaseTable)) {
            query["ShowMvBaseTable"] = request.showMvBaseTable!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetViewObjects",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetViewObjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getViewObjects(_ request: GetViewObjectsRequest) async throws -> GetViewObjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getViewObjectsWithOptions(request as! GetViewObjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantOperatorPermissionWithOptions(_ request: GrantOperatorPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantOperatorPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredTime)) {
            query["ExpiredTime"] = request.expiredTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.privileges)) {
            query["Privileges"] = request.privileges ?? "";
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
            "action": "GrantOperatorPermission",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantOperatorPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantOperatorPermission(_ request: GrantOperatorPermissionRequest) async throws -> GrantOperatorPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await grantOperatorPermissionWithOptions(request as! GrantOperatorPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killProcessWithOptions(_ request: KillProcessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> KillProcessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KillProcess",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KillProcessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killProcess(_ request: KillProcessRequest) async throws -> KillProcessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await killProcessWithOptions(request as! KillProcessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killSparkAppWithOptions(_ request: KillSparkAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> KillSparkAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KillSparkApp",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KillSparkAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killSparkApp(_ request: KillSparkAppRequest) async throws -> KillSparkAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await killSparkAppWithOptions(request as! KillSparkAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killSparkLogAnalyzeTaskWithOptions(_ request: KillSparkLogAnalyzeTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> KillSparkLogAnalyzeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KillSparkLogAnalyzeTask",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KillSparkLogAnalyzeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killSparkLogAnalyzeTask(_ request: KillSparkLogAnalyzeTaskRequest) async throws -> KillSparkLogAnalyzeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await killSparkLogAnalyzeTaskWithOptions(request as! KillSparkLogAnalyzeTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killSparkSQLEngineWithOptions(_ request: KillSparkSQLEngineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> KillSparkSQLEngineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            body["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KillSparkSQLEngine",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KillSparkSQLEngineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killSparkSQLEngine(_ request: KillSparkSQLEngineRequest) async throws -> KillSparkSQLEngineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await killSparkSQLEngineWithOptions(request as! KillSparkSQLEngineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApsLifecycleStrategyWithOptions(_ request: ListApsLifecycleStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApsLifecycleStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApsLifecycleStrategy",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApsLifecycleStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApsLifecycleStrategy(_ request: ListApsLifecycleStrategyRequest) async throws -> ListApsLifecycleStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApsLifecycleStrategyWithOptions(request as! ListApsLifecycleStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApsOptimizationStrategyWithOptions(_ request: ListApsOptimizationStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApsOptimizationStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApsOptimizationStrategy",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApsOptimizationStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApsOptimizationStrategy(_ request: ListApsOptimizationStrategyRequest) async throws -> ListApsOptimizationStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApsOptimizationStrategyWithOptions(request as! ListApsOptimizationStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApsOptimizationTasksWithOptions(_ request: ListApsOptimizationTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApsOptimizationTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategyType)) {
            body["StrategyType"] = request.strategyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApsOptimizationTasks",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApsOptimizationTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApsOptimizationTasks(_ request: ListApsOptimizationTasksRequest) async throws -> ListApsOptimizationTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApsOptimizationTasksWithOptions(request as! ListApsOptimizationTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApsWebhookWithOptions(_ request: ListApsWebhookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApsWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            body["JobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApsWebhook",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApsWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApsWebhook(_ request: ListApsWebhookRequest) async throws -> ListApsWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApsWebhookWithOptions(request as! ListApsWebhookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLakeStoragesWithOptions(_ request: ListLakeStoragesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLakeStoragesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLakeStorages",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLakeStoragesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLakeStorages(_ request: ListLakeStoragesRequest) async throws -> ListLakeStoragesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLakeStoragesWithOptions(request as! ListLakeStoragesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResultExportJobHistoryWithOptions(_ tmpReq: ListResultExportJobHistoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResultExportJobHistoryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListResultExportJobHistoryShrinkRequest = ListResultExportJobHistoryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.order)) {
            request.orderShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.order, "Order", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.statusList)) {
            request.statusListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.statusList, "StatusList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseUser)) {
            body["DatabaseUser"] = request.databaseUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderShrink)) {
            body["Order"] = request.orderShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroup)) {
            body["ResourceGroup"] = request.resourceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusListShrink)) {
            body["StatusList"] = request.statusListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResultExportJobHistory",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResultExportJobHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResultExportJobHistory(_ request: ListResultExportJobHistoryRequest) async throws -> ListResultExportJobHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listResultExportJobHistoryWithOptions(request as! ListResultExportJobHistoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSparkAppAttemptsWithOptions(_ request: ListSparkAppAttemptsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSparkAppAttemptsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSparkAppAttempts",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSparkAppAttemptsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSparkAppAttempts(_ request: ListSparkAppAttemptsRequest) async throws -> ListSparkAppAttemptsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSparkAppAttemptsWithOptions(request as! ListSparkAppAttemptsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSparkAppsWithOptions(_ request: ListSparkAppsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSparkAppsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filters)) {
            query["Filters"] = request.filters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            query["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSparkApps",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSparkAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSparkApps(_ request: ListSparkAppsRequest) async throws -> ListSparkAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSparkAppsWithOptions(request as! ListSparkAppsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSparkLogAnalyzeTasksWithOptions(_ request: ListSparkLogAnalyzeTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSparkLogAnalyzeTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSparkLogAnalyzeTasks",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSparkLogAnalyzeTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSparkLogAnalyzeTasks(_ request: ListSparkLogAnalyzeTasksRequest) async throws -> ListSparkLogAnalyzeTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSparkLogAnalyzeTasksWithOptions(request as! ListSparkLogAnalyzeTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSparkTemplateFileIdsWithOptions(_ request: ListSparkTemplateFileIdsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSparkTemplateFileIdsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSparkTemplateFileIds",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSparkTemplateFileIdsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSparkTemplateFileIds(_ request: ListSparkTemplateFileIdsRequest) async throws -> ListSparkTemplateFileIdsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSparkTemplateFileIdsWithOptions(request as! ListSparkTemplateFileIdsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSparkWarehouseBatchSQLWithOptions(_ request: ListSparkWarehouseBatchSQLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSparkWarehouseBatchSQLResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            body["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSparkWarehouseBatchSQL",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSparkWarehouseBatchSQLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSparkWarehouseBatchSQL(_ request: ListSparkWarehouseBatchSQLRequest) async throws -> ListSparkWarehouseBatchSQLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSparkWarehouseBatchSQLWithOptions(request as! ListSparkWarehouseBatchSQLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
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
            "version": "2021-12-01",
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
    public func loadSampleDataSetWithOptions(_ request: LoadSampleDataSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LoadSampleDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LoadSampleDataSet",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LoadSampleDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func loadSampleDataSet(_ request: LoadSampleDataSetRequest) async throws -> LoadSampleDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await loadSampleDataSetWithOptions(request as! LoadSampleDataSetRequest, runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAccountDescription",
            "version": "2021-12-01",
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
    public func modifyAccountPrivilegesWithOptions(_ tmpReq: ModifyAccountPrivilegesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAccountPrivilegesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyAccountPrivilegesShrinkRequest = ModifyAccountPrivilegesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.accountPrivileges)) {
            request.accountPrivilegesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.accountPrivileges, "AccountPrivileges", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountPrivilegesShrink)) {
            query["AccountPrivileges"] = request.accountPrivilegesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAccountPrivileges",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAccountPrivilegesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountPrivileges(_ request: ModifyAccountPrivilegesRequest) async throws -> ModifyAccountPrivilegesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAccountPrivilegesWithOptions(request as! ModifyAccountPrivilegesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApsDatasoureWithOptions(_ tmpReq: ModifyApsDatasoureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApsDatasoureResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyApsDatasoureShrinkRequest = ModifyApsDatasoureShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.kafkaInfo)) {
            request.kafkaInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.kafkaInfo, "KafkaInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.lakehouseId)) {
            request.lakehouseIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lakehouseId, "LakehouseId", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.polarDBMysqlInfo)) {
            request.polarDBMysqlInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.polarDBMysqlInfo, "PolarDBMysqlInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.rdsMysqlInfo)) {
            request.rdsMysqlInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rdsMysqlInfo, "RdsMysqlInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.slsInfo)) {
            request.slsInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.slsInfo, "SlsInfo", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceDescription)) {
            body["DatasourceDescription"] = request.datasourceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceId)) {
            body["DatasourceId"] = request.datasourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.datasourceName)) {
            body["DatasourceName"] = request.datasourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kafkaInfoShrink)) {
            body["KafkaInfo"] = request.kafkaInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lakehouseIdShrink)) {
            body["LakehouseId"] = request.lakehouseIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.polarDBMysqlInfoShrink)) {
            body["PolarDBMysqlInfo"] = request.polarDBMysqlInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsMysqlInfoShrink)) {
            body["RdsMysqlInfo"] = request.rdsMysqlInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsInfoShrink)) {
            body["SlsInfo"] = request.slsInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApsDatasoure",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApsDatasoureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApsDatasoure(_ request: ModifyApsDatasoureRequest) async throws -> ModifyApsDatasoureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApsDatasoureWithOptions(request as! ModifyApsDatasoureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApsJobWithOptions(_ request: ModifyApsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apsJobId)) {
            body["ApsJobId"] = request.apsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbList)) {
            body["DbList"] = request.dbList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionList)) {
            body["PartitionList"] = request.partitionList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApsJob",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApsJob(_ request: ModifyApsJobRequest) async throws -> ModifyApsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApsJobWithOptions(request as! ModifyApsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApsSlsADBJobWithOptions(_ tmpReq: ModifyApsSlsADBJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApsSlsADBJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyApsSlsADBJobShrinkRequest = ModifyApsSlsADBJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columns)) {
            request.columnsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columns, "Columns", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnsShrink)) {
            body["Columns"] = request.columnsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            body["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dirtyDataProcessPattern)) {
            body["DirtyDataProcessPattern"] = request.dirtyDataProcessPattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exactlyOnce)) {
            body["ExactlyOnce"] = request.exactlyOnce ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startingOffsets)) {
            body["StartingOffsets"] = request.startingOffsets ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unixTimestampConvert)) {
            body["UnixTimestampConvert"] = request.unixTimestampConvert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadId)) {
            body["WorkloadId"] = request.workloadId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadName)) {
            body["WorkloadName"] = request.workloadName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApsSlsADBJob",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApsSlsADBJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApsSlsADBJob(_ request: ModifyApsSlsADBJobRequest) async throws -> ModifyApsSlsADBJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApsSlsADBJobWithOptions(request as! ModifyApsSlsADBJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApsWorkloadNameWithOptions(_ request: ModifyApsWorkloadNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApsWorkloadNameResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadId)) {
            body["WorkloadId"] = request.workloadId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadName)) {
            body["WorkloadName"] = request.workloadName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApsWorkloadName",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApsWorkloadNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApsWorkloadName(_ request: ModifyApsWorkloadNameRequest) async throws -> ModifyApsWorkloadNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApsWorkloadNameWithOptions(request as! ModifyApsWorkloadNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAuditLogConfigWithOptions(_ request: ModifyAuditLogConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAuditLogConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auditLogStatus)) {
            query["AuditLogStatus"] = request.auditLogStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engineType)) {
            query["EngineType"] = request.engineType ?? "";
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
            "action": "ModifyAuditLogConfig",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAuditLogConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAuditLogConfig(_ request: ModifyAuditLogConfigRequest) async throws -> ModifyAuditLogConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAuditLogConfigWithOptions(request as! ModifyAuditLogConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupPolicyWithOptions(_ request: ModifyBackupPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupRetentionPeriod)) {
            query["BackupRetentionPeriod"] = request.backupRetentionPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableBackupLog)) {
            query["EnableBackupLog"] = request.enableBackupLog ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logBackupRetentionPeriod)) {
            query["LogBackupRetentionPeriod"] = request.logBackupRetentionPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupPeriod)) {
            query["PreferredBackupPeriod"] = request.preferredBackupPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupTime)) {
            query["PreferredBackupTime"] = request.preferredBackupTime ?? "";
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
            "action": "ModifyBackupPolicy",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupPolicy(_ request: ModifyBackupPolicyRequest) async throws -> ModifyBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBackupPolicyWithOptions(request as! ModifyBackupPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClickhouseEngineWithOptions(_ request: ModifyClickhouseEngineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyClickhouseEngineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cacheSize)) {
            query["CacheSize"] = request.cacheSize!;
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyClickhouseEngine",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyClickhouseEngineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClickhouseEngine(_ request: ModifyClickhouseEngineRequest) async throws -> ModifyClickhouseEngineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyClickhouseEngineWithOptions(request as! ModifyClickhouseEngineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterAccessWhiteListWithOptions(_ request: ModifyClusterAccessWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyClusterAccessWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterIPArrayAttribute)) {
            query["DBClusterIPArrayAttribute"] = request.DBClusterIPArrayAttribute ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterIPArrayName)) {
            query["DBClusterIPArrayName"] = request.DBClusterIPArrayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyMode)) {
            query["ModifyMode"] = request.modifyMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityIps)) {
            query["SecurityIps"] = request.securityIps ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyClusterAccessWhiteList",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyClusterAccessWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterAccessWhiteList(_ request: ModifyClusterAccessWhiteListRequest) async throws -> ModifyClusterAccessWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyClusterAccessWhiteListWithOptions(request as! ModifyClusterAccessWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterConnectionStringWithOptions(_ request: ModifyClusterConnectionStringRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyClusterConnectionStringResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionStringPrefix)) {
            query["ConnectionStringPrefix"] = request.connectionStringPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentConnectionString)) {
            query["CurrentConnectionString"] = request.currentConnectionString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyClusterConnectionString",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyClusterConnectionStringResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyClusterConnectionString(_ request: ModifyClusterConnectionStringRequest) async throws -> ModifyClusterConnectionStringResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyClusterConnectionStringWithOptions(request as! ModifyClusterConnectionStringRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCompactionServiceSwitchWithOptions(_ request: ModifyCompactionServiceSwitchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCompactionServiceSwitchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableCompactionService)) {
            query["EnableCompactionService"] = request.enableCompactionService!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCompactionServiceSwitch",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCompactionServiceSwitchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCompactionServiceSwitch(_ request: ModifyCompactionServiceSwitchRequest) async throws -> ModifyCompactionServiceSwitchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCompactionServiceSwitchWithOptions(request as! ModifyCompactionServiceSwitchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterWithOptions(_ request: ModifyDBClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computeResource)) {
            query["ComputeResource"] = request.computeResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableDefaultResourcePool)) {
            query["EnableDefaultResourcePool"] = request.enableDefaultResourcePool!;
        }
        if (!TeaUtils.Client.isUnset(request.productForm)) {
            query["ProductForm"] = request.productForm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reservedNodeCount)) {
            query["ReservedNodeCount"] = request.reservedNodeCount!;
        }
        if (!TeaUtils.Client.isUnset(request.reservedNodeSize)) {
            query["ReservedNodeSize"] = request.reservedNodeSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageResource)) {
            query["StorageResource"] = request.storageResource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBCluster",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBCluster(_ request: ModifyDBClusterRequest) async throws -> ModifyDBClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBClusterWithOptions(request as! ModifyDBClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterDescriptionWithOptions(_ request: ModifyDBClusterDescriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBClusterDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterDescription)) {
            query["DBClusterDescription"] = request.DBClusterDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBClusterDescription",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBClusterDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterDescription(_ request: ModifyDBClusterDescriptionRequest) async throws -> ModifyDBClusterDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBClusterDescriptionWithOptions(request as! ModifyDBClusterDescriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterMaintainTimeWithOptions(_ request: ModifyDBClusterMaintainTimeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBClusterMaintainTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maintainTime)) {
            query["MaintainTime"] = request.maintainTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBClusterMaintainTime",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBClusterMaintainTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterMaintainTime(_ request: ModifyDBClusterMaintainTimeRequest) async throws -> ModifyDBClusterMaintainTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBClusterMaintainTimeWithOptions(request as! ModifyDBClusterMaintainTimeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterResourceGroupWithOptions(_ request: ModifyDBClusterResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBClusterResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            query["NewResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "ModifyDBClusterResourceGroup",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBClusterResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterResourceGroup(_ request: ModifyDBClusterResourceGroupRequest) async throws -> ModifyDBClusterResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBClusterResourceGroupWithOptions(request as! ModifyDBClusterResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterSSLWithOptions(_ request: ModifyDBClusterSSLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBClusterSSLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionString)) {
            query["ConnectionString"] = request.connectionString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
            "action": "ModifyDBClusterSSL",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBClusterSSLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterSSL(_ request: ModifyDBClusterSSLRequest) async throws -> ModifyDBClusterSSLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBClusterSSLWithOptions(request as! ModifyDBClusterSSLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterVipWithOptions(_ request: ModifyDBClusterVipRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBClusterVipResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectString)) {
            query["ConnectString"] = request.connectString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.VPCId)) {
            query["VPCId"] = request.VPCId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBClusterVip",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBClusterVipResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBClusterVip(_ request: ModifyDBClusterVipRequest) async throws -> ModifyDBClusterVipResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBClusterVipWithOptions(request as! ModifyDBClusterVipRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBResourceGroupWithOptions(_ tmpReq: ModifyDBResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBResourceGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyDBResourceGroupShrinkRequest = ModifyDBResourceGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.engineParams)) {
            request.engineParamsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.engineParams, "EngineParams", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.gpuElasticPlan)) {
            request.gpuElasticPlanShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.gpuElasticPlan, "GpuElasticPlan", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.rayConfig)) {
            request.rayConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rayConfig, "RayConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.rules)) {
            request.rulesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rules, "Rules", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoStopInterval)) {
            query["AutoStopInterval"] = request.autoStopInterval ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterMode)) {
            query["ClusterMode"] = request.clusterMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterSizeResource)) {
            query["ClusterSizeResource"] = request.clusterSizeResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSpot)) {
            query["EnableSpot"] = request.enableSpot!;
        }
        if (!TeaUtils.Client.isUnset(request.engineParamsShrink)) {
            query["EngineParams"] = request.engineParamsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuElasticPlanShrink)) {
            query["GpuElasticPlan"] = request.gpuElasticPlanShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            query["GroupType"] = request.groupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxClusterCount)) {
            query["MaxClusterCount"] = request.maxClusterCount!;
        }
        if (!TeaUtils.Client.isUnset(request.maxComputeResource)) {
            query["MaxComputeResource"] = request.maxComputeResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxGpuQuantity)) {
            query["MaxGpuQuantity"] = request.maxGpuQuantity!;
        }
        if (!TeaUtils.Client.isUnset(request.minClusterCount)) {
            query["MinClusterCount"] = request.minClusterCount!;
        }
        if (!TeaUtils.Client.isUnset(request.minComputeResource)) {
            query["MinComputeResource"] = request.minComputeResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minGpuQuantity)) {
            query["MinGpuQuantity"] = request.minGpuQuantity!;
        }
        if (!TeaUtils.Client.isUnset(request.rayConfigShrink)) {
            query["RayConfig"] = request.rayConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rulesShrink)) {
            query["Rules"] = request.rulesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specName)) {
            query["SpecName"] = request.specName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetResourceGroupName)) {
            query["TargetResourceGroupName"] = request.targetResourceGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBResourceGroup",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBResourceGroup(_ request: ModifyDBResourceGroupRequest) async throws -> ModifyDBResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBResourceGroupWithOptions(request as! ModifyDBResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyElasticPlanWithOptions(_ request: ModifyElasticPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyElasticPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cronExpression)) {
            query["CronExpression"] = request.cronExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticPlanName)) {
            query["ElasticPlanName"] = request.elasticPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetSize)) {
            query["TargetSize"] = request.targetSize ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyElasticPlan",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyElasticPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyElasticPlan(_ request: ModifyElasticPlanRequest) async throws -> ModifyElasticPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyElasticPlanWithOptions(request as! ModifyElasticPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEssdCacheConfigWithOptions(_ request: ModifyEssdCacheConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyEssdCacheConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableEssdCache)) {
            query["EnableEssdCache"] = request.enableEssdCache!;
        }
        if (!TeaUtils.Client.isUnset(request.essdCacheSize)) {
            query["EssdCacheSize"] = request.essdCacheSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyEssdCacheConfig",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyEssdCacheConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEssdCacheConfig(_ request: ModifyEssdCacheConfigRequest) async throws -> ModifyEssdCacheConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyEssdCacheConfigWithOptions(request as! ModifyEssdCacheConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLakeCacheSizeWithOptions(_ request: ModifyLakeCacheSizeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyLakeCacheSizeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.capacity)) {
            query["Capacity"] = request.capacity!;
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableLakeCache)) {
            query["EnableLakeCache"] = request.enableLakeCache!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyLakeCacheSize",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyLakeCacheSizeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLakeCacheSize(_ request: ModifyLakeCacheSizeRequest) async throws -> ModifyLakeCacheSizeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyLakeCacheSizeWithOptions(request as! ModifyLakeCacheSizeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMaterializedViewWithOptions(_ request: ModifyMaterializedViewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyMaterializedViewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableDelayAlert)) {
            query["EnableDelayAlert"] = request.enableDelayAlert!;
        }
        if (!TeaUtils.Client.isUnset(request.enableFailureAlert)) {
            query["EnableFailureAlert"] = request.enableFailureAlert!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latencyTolerance)) {
            query["LatencyTolerance"] = request.latencyTolerance!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.queryWrite)) {
            query["QueryWrite"] = request.queryWrite!;
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
        if (!TeaUtils.Client.isUnset(request.viewName)) {
            query["ViewName"] = request.viewName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyMaterializedView",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyMaterializedViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMaterializedView(_ request: ModifyMaterializedViewRequest) async throws -> ModifyMaterializedViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyMaterializedViewWithOptions(request as! ModifyMaterializedViewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMaterializedViewRecommendWithOptions(_ request: ModifyMaterializedViewRecommendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyMaterializedViewRecommendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minRewriteQueryCount)) {
            query["MinRewriteQueryCount"] = request.minRewriteQueryCount!;
        }
        if (!TeaUtils.Client.isUnset(request.minRewriteQueryPattern)) {
            query["MinRewriteQueryPattern"] = request.minRewriteQueryPattern!;
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
        if (!TeaUtils.Client.isUnset(request.scanQueriesRange)) {
            query["ScanQueriesRange"] = request.scanQueriesRange!;
        }
        if (!TeaUtils.Client.isUnset(request.schedulingDay)) {
            query["SchedulingDay"] = request.schedulingDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedulingPolicy)) {
            query["SchedulingPolicy"] = request.schedulingPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slowQueryThreshold)) {
            query["SlowQueryThreshold"] = request.slowQueryThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.specifiedTime)) {
            query["SpecifiedTime"] = request.specifiedTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyMaterializedViewRecommend",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyMaterializedViewRecommendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMaterializedViewRecommend(_ request: ModifyMaterializedViewRecommendRequest) async throws -> ModifyMaterializedViewRecommendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyMaterializedViewRecommendWithOptions(request as! ModifyMaterializedViewRecommendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPerformanceViewWithOptions(_ tmpReq: ModifyPerformanceViewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPerformanceViewResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyPerformanceViewShrinkRequest = ModifyPerformanceViewShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.viewDetail)) {
            request.viewDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.viewDetail, "ViewDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.viewDetailShrink)) {
            query["ViewDetail"] = request.viewDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.viewName)) {
            query["ViewName"] = request.viewName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPerformanceView",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPerformanceViewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPerformanceView(_ request: ModifyPerformanceViewRequest) async throws -> ModifyPerformanceViewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyPerformanceViewWithOptions(request as! ModifyPerformanceViewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySqlTemplatePositionWithOptions(_ request: ModifySqlTemplatePositionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySqlTemplatePositionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTemplateGroupId)) {
            query["TargetTemplateGroupId"] = request.targetTemplateGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySqlTemplatePosition",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySqlTemplatePositionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySqlTemplatePosition(_ request: ModifySqlTemplatePositionRequest) async throws -> ModifySqlTemplatePositionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySqlTemplatePositionWithOptions(request as! ModifySqlTemplatePositionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserEniVswitchOptionsWithOptions(_ request: ModifyUserEniVswitchOptionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyUserEniVswitchOptionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbClusterId)) {
            query["DbClusterId"] = request.dbClusterId ?? "";
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
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.vSwitchOptions)) {
            body["VSwitchOptions"] = request.vSwitchOptions ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyUserEniVswitchOptions",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyUserEniVswitchOptionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserEniVswitchOptions(_ request: ModifyUserEniVswitchOptionsRequest) async throws -> ModifyUserEniVswitchOptionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyUserEniVswitchOptionsWithOptions(request as! ModifyUserEniVswitchOptionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func preloadSparkAppMetricsWithOptions(_ request: PreloadSparkAppMetricsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PreloadSparkAppMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PreloadSparkAppMetrics",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PreloadSparkAppMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func preloadSparkAppMetrics(_ request: PreloadSparkAppMetricsRequest) async throws -> PreloadSparkAppMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await preloadSparkAppMetricsWithOptions(request as! PreloadSparkAppMetricsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseClusterPublicConnectionWithOptions(_ request: ReleaseClusterPublicConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseClusterPublicConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseClusterPublicConnection",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseClusterPublicConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseClusterPublicConnection(_ request: ReleaseClusterPublicConnectionRequest) async throws -> ReleaseClusterPublicConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseClusterPublicConnectionWithOptions(request as! ReleaseClusterPublicConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAccountPasswordWithOptions(_ request: ResetAccountPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetAccountPasswordResponse {
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
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetAccountPassword",
            "version": "2021-12-01",
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
    public func revokeOperatorPermissionWithOptions(_ request: RevokeOperatorPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeOperatorPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "RevokeOperatorPermission",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeOperatorPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeOperatorPermission(_ request: RevokeOperatorPermissionRequest) async throws -> RevokeOperatorPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeOperatorPermissionWithOptions(request as! RevokeOperatorPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setSparkAppLogRootPathWithOptions(_ request: SetSparkAppLogRootPathRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetSparkAppLogRootPathResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossLogPath)) {
            body["OssLogPath"] = request.ossLogPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useDefaultOss)) {
            body["UseDefaultOss"] = request.useDefaultOss!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetSparkAppLogRootPath",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetSparkAppLogRootPathResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setSparkAppLogRootPath(_ request: SetSparkAppLogRootPathRequest) async throws -> SetSparkAppLogRootPathResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setSparkAppLogRootPathWithOptions(request as! SetSparkAppLogRootPathRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startApsJobWithOptions(_ request: StartApsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartApsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apsJobId)) {
            body["ApsJobId"] = request.apsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartApsJob",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartApsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startApsJob(_ request: StartApsJobRequest) async throws -> StartApsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startApsJobWithOptions(request as! StartApsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSparkReplSessionWithOptions(_ request: StartSparkReplSessionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSparkReplSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            body["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartSparkReplSession",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSparkReplSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSparkReplSession(_ request: StartSparkReplSessionRequest) async throws -> StartSparkReplSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startSparkReplSessionWithOptions(request as! StartSparkReplSessionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSparkSQLEngineWithOptions(_ request: StartSparkSQLEngineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSparkSQLEngineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jars)) {
            body["Jars"] = request.jars ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxExecutor)) {
            body["MaxExecutor"] = request.maxExecutor!;
        }
        if (!TeaUtils.Client.isUnset(request.minExecutor)) {
            body["MinExecutor"] = request.minExecutor!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            body["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slotNum)) {
            body["SlotNum"] = request.slotNum!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartSparkSQLEngine",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSparkSQLEngineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSparkSQLEngine(_ request: StartSparkSQLEngineRequest) async throws -> StartSparkSQLEngineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startSparkSQLEngineWithOptions(request as! StartSparkSQLEngineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitResultExportJobWithOptions(_ request: SubmitResultExportJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitResultExportJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            body["Engine"] = request.engine ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportType)) {
            body["ExportType"] = request.exportType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroup)) {
            body["ResourceGroup"] = request.resourceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SQL)) {
            body["SQL"] = request.SQL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            body["Schema"] = request.schema ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitResultExportJob",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitResultExportJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitResultExportJob(_ request: SubmitResultExportJobRequest) async throws -> SubmitResultExportJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitResultExportJobWithOptions(request as! SubmitResultExportJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSparkAppWithOptions(_ request: SubmitSparkAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSparkAppResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSource)) {
            body["AgentSource"] = request.agentSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentVersion)) {
            body["AgentVersion"] = request.agentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appType)) {
            body["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            body["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateFileId)) {
            body["TemplateFileId"] = request.templateFileId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSparkApp",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitSparkAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSparkApp(_ request: SubmitSparkAppRequest) async throws -> SubmitSparkAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitSparkAppWithOptions(request as! SubmitSparkAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSparkLogAnalyzeTaskWithOptions(_ request: SubmitSparkLogAnalyzeTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSparkLogAnalyzeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSparkLogAnalyzeTask",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitSparkLogAnalyzeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSparkLogAnalyzeTask(_ request: SubmitSparkLogAnalyzeTaskRequest) async throws -> SubmitSparkLogAnalyzeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitSparkLogAnalyzeTaskWithOptions(request as! SubmitSparkLogAnalyzeTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendApsJobWithOptions(_ request: SuspendApsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendApsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apsJobId)) {
            body["ApsJobId"] = request.apsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendApsJob",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendApsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendApsJob(_ request: SuspendApsJobRequest) async throws -> SuspendApsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendApsJobWithOptions(request as! SuspendApsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindAccountWithOptions(_ request: UnbindAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindAccount",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindAccount(_ request: UnbindAccountRequest) async throws -> UnbindAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindAccountWithOptions(request as! UnbindAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindDBResourceGroupWithUserWithOptions(_ request: UnbindDBResourceGroupWithUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindDBResourceGroupWithUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupUser)) {
            query["GroupUser"] = request.groupUser ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindDBResourceGroupWithUser",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindDBResourceGroupWithUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindDBResourceGroupWithUser(_ request: UnbindDBResourceGroupWithUserRequest) async throws -> UnbindDBResourceGroupWithUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindDBResourceGroupWithUserWithOptions(request as! UnbindDBResourceGroupWithUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApsWebhookWithOptions(_ tmpReq: UpdateApsWebhookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApsWebhookResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateApsWebhookShrinkRequest = UpdateApsWebhookShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.webhook)) {
            request.webhookShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.webhook, "Webhook", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhookShrink)) {
            body["Webhook"] = request.webhookShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApsWebhook",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApsWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApsWebhook(_ request: UpdateApsWebhookRequest) async throws -> UpdateApsWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateApsWebhookWithOptions(request as! UpdateApsWebhookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLakeStorageWithOptions(_ tmpReq: UpdateLakeStorageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLakeStorageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateLakeStorageShrinkRequest = UpdateLakeStorageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.permissions)) {
            request.permissionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.permissions, "Permissions", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lakeStorageId)) {
            body["LakeStorageId"] = request.lakeStorageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permissionsShrink)) {
            body["Permissions"] = request.permissionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLakeStorage",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLakeStorageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLakeStorage(_ request: UpdateLakeStorageRequest) async throws -> UpdateLakeStorageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateLakeStorageWithOptions(request as! UpdateLakeStorageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSparkTemplateFileWithOptions(_ request: UpdateSparkTemplateFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSparkTemplateFileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            body["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupName)) {
            body["ResourceGroupName"] = request.resourceGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSparkTemplateFile",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSparkTemplateFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSparkTemplateFile(_ request: UpdateSparkTemplateFileRequest) async throws -> UpdateSparkTemplateFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSparkTemplateFileWithOptions(request as! UpdateSparkTemplateFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeKernelVersionWithOptions(_ request: UpgradeKernelVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeKernelVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBVersion)) {
            query["DBVersion"] = request.DBVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccount)) {
            query["OwnerAccount"] = request.ownerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.switchMode)) {
            query["SwitchMode"] = request.switchMode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeKernelVersion",
            "version": "2021-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeKernelVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeKernelVersion(_ request: UpgradeKernelVersionRequest) async throws -> UpgradeKernelVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeKernelVersionWithOptions(request as! UpgradeKernelVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
