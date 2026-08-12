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
            "cn-zhangjiakou": "aisc.cn-shanghai.aliyuncs.com",
            "cn-wulanchabu": "aisc.cn-shanghai.aliyuncs.com",
            "cn-shanghai": "aisc.cn-shanghai.aliyuncs.com",
            "cn-qingdao": "aisc.cn-shanghai.aliyuncs.com",
            "cn-nanjing": "aisc.cn-shanghai.aliyuncs.com",
            "cn-huhehaote": "aisc.cn-shanghai.aliyuncs.com",
            "cn-hangzhou": "aisc.cn-shanghai.aliyuncs.com",
            "cn-guangzhou": "aisc.cn-shanghai.aliyuncs.com",
            "cn-beijing": "aisc.cn-shanghai.aliyuncs.com",
            "ap-southeast-7": "aisc.ap-southeast-1.aliyuncs.com",
            "ap-southeast-6": "aisc.ap-southeast-1.aliyuncs.com",
            "ap-southeast-5": "aisc.ap-southeast-1.aliyuncs.com",
            "ap-southeast-1": "aisc.ap-southeast-1.aliyuncs.com",
            "ap-northeast-2": "aisc.ap-southeast-1.aliyuncs.com",
            "ap-northeast-1": "aisc.ap-southeast-1.aliyuncs.com",
            "eu-central-1": "aisc.ap-southeast-1.aliyuncs.com",
            "eu-west-1": "aisc.ap-southeast-1.aliyuncs.com",
            "us-east-1": "aisc.ap-southeast-1.aliyuncs.com",
            "us-west-1": "aisc.ap-southeast-1.aliyuncs.com",
            "me-east-1": "aisc.ap-southeast-1.aliyuncs.com",
            "cn-beijing-finance-1": "aisc.cn-shanghai.aliyuncs.com",
            "cn-hangzhou-finance": "aisc.cn-shanghai.aliyuncs.com",
            "cn-heyuan-acdr-1": "aisc.cn-shanghai.aliyuncs.com",
            "cn-shanghai-finance-1": "aisc.cn-shanghai.aliyuncs.com",
            "cn-shenzhen-finance-1": "aisc.cn-shanghai.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("aisc", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createSkillFileCheckWithOptions(_ request: CreateSkillFileCheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSkillFileCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.files)) {
            query["Files"] = request.files ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSkillFileCheck",
            "version": "2026-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSkillFileCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSkillFileCheck(_ request: CreateSkillFileCheckRequest) async throws -> CreateSkillFileCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSkillFileCheckWithOptions(request as! CreateSkillFileCheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAIAgentEventWithOptions(_ request: ListAIAgentEventRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAIAgentEventResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetName)) {
            query["AssetName"] = request.assetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetType)) {
            query["AssetType"] = request.assetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.infraInstanceId)) {
            query["InfraInstanceId"] = request.infraInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.infraName)) {
            query["InfraName"] = request.infraName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.infraRegionId)) {
            query["InfraRegionId"] = request.infraRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            query["RiskLevel"] = request.riskLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskName)) {
            query["RiskName"] = request.riskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            query["StatusList"] = request.statusList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            query["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAIAgentEvent",
            "version": "2026-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAIAgentEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAIAgentEvent(_ request: ListAIAgentEventRequest) async throws -> ListAIAgentEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAIAgentEventWithOptions(request as! ListAIAgentEventRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubTasksWithOptions(_ request: ListSubTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSubTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.rootTaskId)) {
            query["RootTaskId"] = request.rootTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSubTasks",
            "version": "2026-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSubTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubTasks(_ request: ListSubTasksRequest) async throws -> ListSubTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSubTasksWithOptions(request as! ListSubTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
