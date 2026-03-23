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
            "cn-hangzhou": "cloudwf.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("cloudwifi-pop", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addApListToApgroupWithOptions(_ tmpReq: AddApListToApgroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddApListToApgroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddApListToApgroupShrinkRequest = AddApListToApgroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.apMacList)) {
            request.apMacListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.apMacList, "ApMacList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apGroupId)) {
            query["ApGroupId"] = request.apGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMacListShrink)) {
            body["ApMacList"] = request.apMacListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddApListToApgroup",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddApListToApgroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addApListToApgroup(_ request: AddApListToApgroupRequest) async throws -> AddApListToApgroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addApListToApgroupWithOptions(request as! AddApListToApgroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delApThirdAppWithOptions(_ request: DelApThirdAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DelApThirdAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apAssetId)) {
            query["ApAssetId"] = request.apAssetId!;
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            query["Mac"] = request.mac ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DelApThirdApp",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DelApThirdAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delApThirdApp(_ request: DelApThirdAppRequest) async throws -> DelApThirdAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await delApThirdAppWithOptions(request as! DelApThirdAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApSsidConfigWithOptions(_ request: DeleteApSsidConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApSsidConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.radioIndex)) {
            query["RadioIndex"] = request.radioIndex ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ssid)) {
            query["Ssid"] = request.ssid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApSsidConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApSsidConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApSsidConfig(_ request: DeleteApSsidConfigRequest) async throws -> DeleteApSsidConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApSsidConfigWithOptions(request as! DeleteApSsidConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApgroupConfigWithOptions(_ request: DeleteApgroupConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApgroupConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apGroupUUId)) {
            query["ApGroupUUId"] = request.apGroupUUId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApgroupConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApgroupConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApgroupConfig(_ request: DeleteApgroupConfigRequest) async throws -> DeleteApgroupConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApgroupConfigWithOptions(request as! DeleteApgroupConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApgroupSsidConfigWithOptions(_ request: DeleteApgroupSsidConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApgroupSsidConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apgroupId)) {
            query["ApgroupId"] = request.apgroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApgroupSsidConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApgroupSsidConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApgroupSsidConfig(_ request: DeleteApgroupSsidConfigRequest) async throws -> DeleteApgroupSsidConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApgroupSsidConfigWithOptions(request as! DeleteApgroupSsidConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApgroupThirdAppWithOptions(_ request: DeleteApgroupThirdAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApgroupThirdAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApgroupThirdApp",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApgroupThirdAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApgroupThirdApp(_ request: DeleteApgroupThirdAppRequest) async throws -> DeleteApgroupThirdAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApgroupThirdAppWithOptions(request as! DeleteApgroupThirdAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetDeviceInfoWithOptions(_ request: DeleteNetDeviceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNetDeviceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ids)) {
            query["Ids"] = request.ids ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNetDeviceInfo",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNetDeviceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetDeviceInfo(_ request: DeleteNetDeviceInfoRequest) async throws -> DeleteNetDeviceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNetDeviceInfoWithOptions(request as! DeleteNetDeviceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editApgroupThirdAppWithOptions(_ request: EditApgroupThirdAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EditApgroupThirdAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apgroupId)) {
            query["ApgroupId"] = request.apgroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appData)) {
            query["AppData"] = request.appData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applyToSubGroup)) {
            query["ApplyToSubGroup"] = request.applyToSubGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category!;
        }
        if (!TeaUtils.Client.isUnset(request.configType)) {
            query["ConfigType"] = request.configType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.inheritParentGroup)) {
            query["InheritParentGroup"] = request.inheritParentGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdAppName)) {
            query["ThirdAppName"] = request.thirdAppName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EditApgroupThirdApp",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EditApgroupThirdAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editApgroupThirdApp(_ request: EditApgroupThirdAppRequest) async throws -> EditApgroupThirdAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await editApgroupThirdAppWithOptions(request as! EditApgroupThirdAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func effectApConfigWithOptions(_ request: EffectApConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EffectApConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EffectApConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EffectApConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func effectApConfig(_ request: EffectApConfigRequest) async throws -> EffectApConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await effectApConfigWithOptions(request as! EffectApConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func effectApgroupConfigWithOptions(_ request: EffectApgroupConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EffectApgroupConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apGroupUUId)) {
            query["ApGroupUUId"] = request.apGroupUUId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EffectApgroupConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EffectApgroupConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func effectApgroupConfig(_ request: EffectApgroupConfigRequest) async throws -> EffectApgroupConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await effectApgroupConfigWithOptions(request as! EffectApgroupConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAntStaStatusByMacWithOptions(_ request: GetAntStaStatusByMacRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAntStaStatusByMacResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.staMac)) {
            query["StaMac"] = request.staMac ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAntStaStatusByMac",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAntStaStatusByMacResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAntStaStatusByMac(_ request: GetAntStaStatusByMacRequest) async throws -> GetAntStaStatusByMacResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAntStaStatusByMacWithOptions(request as! GetAntStaStatusByMacRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApAddressByMacWithOptions(_ request: GetApAddressByMacRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApAddressByMacResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            query["Mac"] = request.mac ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApAddressByMac",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApAddressByMacResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApAddressByMac(_ request: GetApAddressByMacRequest) async throws -> GetApAddressByMacResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApAddressByMacWithOptions(request as! GetApAddressByMacRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApAssetWithOptions(_ request: GetApAssetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApAsset",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApAsset(_ request: GetApAssetRequest) async throws -> GetApAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApAssetWithOptions(request as! GetApAssetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApDetailStatusWithOptions(_ request: GetApDetailStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApDetailStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            query["Mac"] = request.mac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needApgroupInfo)) {
            query["NeedApgroupInfo"] = request.needApgroupInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.needRadioStatus)) {
            query["NeedRadioStatus"] = request.needRadioStatus!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApDetailStatus",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApDetailStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApDetailStatus(_ request: GetApDetailStatusRequest) async throws -> GetApDetailStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApDetailStatusWithOptions(request as! GetApDetailStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApDetailedConfigWithOptions(_ request: GetApDetailedConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApDetailedConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApDetailedConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApDetailedConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApDetailedConfig(_ request: GetApDetailedConfigRequest) async throws -> GetApDetailedConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApDetailedConfigWithOptions(request as! GetApDetailedConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApInfoFromPoolWithOptions(_ request: GetApInfoFromPoolRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApInfoFromPoolResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApInfoFromPool",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApInfoFromPoolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApInfoFromPool(_ request: GetApInfoFromPoolRequest) async throws -> GetApInfoFromPoolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApInfoFromPoolWithOptions(request as! GetApInfoFromPoolRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApRunHistoryTimeSerWithOptions(_ request: GetApRunHistoryTimeSerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApRunHistoryTimeSerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["End"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApRunHistoryTimeSer",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApRunHistoryTimeSerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApRunHistoryTimeSer(_ request: GetApRunHistoryTimeSerRequest) async throws -> GetApRunHistoryTimeSerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApRunHistoryTimeSerWithOptions(request as! GetApRunHistoryTimeSerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApStatusByGroupIdWithOptions(_ request: GetApStatusByGroupIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApStatusByGroupIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apgroupId)) {
            query["ApgroupId"] = request.apgroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            query["Cursor"] = request.cursor!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApStatusByGroupId",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApStatusByGroupIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApStatusByGroupId(_ request: GetApStatusByGroupIdRequest) async throws -> GetApStatusByGroupIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApStatusByGroupIdWithOptions(request as! GetApStatusByGroupIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApgroupConfigByIdentityWithOptions(_ request: GetApgroupConfigByIdentityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApgroupConfigByIdentityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apgroupId)) {
            query["ApgroupId"] = request.apgroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.apgroupUuid)) {
            query["ApgroupUuid"] = request.apgroupUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApgroupConfigByIdentity",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApgroupConfigByIdentityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApgroupConfigByIdentity(_ request: GetApgroupConfigByIdentityRequest) async throws -> GetApgroupConfigByIdentityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApgroupConfigByIdentityWithOptions(request as! GetApgroupConfigByIdentityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApgroupDetailedConfigWithOptions(_ request: GetApgroupDetailedConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApgroupDetailedConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apgroupId)) {
            query["ApgroupId"] = request.apgroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.apgroupUuid)) {
            query["ApgroupUuid"] = request.apgroupUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApgroupDetailedConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApgroupDetailedConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApgroupDetailedConfig(_ request: GetApgroupDetailedConfigRequest) async throws -> GetApgroupDetailedConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApgroupDetailedConfigWithOptions(request as! GetApgroupDetailedConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApgroupIdWithOptions(_ request: GetApgroupIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApgroupIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApgroupId",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApgroupIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApgroupId(_ request: GetApgroupIdRequest) async throws -> GetApgroupIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApgroupIdWithOptions(request as! GetApgroupIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApgroupSsidConfigWithOptions(_ request: GetApgroupSsidConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApgroupSsidConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apGroupUUId)) {
            query["ApGroupUUId"] = request.apGroupUUId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApgroupSsidConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApgroupSsidConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApgroupSsidConfig(_ request: GetApgroupSsidConfigRequest) async throws -> GetApgroupSsidConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApgroupSsidConfigWithOptions(request as! GetApgroupSsidConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTaskProgressWithOptions(_ request: GetBatchTaskProgressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBatchTaskProgressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBatchTaskProgress",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBatchTaskProgressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTaskProgress(_ request: GetBatchTaskProgressRequest) async throws -> GetBatchTaskProgressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBatchTaskProgressWithOptions(request as! GetBatchTaskProgressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupMiscAggTimeSerWithOptions(_ request: GetGroupMiscAggTimeSerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGroupMiscAggTimeSerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apgroupUuid)) {
            query["ApgroupUuid"] = request.apgroupUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["End"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGroupMiscAggTimeSer",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGroupMiscAggTimeSerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupMiscAggTimeSer(_ request: GetGroupMiscAggTimeSerRequest) async throws -> GetGroupMiscAggTimeSerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getGroupMiscAggTimeSerWithOptions(request as! GetGroupMiscAggTimeSerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNetDeviceInfoWithOptions(_ request: GetNetDeviceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNetDeviceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            query["Cursor"] = request.cursor!;
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.idc)) {
            query["Idc"] = request.idc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicNetPod)) {
            query["LogicNetPod"] = request.logicNetPod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.manufacturer)) {
            query["Manufacturer"] = request.manufacturer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mgnIp)) {
            query["MgnIp"] = request.mgnIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netPod)) {
            query["NetPod"] = request.netPod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.role)) {
            query["Role"] = request.role ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceTag)) {
            query["ServiceTag"] = request.serviceTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNetDeviceInfo",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNetDeviceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNetDeviceInfo(_ request: GetNetDeviceInfoRequest) async throws -> GetNetDeviceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNetDeviceInfoWithOptions(request as! GetNetDeviceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNetDeviceInfoWithSizeWithOptions(_ request: GetNetDeviceInfoWithSizeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNetDeviceInfoWithSizeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            query["Cursor"] = request.cursor!;
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.idc)) {
            query["Idc"] = request.idc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logicNetPod)) {
            query["LogicNetPod"] = request.logicNetPod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.manufacturer)) {
            query["Manufacturer"] = request.manufacturer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mgnIp)) {
            query["MgnIp"] = request.mgnIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netPod)) {
            query["NetPod"] = request.netPod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.role)) {
            query["Role"] = request.role ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceTag)) {
            query["ServiceTag"] = request.serviceTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNetDeviceInfoWithSize",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNetDeviceInfoWithSizeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNetDeviceInfoWithSize(_ request: GetNetDeviceInfoWithSizeRequest) async throws -> GetNetDeviceInfoWithSizeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNetDeviceInfoWithSizeWithOptions(request as! GetNetDeviceInfoWithSizeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPageVisitDataWithOptions(_ request: GetPageVisitDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPageVisitDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPageVisitData",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPageVisitDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPageVisitData(_ request: GetPageVisitDataRequest) async throws -> GetPageVisitDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPageVisitDataWithOptions(request as! GetPageVisitDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRadioRunHistoryTimeSerWithOptions(_ request: GetRadioRunHistoryTimeSerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRadioRunHistoryTimeSerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["End"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRadioRunHistoryTimeSer",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRadioRunHistoryTimeSerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRadioRunHistoryTimeSer(_ request: GetRadioRunHistoryTimeSerRequest) async throws -> GetRadioRunHistoryTimeSerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRadioRunHistoryTimeSerWithOptions(request as! GetRadioRunHistoryTimeSerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStaDetailedStatusByMacWithOptions(_ request: GetStaDetailedStatusByMacRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStaDetailedStatusByMacResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.staMac)) {
            query["StaMac"] = request.staMac ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStaDetailedStatusByMac",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStaDetailedStatusByMacResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStaDetailedStatusByMac(_ request: GetStaDetailedStatusByMacRequest) async throws -> GetStaDetailedStatusByMacResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStaDetailedStatusByMacWithOptions(request as! GetStaDetailedStatusByMacRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStaStatusListByApWithOptions(_ request: GetStaStatusListByApRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStaStatusListByApResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            query["Cursor"] = request.cursor!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStaStatusListByAp",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStaStatusListByApResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStaStatusListByAp(_ request: GetStaStatusListByApRequest) async throws -> GetStaStatusListByApResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStaStatusListByApWithOptions(request as! GetStaStatusListByApRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func judgeXingTianBusinessWithOptions(_ request: JudgeXingTianBusinessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> JudgeXingTianBusinessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realmId)) {
            query["RealmId"] = request.realmId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "JudgeXingTianBusiness",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(JudgeXingTianBusinessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func judgeXingTianBusiness(_ request: JudgeXingTianBusinessRequest) async throws -> JudgeXingTianBusinessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await judgeXingTianBusinessWithOptions(request as! JudgeXingTianBusinessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func kickAntStaWithOptions(_ request: KickAntStaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> KickAntStaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.staMac)) {
            query["StaMac"] = request.staMac ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KickAntSta",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KickAntStaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func kickAntSta(_ request: KickAntStaRequest) async throws -> KickAntStaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await kickAntStaWithOptions(request as! KickAntStaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func kickStaWithOptions(_ request: KickStaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> KickStaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.staMac)) {
            query["StaMac"] = request.staMac ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KickSta",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KickStaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func kickSta(_ request: KickStaRequest) async throws -> KickStaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await kickStaWithOptions(request as! KickStaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApgroupDescendantWithOptions(_ request: ListApgroupDescendantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApgroupDescendantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apgroupId)) {
            query["ApgroupId"] = request.apgroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.apgroupUuid)) {
            query["ApgroupUuid"] = request.apgroupUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            query["Cursor"] = request.cursor!;
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            query["Level"] = request.level!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApgroupDescendant",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApgroupDescendantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApgroupDescendant(_ request: ListApgroupDescendantRequest) async throws -> ListApgroupDescendantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApgroupDescendantWithOptions(request as! ListApgroupDescendantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobOrdersWithOptions(_ request: ListJobOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changingType)) {
            query["ChangingType"] = request.changingType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSystem)) {
            query["ClientSystem"] = request.clientSystem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientUniqueId)) {
            query["ClientUniqueId"] = request.clientUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            query["Cursor"] = request.cursor!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.handler)) {
            query["Handler"] = request.handler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderStatus)) {
            query["OrderStatus"] = request.orderStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobOrders",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobOrders(_ request: ListJobOrdersRequest) async throws -> ListJobOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listJobOrdersWithOptions(request as! ListJobOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobOrdersWithSizeWithOptions(_ request: ListJobOrdersWithSizeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobOrdersWithSizeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changingType)) {
            query["ChangingType"] = request.changingType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSystem)) {
            query["ClientSystem"] = request.clientSystem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientUniqueId)) {
            query["ClientUniqueId"] = request.clientUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cursor)) {
            query["Cursor"] = request.cursor!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.handler)) {
            query["Handler"] = request.handler ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderStatus)) {
            query["OrderStatus"] = request.orderStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobOrdersWithSize",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobOrdersWithSizeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobOrdersWithSize(_ request: ListJobOrdersWithSizeRequest) async throws -> ListJobOrdersWithSizeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listJobOrdersWithSizeWithOptions(request as! ListJobOrdersWithSizeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func newApgroupConfigWithOptions(_ request: NewApgroupConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> NewApgroupConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentApgroupId)) {
            query["ParentApgroupId"] = request.parentApgroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "NewApgroupConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(NewApgroupConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func newApgroupConfig(_ request: NewApgroupConfigRequest) async throws -> NewApgroupConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await newApgroupConfigWithOptions(request as! NewApgroupConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func newJobOrderWithOptions(_ tmpReq: NewJobOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> NewJobOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: NewJobOrderShrinkRequest = NewJobOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.params)) {
            request.paramsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.params, "Params", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackUrl)) {
            query["CallbackUrl"] = request.callbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeType)) {
            query["ChangeType"] = request.changeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSystem)) {
            query["ClientSystem"] = request.clientSystem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientUniqueId)) {
            query["ClientUniqueId"] = request.clientUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referUrl)) {
            query["ReferUrl"] = request.referUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.paramsShrink)) {
            body["Params"] = request.paramsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "NewJobOrder",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(NewJobOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func newJobOrder(_ request: NewJobOrderRequest) async throws -> NewJobOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await newJobOrderWithOptions(request as! NewJobOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func newNetDeviceInfoWithOptions(_ request: NewNetDeviceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> NewNetDeviceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.devices)) {
            body["Devices"] = request.devices ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "NewNetDeviceInfo",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(NewNetDeviceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func newNetDeviceInfo(_ request: NewNetDeviceInfoRequest) async throws -> NewNetDeviceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await newNetDeviceInfoWithOptions(request as! NewNetDeviceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putAppConfigAndSaveWithOptions(_ request: PutAppConfigAndSaveRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutAppConfigAndSaveResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configureType)) {
            query["ConfigureType"] = request.configureType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentTime)) {
            query["CurrentTime"] = request.currentTime!;
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutAppConfigAndSave",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutAppConfigAndSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putAppConfigAndSave(_ request: PutAppConfigAndSaveRequest) async throws -> PutAppConfigAndSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putAppConfigAndSaveWithOptions(request as! PutAppConfigAndSaveRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryJobOrderWithOptions(_ request: QueryJobOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryJobOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryJobOrder",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryJobOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryJobOrder(_ request: QueryJobOrderRequest) async throws -> QueryJobOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryJobOrderWithOptions(request as! QueryJobOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootApWithOptions(_ request: RebootApRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebootApResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebootAp",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebootApResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootAp(_ request: RebootApRequest) async throws -> RebootApResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebootApWithOptions(request as! RebootApRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerApAssetWithOptions(_ request: RegisterApAssetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterApAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apGroupUUId)) {
            query["ApGroupUUId"] = request.apGroupUUId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            query["Mac"] = request.mac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            query["SerialNo"] = request.serialNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterApAsset",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterApAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerApAsset(_ request: RegisterApAssetRequest) async throws -> RegisterApAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerApAssetWithOptions(request as! RegisterApAssetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func repairApRadioWithOptions(_ request: RepairApRadioRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RepairApRadioResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.radioIndex)) {
            query["RadioIndex"] = request.radioIndex ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RepairApRadio",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RepairApRadioResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func repairApRadio(_ request: RepairApRadioRequest) async throws -> RepairApRadioResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await repairApRadioWithOptions(request as! RepairApRadioRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApBasicConfigWithOptions(_ request: SaveApBasicConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveApBasicConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dai)) {
            query["Dai"] = request.dai ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.echoInt)) {
            query["EchoInt"] = request.echoInt!;
        }
        if (!TeaUtils.Client.isUnset(request.failover)) {
            query["Failover"] = request.failover!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.insecureAllowed)) {
            query["InsecureAllowed"] = request.insecureAllowed!;
        }
        if (!TeaUtils.Client.isUnset(request.lanIp)) {
            query["LanIp"] = request.lanIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lanMask)) {
            query["LanMask"] = request.lanMask ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lanStatus)) {
            query["LanStatus"] = request.lanStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.logIp)) {
            query["LogIp"] = request.logIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logLevel)) {
            query["LogLevel"] = request.logLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passwd)) {
            query["Passwd"] = request.passwd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.route)) {
            query["Route"] = request.route ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scan)) {
            query["Scan"] = request.scan!;
        }
        if (!TeaUtils.Client.isUnset(request.tokenServer)) {
            query["TokenServer"] = request.tokenServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpn)) {
            query["Vpn"] = request.vpn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workMode)) {
            query["WorkMode"] = request.workMode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveApBasicConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveApBasicConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApBasicConfig(_ request: SaveApBasicConfigRequest) async throws -> SaveApBasicConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveApBasicConfigWithOptions(request as! SaveApBasicConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApPortalConfigWithOptions(_ tmpReq: SaveApPortalConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveApPortalConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveApPortalConfigShrinkRequest = SaveApPortalConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.portalTypes)) {
            request.portalTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.portalTypes, "PortalTypes", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apConfigId)) {
            query["ApConfigId"] = request.apConfigId!;
        }
        if (!TeaUtils.Client.isUnset(request.appAuthUrl)) {
            query["AppAuthUrl"] = request.appAuthUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            query["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSecret)) {
            query["AuthSecret"] = request.authSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkUrl)) {
            query["CheckUrl"] = request.checkUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientDownload)) {
            query["ClientDownload"] = request.clientDownload!;
        }
        if (!TeaUtils.Client.isUnset(request.clientUpload)) {
            query["ClientUpload"] = request.clientUpload!;
        }
        if (!TeaUtils.Client.isUnset(request.countdown)) {
            query["Countdown"] = request.countdown!;
        }
        if (!TeaUtils.Client.isUnset(request.network)) {
            query["Network"] = request.network!;
        }
        if (!TeaUtils.Client.isUnset(request.portalTypesShrink)) {
            query["PortalTypes"] = request.portalTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portalUrl)) {
            query["PortalUrl"] = request.portalUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStamp)) {
            query["TimeStamp"] = request.timeStamp!;
        }
        if (!TeaUtils.Client.isUnset(request.totalDownload)) {
            query["TotalDownload"] = request.totalDownload!;
        }
        if (!TeaUtils.Client.isUnset(request.totalUpload)) {
            query["TotalUpload"] = request.totalUpload!;
        }
        if (!TeaUtils.Client.isUnset(request.webAuthUrl)) {
            query["WebAuthUrl"] = request.webAuthUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelist)) {
            query["Whitelist"] = request.whitelist ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveApPortalConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveApPortalConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApPortalConfig(_ request: SaveApPortalConfigRequest) async throws -> SaveApPortalConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveApPortalConfigWithOptions(request as! SaveApPortalConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApRadioConfigWithOptions(_ request: SaveApRadioConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveApRadioConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bcastRate)) {
            query["BcastRate"] = request.bcastRate!;
        }
        if (!TeaUtils.Client.isUnset(request.beaconInt)) {
            query["BeaconInt"] = request.beaconInt!;
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disabled)) {
            query["Disabled"] = request.disabled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.frag)) {
            query["Frag"] = request.frag!;
        }
        if (!TeaUtils.Client.isUnset(request.htmode)) {
            query["Htmode"] = request.htmode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hwmode)) {
            query["Hwmode"] = request.hwmode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.mcastRate)) {
            query["McastRate"] = request.mcastRate!;
        }
        if (!TeaUtils.Client.isUnset(request.mgmtRate)) {
            query["MgmtRate"] = request.mgmtRate!;
        }
        if (!TeaUtils.Client.isUnset(request.minrate)) {
            query["Minrate"] = request.minrate!;
        }
        if (!TeaUtils.Client.isUnset(request.noscan)) {
            query["Noscan"] = request.noscan ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.probereq)) {
            query["Probereq"] = request.probereq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requireMode)) {
            query["RequireMode"] = request.requireMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rts)) {
            query["Rts"] = request.rts!;
        }
        if (!TeaUtils.Client.isUnset(request.shortgi)) {
            query["Shortgi"] = request.shortgi ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.txpower)) {
            query["Txpower"] = request.txpower ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uapsd)) {
            query["Uapsd"] = request.uapsd!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveApRadioConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveApRadioConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApRadioConfig(_ request: SaveApRadioConfigRequest) async throws -> SaveApRadioConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveApRadioConfigWithOptions(request as! SaveApRadioConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApSsidConfigWithOptions(_ request: SaveApSsidConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveApSsidConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acctPort)) {
            query["AcctPort"] = request.acctPort!;
        }
        if (!TeaUtils.Client.isUnset(request.acctSecret)) {
            query["AcctSecret"] = request.acctSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.acctServer)) {
            query["AcctServer"] = request.acctServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.acctStatusServerWork)) {
            query["AcctStatusServerWork"] = request.acctStatusServerWork!;
        }
        if (!TeaUtils.Client.isUnset(request.apAssetId)) {
            query["ApAssetId"] = request.apAssetId!;
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arpProxyEnable)) {
            query["ArpProxyEnable"] = request.arpProxyEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.authCache)) {
            query["AuthCache"] = request.authCache ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authPort)) {
            query["AuthPort"] = request.authPort!;
        }
        if (!TeaUtils.Client.isUnset(request.authSecret)) {
            query["AuthSecret"] = request.authSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authServer)) {
            query["AuthServer"] = request.authServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authStatusServerWork)) {
            query["AuthStatusServerWork"] = request.authStatusServerWork!;
        }
        if (!TeaUtils.Client.isUnset(request.cir)) {
            query["Cir"] = request.cir!;
        }
        if (!TeaUtils.Client.isUnset(request.cirStep)) {
            query["CirStep"] = request.cirStep!;
        }
        if (!TeaUtils.Client.isUnset(request.cirType)) {
            query["CirType"] = request.cirType!;
        }
        if (!TeaUtils.Client.isUnset(request.cirUl)) {
            query["CirUl"] = request.cirUl!;
        }
        if (!TeaUtils.Client.isUnset(request.daeClient)) {
            query["DaeClient"] = request.daeClient ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.daePort)) {
            query["DaePort"] = request.daePort!;
        }
        if (!TeaUtils.Client.isUnset(request.daeSecret)) {
            query["DaeSecret"] = request.daeSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disabled)) {
            query["Disabled"] = request.disabled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disassocLowAck)) {
            query["DisassocLowAck"] = request.disassocLowAck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disassocWeakRssi)) {
            query["DisassocWeakRssi"] = request.disassocWeakRssi!;
        }
        if (!TeaUtils.Client.isUnset(request.dynamicVlan)) {
            query["DynamicVlan"] = request.dynamicVlan!;
        }
        if (!TeaUtils.Client.isUnset(request.encKey)) {
            query["EncKey"] = request.encKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryption)) {
            query["Encryption"] = request.encryption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fourthAuthPort)) {
            query["FourthAuthPort"] = request.fourthAuthPort!;
        }
        if (!TeaUtils.Client.isUnset(request.fourthAuthSecret)) {
            query["FourthAuthSecret"] = request.fourthAuthSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fourthAuthServer)) {
            query["FourthAuthServer"] = request.fourthAuthServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ftOverDs)) {
            query["FtOverDs"] = request.ftOverDs!;
        }
        if (!TeaUtils.Client.isUnset(request.hidden)) {
            query["Hidden"] = request.hidden ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.ieee80211r)) {
            query["Ieee80211r"] = request.ieee80211r!;
        }
        if (!TeaUtils.Client.isUnset(request.ieee80211w)) {
            query["Ieee80211w"] = request.ieee80211w ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreWeakProbe)) {
            query["IgnoreWeakProbe"] = request.ignoreWeakProbe!;
        }
        if (!TeaUtils.Client.isUnset(request.isolate)) {
            query["Isolate"] = request.isolate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.liteEffect)) {
            query["LiteEffect"] = request.liteEffect!;
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            query["Mac"] = request.mac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxInactivity)) {
            query["MaxInactivity"] = request.maxInactivity!;
        }
        if (!TeaUtils.Client.isUnset(request.maxassoc)) {
            query["Maxassoc"] = request.maxassoc!;
        }
        if (!TeaUtils.Client.isUnset(request.mobilityDomain)) {
            query["MobilityDomain"] = request.mobilityDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multicastForward)) {
            query["MulticastForward"] = request.multicastForward!;
        }
        if (!TeaUtils.Client.isUnset(request.nasid)) {
            query["Nasid"] = request.nasid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ndProxyWork)) {
            query["NdProxyWork"] = request.ndProxyWork!;
        }
        if (!TeaUtils.Client.isUnset(request.network)) {
            query["Network"] = request.network!;
        }
        if (!TeaUtils.Client.isUnset(request.ownip)) {
            query["Ownip"] = request.ownip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.radioIndex)) {
            query["RadioIndex"] = request.radioIndex ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAcctPort)) {
            query["SecondaryAcctPort"] = request.secondaryAcctPort!;
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAcctSecret)) {
            query["SecondaryAcctSecret"] = request.secondaryAcctSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAcctServer)) {
            query["SecondaryAcctServer"] = request.secondaryAcctServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAuthPort)) {
            query["SecondaryAuthPort"] = request.secondaryAuthPort!;
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAuthSecret)) {
            query["SecondaryAuthSecret"] = request.secondaryAuthSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAuthServer)) {
            query["SecondaryAuthServer"] = request.secondaryAuthServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendConfigToAp)) {
            query["SendConfigToAp"] = request.sendConfigToAp!;
        }
        if (!TeaUtils.Client.isUnset(request.shortPreamble)) {
            query["ShortPreamble"] = request.shortPreamble ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ssid)) {
            query["Ssid"] = request.ssid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ssidLb)) {
            query["SsidLb"] = request.ssidLb!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdAuthPort)) {
            query["ThirdAuthPort"] = request.thirdAuthPort!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdAuthSecret)) {
            query["ThirdAuthSecret"] = request.thirdAuthSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdAuthServer)) {
            query["ThirdAuthServer"] = request.thirdAuthServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.vlanDhcp)) {
            query["VlanDhcp"] = request.vlanDhcp!;
        }
        if (!TeaUtils.Client.isUnset(request.wmm)) {
            query["Wmm"] = request.wmm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveApSsidConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveApSsidConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApSsidConfig(_ request: SaveApSsidConfigRequest) async throws -> SaveApSsidConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveApSsidConfigWithOptions(request as! SaveApSsidConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApThirdAppWithOptions(_ request: SaveApThirdAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveApThirdAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addStyle)) {
            query["AddStyle"] = request.addStyle!;
        }
        if (!TeaUtils.Client.isUnset(request.apAssetId)) {
            query["ApAssetId"] = request.apAssetId!;
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appData)) {
            query["AppData"] = request.appData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            query["Mac"] = request.mac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdAppName)) {
            query["ThirdAppName"] = request.thirdAppName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveApThirdApp",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveApThirdAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApThirdApp(_ request: SaveApThirdAppRequest) async throws -> SaveApThirdAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveApThirdAppWithOptions(request as! SaveApThirdAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApgroupBasicConfigWithOptions(_ request: SaveApgroupBasicConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveApgroupBasicConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dai)) {
            query["Dai"] = request.dai ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.echoInt)) {
            query["EchoInt"] = request.echoInt!;
        }
        if (!TeaUtils.Client.isUnset(request.failover)) {
            query["Failover"] = request.failover!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.insecureAllowed)) {
            query["InsecureAllowed"] = request.insecureAllowed!;
        }
        if (!TeaUtils.Client.isUnset(request.isConfigStrongConsistency)) {
            query["IsConfigStrongConsistency"] = request.isConfigStrongConsistency!;
        }
        if (!TeaUtils.Client.isUnset(request.lanIp)) {
            query["LanIp"] = request.lanIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lanMask)) {
            query["LanMask"] = request.lanMask ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lanStatus)) {
            query["LanStatus"] = request.lanStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.logIp)) {
            query["LogIp"] = request.logIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logLevel)) {
            query["LogLevel"] = request.logLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentApgroupId)) {
            query["ParentApgroupId"] = request.parentApgroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.passwd)) {
            query["Passwd"] = request.passwd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.route)) {
            query["Route"] = request.route ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scan)) {
            query["Scan"] = request.scan!;
        }
        if (!TeaUtils.Client.isUnset(request.tokenServer)) {
            query["TokenServer"] = request.tokenServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpn)) {
            query["Vpn"] = request.vpn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workMode)) {
            query["WorkMode"] = request.workMode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveApgroupBasicConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveApgroupBasicConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApgroupBasicConfig(_ request: SaveApgroupBasicConfigRequest) async throws -> SaveApgroupBasicConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveApgroupBasicConfigWithOptions(request as! SaveApgroupBasicConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApgroupPortalConfigWithOptions(_ tmpReq: SaveApgroupPortalConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveApgroupPortalConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveApgroupPortalConfigShrinkRequest = SaveApgroupPortalConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.portalTypes)) {
            request.portalTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.portalTypes, "PortalTypes", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apgroupId)) {
            query["ApgroupId"] = request.apgroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.appAuthUrl)) {
            query["AppAuthUrl"] = request.appAuthUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            query["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSecret)) {
            query["AuthSecret"] = request.authSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkUrl)) {
            query["CheckUrl"] = request.checkUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientDownload)) {
            query["ClientDownload"] = request.clientDownload!;
        }
        if (!TeaUtils.Client.isUnset(request.clientUpload)) {
            query["ClientUpload"] = request.clientUpload!;
        }
        if (!TeaUtils.Client.isUnset(request.countdown)) {
            query["Countdown"] = request.countdown!;
        }
        if (!TeaUtils.Client.isUnset(request.network)) {
            query["Network"] = request.network!;
        }
        if (!TeaUtils.Client.isUnset(request.portalTypesShrink)) {
            query["PortalTypes"] = request.portalTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portalUrl)) {
            query["PortalUrl"] = request.portalUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStamp)) {
            query["TimeStamp"] = request.timeStamp!;
        }
        if (!TeaUtils.Client.isUnset(request.totalDownload)) {
            query["TotalDownload"] = request.totalDownload!;
        }
        if (!TeaUtils.Client.isUnset(request.totalUpload)) {
            query["TotalUpload"] = request.totalUpload!;
        }
        if (!TeaUtils.Client.isUnset(request.webAuthUrl)) {
            query["WebAuthUrl"] = request.webAuthUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whitelist)) {
            query["Whitelist"] = request.whitelist ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveApgroupPortalConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveApgroupPortalConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApgroupPortalConfig(_ request: SaveApgroupPortalConfigRequest) async throws -> SaveApgroupPortalConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveApgroupPortalConfigWithOptions(request as! SaveApgroupPortalConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApgroupSsidConfigWithOptions(_ request: SaveApgroupSsidConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveApgroupSsidConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acctPort)) {
            query["AcctPort"] = request.acctPort!;
        }
        if (!TeaUtils.Client.isUnset(request.acctSecret)) {
            query["AcctSecret"] = request.acctSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.acctServer)) {
            query["AcctServer"] = request.acctServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apgroupId)) {
            query["ApgroupId"] = request.apgroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authCache)) {
            query["AuthCache"] = request.authCache ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authPort)) {
            query["AuthPort"] = request.authPort!;
        }
        if (!TeaUtils.Client.isUnset(request.authSecret)) {
            query["AuthSecret"] = request.authSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authServer)) {
            query["AuthServer"] = request.authServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.binding)) {
            query["Binding"] = request.binding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cir)) {
            query["Cir"] = request.cir!;
        }
        if (!TeaUtils.Client.isUnset(request.daeClient)) {
            query["DaeClient"] = request.daeClient ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.daePort)) {
            query["DaePort"] = request.daePort!;
        }
        if (!TeaUtils.Client.isUnset(request.daeSecret)) {
            query["DaeSecret"] = request.daeSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disabled)) {
            query["Disabled"] = request.disabled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disassocLowAck)) {
            query["DisassocLowAck"] = request.disassocLowAck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disassocWeakRssi)) {
            query["DisassocWeakRssi"] = request.disassocWeakRssi!;
        }
        if (!TeaUtils.Client.isUnset(request.dynamicVlan)) {
            query["DynamicVlan"] = request.dynamicVlan!;
        }
        if (!TeaUtils.Client.isUnset(request.effect)) {
            query["Effect"] = request.effect!;
        }
        if (!TeaUtils.Client.isUnset(request.encKey)) {
            query["EncKey"] = request.encKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryption)) {
            query["Encryption"] = request.encryption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hidden)) {
            query["Hidden"] = request.hidden ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.ieee80211w)) {
            query["Ieee80211w"] = request.ieee80211w ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreWeakProbe)) {
            query["IgnoreWeakProbe"] = request.ignoreWeakProbe!;
        }
        if (!TeaUtils.Client.isUnset(request.isolate)) {
            query["Isolate"] = request.isolate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.liteEffect)) {
            query["LiteEffect"] = request.liteEffect!;
        }
        if (!TeaUtils.Client.isUnset(request.maxInactivity)) {
            query["MaxInactivity"] = request.maxInactivity!;
        }
        if (!TeaUtils.Client.isUnset(request.maxassoc)) {
            query["Maxassoc"] = request.maxassoc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multicastForward)) {
            query["MulticastForward"] = request.multicastForward!;
        }
        if (!TeaUtils.Client.isUnset(request.nasid)) {
            query["Nasid"] = request.nasid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.network)) {
            query["Network"] = request.network!;
        }
        if (!TeaUtils.Client.isUnset(request.newSsid)) {
            query["NewSsid"] = request.newSsid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownip)) {
            query["Ownip"] = request.ownip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAcctPort)) {
            query["SecondaryAcctPort"] = request.secondaryAcctPort!;
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAcctSecret)) {
            query["SecondaryAcctSecret"] = request.secondaryAcctSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAcctServer)) {
            query["SecondaryAcctServer"] = request.secondaryAcctServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAuthPort)) {
            query["SecondaryAuthPort"] = request.secondaryAuthPort!;
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAuthSecret)) {
            query["SecondaryAuthSecret"] = request.secondaryAuthSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryAuthServer)) {
            query["SecondaryAuthServer"] = request.secondaryAuthServer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shortPreamble)) {
            query["ShortPreamble"] = request.shortPreamble ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ssid)) {
            query["Ssid"] = request.ssid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ssidLb)) {
            query["SsidLb"] = request.ssidLb!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.vlanDhcp)) {
            query["VlanDhcp"] = request.vlanDhcp!;
        }
        if (!TeaUtils.Client.isUnset(request.wmm)) {
            query["Wmm"] = request.wmm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveApgroupSsidConfig",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveApgroupSsidConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveApgroupSsidConfig(_ request: SaveApgroupSsidConfigRequest) async throws -> SaveApgroupSsidConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveApgroupSsidConfigWithOptions(request as! SaveApgroupSsidConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setApAddressWithOptions(_ request: SetApAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetApAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apAreaName)) {
            query["ApAreaName"] = request.apAreaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apBuildingName)) {
            query["ApBuildingName"] = request.apBuildingName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apCampusName)) {
            query["ApCampusName"] = request.apCampusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apCityName)) {
            query["ApCityName"] = request.apCityName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apFloor)) {
            query["ApFloor"] = request.apFloor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apGroup)) {
            query["ApGroup"] = request.apGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apName)) {
            query["ApName"] = request.apName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apNationName)) {
            query["ApNationName"] = request.apNationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apProvinceName)) {
            query["ApProvinceName"] = request.apProvinceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apUnitId)) {
            query["ApUnitId"] = request.apUnitId!;
        }
        if (!TeaUtils.Client.isUnset(request.apUnitName)) {
            query["ApUnitName"] = request.apUnitName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.direction)) {
            query["Direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lat)) {
            query["Lat"] = request.lat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lng)) {
            query["Lng"] = request.lng ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            query["Mac"] = request.mac ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetApAddress",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetApAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setApAddress(_ request: SetApAddressRequest) async throws -> SetApAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setApAddressWithOptions(request as! SetApAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setApNameWithOptions(_ request: SetApNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetApNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            query["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetApName",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetApNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setApName(_ request: SetApNameRequest) async throws -> SetApNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setApNameWithOptions(request as! SetApNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unRegisterApAssetWithOptions(_ request: UnRegisterApAssetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnRegisterApAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetApgroupId)) {
            query["AssetApgroupId"] = request.assetApgroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            query["Mac"] = request.mac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            query["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useFor)) {
            query["UseFor"] = request.useFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnRegisterApAsset",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnRegisterApAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unRegisterApAsset(_ request: UnRegisterApAssetRequest) async throws -> UnRegisterApAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unRegisterApAssetWithOptions(request as! UnRegisterApAssetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNetDeviceInfoWithOptions(_ request: UpdateNetDeviceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNetDeviceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.devices)) {
            body["Devices"] = request.devices ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNetDeviceInfo",
            "version": "2019-11-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNetDeviceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNetDeviceInfo(_ request: UpdateNetDeviceInfoRequest) async throws -> UpdateNetDeviceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateNetDeviceInfoWithOptions(request as! UpdateNetDeviceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
