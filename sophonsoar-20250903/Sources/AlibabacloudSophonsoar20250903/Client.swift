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
        self._endpoint = try getEndpoint("sophonsoar", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createComponentAssetWithOptions(_ request: CreateComponentAssetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateComponentAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentAssetName)) {
            body["ComponentAssetName"] = request.componentAssetName ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentAssetValues)) {
            bodyFlat["ComponentAssetValues"] = request.componentAssetValues ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.componentName)) {
            body["ComponentName"] = request.componentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateComponentAsset",
            "version": "2025-09-03",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateComponentAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createComponentAsset(_ request: CreateComponentAssetRequest) async throws -> CreateComponentAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createComponentAssetWithOptions(request as! CreateComponentAssetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPlaybookWithOptions(_ request: CreatePlaybookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePlaybookResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookDescription)) {
            body["PlaybookDescription"] = request.playbookDescription ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.playbookInputConfigs)) {
            bodyFlat["PlaybookInputConfigs"] = request.playbookInputConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.playbookName)) {
            body["PlaybookName"] = request.playbookName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookOutputConfigs)) {
            bodyFlat["PlaybookOutputConfigs"] = request.playbookOutputConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.playbookParamType)) {
            body["PlaybookParamType"] = request.playbookParamType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookTaskFlow)) {
            body["PlaybookTaskFlow"] = request.playbookTaskFlow ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.srcPlaybookUuid)) {
            body["SrcPlaybookUuid"] = request.srcPlaybookUuid ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePlaybook",
            "version": "2025-09-03",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePlaybookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPlaybook(_ request: CreatePlaybookRequest) async throws -> CreatePlaybookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPlaybookWithOptions(request as! CreatePlaybookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteComponentAssetWithOptions(_ request: DeleteComponentAssetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteComponentAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentAssetUuid)) {
            body["ComponentAssetUuid"] = request.componentAssetUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteComponentAsset",
            "version": "2025-09-03",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteComponentAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteComponentAsset(_ request: DeleteComponentAssetRequest) async throws -> DeleteComponentAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteComponentAssetWithOptions(request as! DeleteComponentAssetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePlaybookWithOptions(_ request: DeletePlaybookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePlaybookResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookUuid)) {
            body["PlaybookUuid"] = request.playbookUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePlaybook",
            "version": "2025-09-03",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePlaybookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePlaybook(_ request: DeletePlaybookRequest) async throws -> DeletePlaybookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePlaybookWithOptions(request as! DeletePlaybookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPlaybookWithOptions(_ request: GetPlaybookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPlaybookResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookUuid)) {
            body["PlaybookUuid"] = request.playbookUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookVersion)) {
            body["PlaybookVersion"] = request.playbookVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookVersionType)) {
            body["PlaybookVersionType"] = request.playbookVersionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPlaybook",
            "version": "2025-09-03",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPlaybookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPlaybook(_ request: GetPlaybookRequest) async throws -> GetPlaybookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPlaybookWithOptions(request as! GetPlaybookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComponentAssetsWithOptions(_ request: ListComponentAssetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListComponentAssetsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentAssetUuid)) {
            body["ComponentAssetUuid"] = request.componentAssetUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentName)) {
            body["ComponentName"] = request.componentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListComponentAssets",
            "version": "2025-09-03",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListComponentAssetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComponentAssets(_ request: ListComponentAssetsRequest) async throws -> ListComponentAssetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listComponentAssetsWithOptions(request as! ListComponentAssetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComponentsWithOptions(_ request: ListComponentsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListComponentsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentName)) {
            body["ComponentName"] = request.componentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListComponents",
            "version": "2025-09-03",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListComponentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComponents(_ request: ListComponentsRequest) async throws -> ListComponentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listComponentsWithOptions(request as! ListComponentsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPlaybooksWithOptions(_ tmpReq: ListPlaybooksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPlaybooksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListPlaybooksShrinkRequest = ListPlaybooksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.playbookParamTypes)) {
            request.playbookParamTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.playbookParamTypes, "PlaybookParamTypes", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.playbookUuids)) {
            request.playbookUuidsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.playbookUuids, "PlaybookUuids", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderField)) {
            body["OrderField"] = request.orderField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.playbookExecutionEndTime)) {
            body["PlaybookExecutionEndTime"] = request.playbookExecutionEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.playbookExecutionStartTime)) {
            body["PlaybookExecutionStartTime"] = request.playbookExecutionStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.playbookName)) {
            body["PlaybookName"] = request.playbookName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookParamTypesShrink)) {
            body["PlaybookParamTypes"] = request.playbookParamTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookStatus)) {
            body["PlaybookStatus"] = request.playbookStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.playbookType)) {
            body["PlaybookType"] = request.playbookType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookUuidsShrink)) {
            body["PlaybookUuids"] = request.playbookUuidsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPlaybooks",
            "version": "2025-09-03",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPlaybooksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPlaybooks(_ request: ListPlaybooksRequest) async throws -> ListPlaybooksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPlaybooksWithOptions(request as! ListPlaybooksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateComponentAssetWithOptions(_ request: UpdateComponentAssetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateComponentAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentAssetName)) {
            body["ComponentAssetName"] = request.componentAssetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentAssetUuid)) {
            body["ComponentAssetUuid"] = request.componentAssetUuid ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentAssetValues)) {
            bodyFlat["ComponentAssetValues"] = request.componentAssetValues ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateComponentAsset",
            "version": "2025-09-03",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateComponentAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateComponentAsset(_ request: UpdateComponentAssetRequest) async throws -> UpdateComponentAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateComponentAssetWithOptions(request as! UpdateComponentAssetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePlaybookWithOptions(_ tmpReq: UpdatePlaybookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePlaybookResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdatePlaybookShrinkRequest = UpdatePlaybookShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.playbookInputConfigs)) {
            request.playbookInputConfigsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.playbookInputConfigs, "PlaybookInputConfigs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.playbookOutputConfigs)) {
            request.playbookOutputConfigsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.playbookOutputConfigs, "PlaybookOutputConfigs", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookDescription)) {
            body["PlaybookDescription"] = request.playbookDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookInputConfigsShrink)) {
            body["PlaybookInputConfigs"] = request.playbookInputConfigsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookName)) {
            body["PlaybookName"] = request.playbookName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookOutputConfigsShrink)) {
            body["PlaybookOutputConfigs"] = request.playbookOutputConfigsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookParamType)) {
            body["PlaybookParamType"] = request.playbookParamType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookTaskFlow)) {
            body["PlaybookTaskFlow"] = request.playbookTaskFlow ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookUuid)) {
            body["PlaybookUuid"] = request.playbookUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePlaybook",
            "version": "2025-09-03",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePlaybookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePlaybook(_ request: UpdatePlaybookRequest) async throws -> UpdatePlaybookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePlaybookWithOptions(request as! UpdatePlaybookRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
