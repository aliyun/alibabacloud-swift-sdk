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
        self._endpointRule = "central"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("dyplsapi", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addAxnTrackNoWithOptions(_ request: AddAxnTrackNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAxnTrackNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subsId)) {
            query["SubsId"] = request.subsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trackNo)) {
            query["trackNo"] = request.trackNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAxnTrackNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAxnTrackNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAxnTrackNo(_ request: AddAxnTrackNoRequest) async throws -> AddAxnTrackNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addAxnTrackNoWithOptions(request as! AddAxnTrackNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSecretBlacklistWithOptions(_ request: AddSecretBlacklistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddSecretBlacklistResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blackNo)) {
            query["BlackNo"] = request.blackNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.blackType)) {
            query["BlackType"] = request.blackType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wayControl)) {
            query["WayControl"] = request.wayControl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddSecretBlacklist",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddSecretBlacklistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSecretBlacklist(_ request: AddSecretBlacklistRequest) async throws -> AddSecretBlacklistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addSecretBlacklistWithOptions(request as! AddSecretBlacklistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxbWithOptions(_ request: BindAxbRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASRModelId)) {
            query["ASRModelId"] = request.ASRModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ASRStatus)) {
            query["ASRStatus"] = request.ASRStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.callDisplayType)) {
            query["CallDisplayType"] = request.callDisplayType!;
        }
        if (!TeaUtils.Client.isUnset(request.callRestrict)) {
            query["CallRestrict"] = request.callRestrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callTimeout)) {
            query["CallTimeout"] = request.callTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.dtmfConfig)) {
            query["DtmfConfig"] = request.dtmfConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expectCity)) {
            query["ExpectCity"] = request.expectCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecordingEnabled)) {
            query["IsRecordingEnabled"] = request.isRecordingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["OutOrderId"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoB)) {
            query["PhoneNoB"] = request.phoneNoB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ringConfig)) {
            query["RingConfig"] = request.ringConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxb",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxb(_ request: BindAxbRequest) async throws -> BindAxbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxbWithOptions(request as! BindAxbRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxgWithOptions(_ request: BindAxgRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxgResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASRModelId)) {
            query["ASRModelId"] = request.ASRModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ASRStatus)) {
            query["ASRStatus"] = request.ASRStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.callDisplayType)) {
            query["CallDisplayType"] = request.callDisplayType!;
        }
        if (!TeaUtils.Client.isUnset(request.callRestrict)) {
            query["CallRestrict"] = request.callRestrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expectCity)) {
            query["ExpectCity"] = request.expectCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecordingEnabled)) {
            query["IsRecordingEnabled"] = request.isRecordingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["OutOrderId"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoB)) {
            query["PhoneNoB"] = request.phoneNoB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ringConfig)) {
            query["RingConfig"] = request.ringConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxg",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxgResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxg(_ request: BindAxgRequest) async throws -> BindAxgResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxgWithOptions(request as! BindAxgRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxnWithOptions(_ request: BindAxnRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxnResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASRModelId)) {
            query["ASRModelId"] = request.ASRModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ASRStatus)) {
            query["ASRStatus"] = request.ASRStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.callDisplayType)) {
            query["CallDisplayType"] = request.callDisplayType!;
        }
        if (!TeaUtils.Client.isUnset(request.callRestrict)) {
            query["CallRestrict"] = request.callRestrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callTimeout)) {
            query["CallTimeout"] = request.callTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.expectCity)) {
            query["ExpectCity"] = request.expectCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecordingEnabled)) {
            query["IsRecordingEnabled"] = request.isRecordingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.noType)) {
            query["NoType"] = request.noType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["OutOrderId"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoB)) {
            query["PhoneNoB"] = request.phoneNoB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ringConfig)) {
            query["RingConfig"] = request.ringConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxn",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxnResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxn(_ request: BindAxnRequest) async throws -> BindAxnResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxnWithOptions(request as! BindAxnRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxnExtensionWithOptions(_ request: BindAxnExtensionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxnExtensionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASRModelId)) {
            query["ASRModelId"] = request.ASRModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ASRStatus)) {
            query["ASRStatus"] = request.ASRStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.callDisplayType)) {
            query["CallDisplayType"] = request.callDisplayType!;
        }
        if (!TeaUtils.Client.isUnset(request.callRestrict)) {
            query["CallRestrict"] = request.callRestrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expectCity)) {
            query["ExpectCity"] = request.expectCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extend)) {
            query["Extend"] = request.extend ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extension_)) {
            query["Extension"] = request.extension_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecordingEnabled)) {
            query["IsRecordingEnabled"] = request.isRecordingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["OutOrderId"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoB)) {
            query["PhoneNoB"] = request.phoneNoB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ringConfig)) {
            query["RingConfig"] = request.ringConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxnExtension",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxnExtensionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxnExtension(_ request: BindAxnExtensionRequest) async throws -> BindAxnExtensionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxnExtensionWithOptions(request as! BindAxnExtensionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindBatchAxgWithOptions(_ tmpReq: BindBatchAxgRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindBatchAxgResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BindBatchAxgShrinkRequest = BindBatchAxgShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.axgBindList)) {
            request.axgBindListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.axgBindList, "AxgBindList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.axgBindListShrink)) {
            query["AxgBindList"] = request.axgBindListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
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
            "action": "BindBatchAxg",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindBatchAxgResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindBatchAxg(_ request: BindBatchAxgRequest) async throws -> BindBatchAxgResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindBatchAxgWithOptions(request as! BindBatchAxgRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func buySecretNoWithOptions(_ request: BuySecretNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BuySecretNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayPool)) {
            query["DisplayPool"] = request.displayPool!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specId)) {
            query["SpecId"] = request.specId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BuySecretNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BuySecretNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func buySecretNo(_ request: BuySecretNoRequest) async throws -> BuySecretNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await buySecretNoWithOptions(request as! BuySecretNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelPickUpWaybillWithOptions(_ request: CancelPickUpWaybillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelPickUpWaybillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cancelDesc)) {
            query["CancelDesc"] = request.cancelDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderCode)) {
            query["OuterOrderCode"] = request.outerOrderCode ?? "";
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
            "action": "CancelPickUpWaybill",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelPickUpWaybillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelPickUpWaybill(_ request: CancelPickUpWaybillRequest) async throws -> CancelPickUpWaybillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelPickUpWaybillWithOptions(request as! CancelPickUpWaybillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAxgGroupWithOptions(_ request: CreateAxgGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAxgGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.numbers)) {
            query["Numbers"] = request.numbers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
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
            "action": "CreateAxgGroup",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAxgGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAxgGroup(_ request: CreateAxgGroupRequest) async throws -> CreateAxgGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAxgGroupWithOptions(request as! CreateAxgGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPickUpWaybillWithOptions(_ tmpReq: CreatePickUpWaybillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePickUpWaybillResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePickUpWaybillShrinkRequest = CreatePickUpWaybillShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.consigneeAddress)) {
            request.consigneeAddressShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.consigneeAddress, "ConsigneeAddress", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.goodsInfos)) {
            request.goodsInfosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.goodsInfos, "GoodsInfos", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sendAddress)) {
            request.sendAddressShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sendAddress, "SendAddress", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appointGotEndTime)) {
            query["AppointGotEndTime"] = request.appointGotEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appointGotStartTime)) {
            query["AppointGotStartTime"] = request.appointGotStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType!;
        }
        if (!TeaUtils.Client.isUnset(request.consigneeAddressShrink)) {
            query["ConsigneeAddress"] = request.consigneeAddressShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consigneeMobile)) {
            query["ConsigneeMobile"] = request.consigneeMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consigneeName)) {
            query["ConsigneeName"] = request.consigneeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consigneePhone)) {
            query["ConsigneePhone"] = request.consigneePhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpCode)) {
            query["CpCode"] = request.cpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.goodsInfosShrink)) {
            query["GoodsInfos"] = request.goodsInfosShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderChannels)) {
            query["OrderChannels"] = request.orderChannels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderCode)) {
            query["OuterOrderCode"] = request.outerOrderCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendAddressShrink)) {
            query["SendAddress"] = request.sendAddressShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendMobile)) {
            query["SendMobile"] = request.sendMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendName)) {
            query["SendName"] = request.sendName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendPhone)) {
            query["SendPhone"] = request.sendPhone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePickUpWaybill",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePickUpWaybillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPickUpWaybill(_ request: CreatePickUpWaybillRequest) async throws -> CreatePickUpWaybillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPickUpWaybillWithOptions(request as! CreatePickUpWaybillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPickUpWaybillPreQueryWithOptions(_ tmpReq: CreatePickUpWaybillPreQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePickUpWaybillPreQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePickUpWaybillPreQueryShrinkRequest = CreatePickUpWaybillPreQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.consigneeInfo)) {
            request.consigneeInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.consigneeInfo, "ConsigneeInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.senderInfo)) {
            request.senderInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.senderInfo, "SenderInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consigneeInfoShrink)) {
            query["ConsigneeInfo"] = request.consigneeInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpCode)) {
            query["CpCode"] = request.cpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderChannels)) {
            query["OrderChannels"] = request.orderChannels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderCode)) {
            query["OuterOrderCode"] = request.outerOrderCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preWeight)) {
            query["PreWeight"] = request.preWeight ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.senderInfoShrink)) {
            query["SenderInfo"] = request.senderInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePickUpWaybillPreQuery",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePickUpWaybillPreQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPickUpWaybillPreQuery(_ request: CreatePickUpWaybillPreQueryRequest) async throws -> CreatePickUpWaybillPreQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPickUpWaybillPreQueryWithOptions(request as! CreatePickUpWaybillPreQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAxgGroupWithOptions(_ request: DeleteAxgGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAxgGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
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
            "action": "DeleteAxgGroup",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAxgGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAxgGroup(_ request: DeleteAxgGroupRequest) async throws -> DeleteAxgGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAxgGroupWithOptions(request as! DeleteAxgGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecretBlacklistWithOptions(_ request: DeleteSecretBlacklistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSecretBlacklistResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blackNo)) {
            query["BlackNo"] = request.blackNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.blackType)) {
            query["BlackType"] = request.blackType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wayControl)) {
            query["WayControl"] = request.wayControl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSecretBlacklist",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSecretBlacklistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecretBlacklist(_ request: DeleteSecretBlacklistRequest) async throws -> DeleteSecretBlacklistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSecretBlacklistWithOptions(request as! DeleteSecretBlacklistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecretAsrDetailWithOptions(_ request: GetSecretAsrDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSecretAsrDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callTime)) {
            query["CallTime"] = request.callTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSecretAsrDetail",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSecretAsrDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecretAsrDetail(_ request: GetSecretAsrDetailRequest) async throws -> GetSecretAsrDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSecretAsrDetailWithOptions(request as! GetSecretAsrDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTotalPublicUrlWithOptions(_ request: GetTotalPublicUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTotalPublicUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callTime)) {
            query["CallTime"] = request.callTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkSubs)) {
            query["CheckSubs"] = request.checkSubs!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.partnerKey)) {
            query["PartnerKey"] = request.partnerKey ?? "";
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
            "action": "GetTotalPublicUrl",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTotalPublicUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTotalPublicUrl(_ request: GetTotalPublicUrlRequest) async throws -> GetTotalPublicUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTotalPublicUrlWithOptions(request as! GetTotalPublicUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockSecretNoWithOptions(_ request: LockSecretNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LockSecretNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LockSecretNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LockSecretNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockSecretNo(_ request: LockSecretNoRequest) async throws -> LockSecretNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await lockSecretNoWithOptions(request as! LockSecretNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateAxgGroupWithOptions(_ request: OperateAxgGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateAxgGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.numbers)) {
            query["Numbers"] = request.numbers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
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
            "action": "OperateAxgGroup",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateAxgGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateAxgGroup(_ request: OperateAxgGroupRequest) async throws -> OperateAxgGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateAxgGroupWithOptions(request as! OperateAxgGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateBlackNoWithOptions(_ request: OperateBlackNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateBlackNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blackNo)) {
            query["BlackNo"] = request.blackNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.tips)) {
            query["Tips"] = request.tips ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateBlackNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateBlackNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateBlackNo(_ request: OperateBlackNoRequest) async throws -> OperateBlackNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateBlackNoWithOptions(request as! OperateBlackNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPhoneNoAByTrackNoWithOptions(_ request: QueryPhoneNoAByTrackNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPhoneNoAByTrackNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cabinetNo)) {
            query["CabinetNo"] = request.cabinetNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.trackNo)) {
            query["trackNo"] = request.trackNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPhoneNoAByTrackNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPhoneNoAByTrackNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPhoneNoAByTrackNo(_ request: QueryPhoneNoAByTrackNoRequest) async throws -> QueryPhoneNoAByTrackNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPhoneNoAByTrackNoWithOptions(request as! QueryPhoneNoAByTrackNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordFileDownloadUrlWithOptions(_ request: QueryRecordFileDownloadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordFileDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callTime)) {
            query["CallTime"] = request.callTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
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
            "action": "QueryRecordFileDownloadUrl",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordFileDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordFileDownloadUrl(_ request: QueryRecordFileDownloadUrlRequest) async throws -> QueryRecordFileDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordFileDownloadUrlWithOptions(request as! QueryRecordFileDownloadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecretNoDetailWithOptions(_ request: QuerySecretNoDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySecretNoDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySecretNoDetail",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySecretNoDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecretNoDetail(_ request: QuerySecretNoDetailRequest) async throws -> QuerySecretNoDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySecretNoDetailWithOptions(request as! QuerySecretNoDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecretNoRemainWithOptions(_ request: QuerySecretNoRemainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySecretNoRemainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
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
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specId)) {
            query["SpecId"] = request.specId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySecretNoRemain",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySecretNoRemainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecretNoRemain(_ request: QuerySecretNoRemainRequest) async throws -> QuerySecretNoRemainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySecretNoRemainWithOptions(request as! QuerySecretNoRemainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySubsIdWithOptions(_ request: QuerySubsIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySubsIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
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
            "action": "QuerySubsId",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySubsIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySubsId(_ request: QuerySubsIdRequest) async throws -> QuerySubsIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySubsIdWithOptions(request as! QuerySubsIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySubscriptionDetailWithOptions(_ request: QuerySubscriptionDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySubscriptionDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subsId)) {
            query["SubsId"] = request.subsId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySubscriptionDetail",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySubscriptionDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySubscriptionDetail(_ request: QuerySubscriptionDetailRequest) async throws -> QuerySubscriptionDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySubscriptionDetailWithOptions(request as! QuerySubscriptionDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseSecretNoWithOptions(_ request: ReleaseSecretNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseSecretNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseSecretNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseSecretNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseSecretNo(_ request: ReleaseSecretNoRequest) async throws -> ReleaseSecretNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseSecretNoWithOptions(request as! ReleaseSecretNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindSubscriptionWithOptions(_ request: UnbindSubscriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subsId)) {
            query["SubsId"] = request.subsId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindSubscription",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindSubscription(_ request: UnbindSubscriptionRequest) async throws -> UnbindSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindSubscriptionWithOptions(request as! UnbindSubscriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unlockSecretNoWithOptions(_ request: UnlockSecretNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnlockSecretNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnlockSecretNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnlockSecretNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unlockSecretNo(_ request: UnlockSecretNoRequest) async throws -> UnlockSecretNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unlockSecretNoWithOptions(request as! UnlockSecretNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubscriptionWithOptions(_ request: UpdateSubscriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASRModelId)) {
            query["ASRModelId"] = request.ASRModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ASRStatus)) {
            query["ASRStatus"] = request.ASRStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.callDisplayType)) {
            query["CallDisplayType"] = request.callDisplayType!;
        }
        if (!TeaUtils.Client.isUnset(request.callRestrict)) {
            query["CallRestrict"] = request.callRestrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecordingEnabled)) {
            query["IsRecordingEnabled"] = request.isRecordingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoB)) {
            query["PhoneNoB"] = request.phoneNoB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ringConfig)) {
            query["RingConfig"] = request.ringConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subsId)) {
            query["SubsId"] = request.subsId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSubscription",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubscription(_ request: UpdateSubscriptionRequest) async throws -> UpdateSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSubscriptionWithOptions(request as! UpdateSubscriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
