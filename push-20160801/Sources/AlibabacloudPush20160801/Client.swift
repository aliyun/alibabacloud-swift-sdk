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
            "ap-northeast-1": "cloudpush.aliyuncs.com",
            "ap-northeast-2-pop": "cloudpush.aliyuncs.com",
            "ap-south-1": "cloudpush.aliyuncs.com",
            "ap-southeast-1": "cloudpush.aliyuncs.com",
            "ap-southeast-2": "cloudpush.aliyuncs.com",
            "ap-southeast-3": "cloudpush.aliyuncs.com",
            "ap-southeast-5": "cloudpush.aliyuncs.com",
            "cn-beijing": "cloudpush.aliyuncs.com",
            "cn-beijing-finance-1": "cloudpush.aliyuncs.com",
            "cn-beijing-finance-pop": "cloudpush.aliyuncs.com",
            "cn-beijing-gov-1": "cloudpush.aliyuncs.com",
            "cn-beijing-nu16-b01": "cloudpush.aliyuncs.com",
            "cn-chengdu": "cloudpush.aliyuncs.com",
            "cn-edge-1": "cloudpush.aliyuncs.com",
            "cn-fujian": "cloudpush.aliyuncs.com",
            "cn-haidian-cm12-c01": "cloudpush.aliyuncs.com",
            "cn-hangzhou": "cloudpush.aliyuncs.com",
            "cn-hangzhou-bj-b01": "cloudpush.aliyuncs.com",
            "cn-hangzhou-finance": "cloudpush.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "cloudpush.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "cloudpush.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "cloudpush.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "cloudpush.aliyuncs.com",
            "cn-hangzhou-test-306": "cloudpush.aliyuncs.com",
            "cn-hongkong": "cloudpush.aliyuncs.com",
            "cn-hongkong-finance-pop": "cloudpush.aliyuncs.com",
            "cn-huhehaote": "cloudpush.aliyuncs.com",
            "cn-north-2-gov-1": "cloudpush.aliyuncs.com",
            "cn-qingdao": "cloudpush.aliyuncs.com",
            "cn-qingdao-nebula": "cloudpush.aliyuncs.com",
            "cn-shanghai": "cloudpush.aliyuncs.com",
            "cn-shanghai-et15-b01": "cloudpush.aliyuncs.com",
            "cn-shanghai-et2-b01": "cloudpush.aliyuncs.com",
            "cn-shanghai-finance-1": "cloudpush.aliyuncs.com",
            "cn-shanghai-inner": "cloudpush.aliyuncs.com",
            "cn-shanghai-internal-test-1": "cloudpush.aliyuncs.com",
            "cn-shenzhen": "cloudpush.aliyuncs.com",
            "cn-shenzhen-finance-1": "cloudpush.aliyuncs.com",
            "cn-shenzhen-inner": "cloudpush.aliyuncs.com",
            "cn-shenzhen-st4-d01": "cloudpush.aliyuncs.com",
            "cn-shenzhen-su18-b01": "cloudpush.aliyuncs.com",
            "cn-wuhan": "cloudpush.aliyuncs.com",
            "cn-yushanfang": "cloudpush.aliyuncs.com",
            "cn-zhangbei-na61-b01": "cloudpush.aliyuncs.com",
            "cn-zhangjiakou": "cloudpush.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "cloudpush.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "cloudpush.aliyuncs.com",
            "eu-central-1": "cloudpush.aliyuncs.com",
            "eu-west-1": "cloudpush.aliyuncs.com",
            "eu-west-1-oxs": "cloudpush.aliyuncs.com",
            "me-east-1": "cloudpush.aliyuncs.com",
            "rus-west-1-pop": "cloudpush.aliyuncs.com",
            "us-east-1": "cloudpush.aliyuncs.com",
            "us-west-1": "cloudpush.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("push", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func bindAliasWithOptions(_ request: BindAliasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAliasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliasName)) {
            query["AliasName"] = request.aliasName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAlias",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAlias(_ request: BindAliasRequest) async throws -> BindAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAliasWithOptions(request as! BindAliasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindPhoneWithOptions(_ request: BindPhoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindPhoneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindPhone",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindPhoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindPhone(_ request: BindPhoneRequest) async throws -> BindPhoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindPhoneWithOptions(request as! BindPhoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindTagWithOptions(_ request: BindTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.clientKey)) {
            query["ClientKey"] = request.clientKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyType)) {
            query["KeyType"] = request.keyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["TagName"] = request.tagName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindTag",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindTag(_ request: BindTagRequest) async throws -> BindTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindTagWithOptions(request as! BindTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelPushWithOptions(_ request: CancelPushRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelPushResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.messageId)) {
            query["MessageId"] = request.messageId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelPush",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelPushResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelPush(_ request: CancelPushRequest) async throws -> CancelPushResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelPushWithOptions(request as! CancelPushRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkCertificateWithOptions(_ request: CheckCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckCertificate",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkCertificate(_ request: CheckCertificateRequest) async throws -> CheckCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkCertificateWithOptions(request as! CheckCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDeviceWithOptions(_ request: CheckDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDevice",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDevice(_ request: CheckDeviceRequest) async throws -> CheckDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDeviceWithOptions(request as! CheckDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDevicesWithOptions(_ request: CheckDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceIds)) {
            query["DeviceIds"] = request.deviceIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDevices",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDevices(_ request: CheckDevicesRequest) async throws -> CheckDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDevicesWithOptions(request as! CheckDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func completeContinuouslyPushWithOptions(_ request: CompleteContinuouslyPushRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CompleteContinuouslyPushResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.messageId)) {
            query["MessageId"] = request.messageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CompleteContinuouslyPush",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CompleteContinuouslyPushResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func completeContinuouslyPush(_ request: CompleteContinuouslyPushRequest) async throws -> CompleteContinuouslyPushResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await completeContinuouslyPushWithOptions(request as! CompleteContinuouslyPushRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func continuouslyPushWithOptions(_ request: ContinuouslyPushRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ContinuouslyPushResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.messageId)) {
            query["MessageId"] = request.messageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetValue)) {
            query["TargetValue"] = request.targetValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ContinuouslyPush",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ContinuouslyPushResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func continuouslyPush(_ request: ContinuouslyPushRequest) async throws -> ContinuouslyPushResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await continuouslyPushWithOptions(request as! ContinuouslyPushRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSummaryAppsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListSummaryAppsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSummaryApps",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSummaryAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSummaryApps() async throws -> ListSummaryAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSummaryAppsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagsWithOptions(_ request: ListTagsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTags",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTags(_ request: ListTagsRequest) async throws -> ListTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagsWithOptions(request as! ListTagsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func massPushWithOptions(_ request: MassPushRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MassPushResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pushTask)) {
            body["PushTask"] = request.pushTask ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MassPush",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MassPushResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func massPush(_ request: MassPushRequest) async throws -> MassPushResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await massPushWithOptions(request as! MassPushRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushWithOptions(_ request: PushRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.androidActivity)) {
            query["AndroidActivity"] = request.androidActivity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidBigBody)) {
            query["AndroidBigBody"] = request.androidBigBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidBigPictureUrl)) {
            query["AndroidBigPictureUrl"] = request.androidBigPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidBigTitle)) {
            query["AndroidBigTitle"] = request.androidBigTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidExtParameters)) {
            query["AndroidExtParameters"] = request.androidExtParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidHonorTargetUserType)) {
            query["AndroidHonorTargetUserType"] = request.androidHonorTargetUserType!;
        }
        if (!TeaUtils.Client.isUnset(request.androidHuaweiReceiptId)) {
            query["AndroidHuaweiReceiptId"] = request.androidHuaweiReceiptId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidHuaweiTargetUserType)) {
            query["AndroidHuaweiTargetUserType"] = request.androidHuaweiTargetUserType!;
        }
        if (!TeaUtils.Client.isUnset(request.androidImageUrl)) {
            query["AndroidImageUrl"] = request.androidImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidInboxBody)) {
            query["AndroidInboxBody"] = request.androidInboxBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidMessageHuaweiCategory)) {
            query["AndroidMessageHuaweiCategory"] = request.androidMessageHuaweiCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidMessageHuaweiUrgency)) {
            query["AndroidMessageHuaweiUrgency"] = request.androidMessageHuaweiUrgency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidMessageVivoCategory)) {
            query["AndroidMessageVivoCategory"] = request.androidMessageVivoCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidMusic)) {
            query["AndroidMusic"] = request.androidMusic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidNotificationBarPriority)) {
            query["AndroidNotificationBarPriority"] = request.androidNotificationBarPriority!;
        }
        if (!TeaUtils.Client.isUnset(request.androidNotificationBarType)) {
            query["AndroidNotificationBarType"] = request.androidNotificationBarType!;
        }
        if (!TeaUtils.Client.isUnset(request.androidNotificationChannel)) {
            query["AndroidNotificationChannel"] = request.androidNotificationChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidNotificationGroup)) {
            query["AndroidNotificationGroup"] = request.androidNotificationGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidNotificationHonorChannel)) {
            query["AndroidNotificationHonorChannel"] = request.androidNotificationHonorChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidNotificationHuaweiChannel)) {
            query["AndroidNotificationHuaweiChannel"] = request.androidNotificationHuaweiChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidNotificationNotifyId)) {
            query["AndroidNotificationNotifyId"] = request.androidNotificationNotifyId!;
        }
        if (!TeaUtils.Client.isUnset(request.androidNotificationVivoChannel)) {
            query["AndroidNotificationVivoChannel"] = request.androidNotificationVivoChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidNotificationXiaomiChannel)) {
            query["AndroidNotificationXiaomiChannel"] = request.androidNotificationXiaomiChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidNotifyType)) {
            query["AndroidNotifyType"] = request.androidNotifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidOpenType)) {
            query["AndroidOpenType"] = request.androidOpenType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidOpenUrl)) {
            query["AndroidOpenUrl"] = request.androidOpenUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidPopupActivity)) {
            query["AndroidPopupActivity"] = request.androidPopupActivity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidPopupBody)) {
            query["AndroidPopupBody"] = request.androidPopupBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidPopupTitle)) {
            query["AndroidPopupTitle"] = request.androidPopupTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidRemind)) {
            query["AndroidRemind"] = request.androidRemind!;
        }
        if (!TeaUtils.Client.isUnset(request.androidRenderStyle)) {
            query["AndroidRenderStyle"] = request.androidRenderStyle!;
        }
        if (!TeaUtils.Client.isUnset(request.androidTargetUserType)) {
            query["AndroidTargetUserType"] = request.androidTargetUserType!;
        }
        if (!TeaUtils.Client.isUnset(request.androidVivoPushMode)) {
            query["AndroidVivoPushMode"] = request.androidVivoPushMode!;
        }
        if (!TeaUtils.Client.isUnset(request.androidXiaoMiActivity)) {
            query["AndroidXiaoMiActivity"] = request.androidXiaoMiActivity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidXiaoMiNotifyBody)) {
            query["AndroidXiaoMiNotifyBody"] = request.androidXiaoMiNotifyBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidXiaoMiNotifyTitle)) {
            query["AndroidXiaoMiNotifyTitle"] = request.androidXiaoMiNotifyTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidXiaomiBigPictureUrl)) {
            query["AndroidXiaomiBigPictureUrl"] = request.androidXiaomiBigPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.androidXiaomiImageUrl)) {
            query["AndroidXiaomiImageUrl"] = request.androidXiaomiImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.body)) {
            query["Body"] = request.body ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            query["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            query["ExpireTime"] = request.expireTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobKey)) {
            query["JobKey"] = request.jobKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushTime)) {
            query["PushTime"] = request.pushTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushType)) {
            query["PushType"] = request.pushType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendChannels)) {
            query["SendChannels"] = request.sendChannels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendSpeed)) {
            query["SendSpeed"] = request.sendSpeed!;
        }
        if (!TeaUtils.Client.isUnset(request.smsDelaySecs)) {
            query["SmsDelaySecs"] = request.smsDelaySecs!;
        }
        if (!TeaUtils.Client.isUnset(request.smsParams)) {
            query["SmsParams"] = request.smsParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smsSendPolicy)) {
            query["SmsSendPolicy"] = request.smsSendPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.smsSignName)) {
            query["SmsSignName"] = request.smsSignName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smsTemplateName)) {
            query["SmsTemplateName"] = request.smsTemplateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeOffline)) {
            query["StoreOffline"] = request.storeOffline!;
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetValue)) {
            query["TargetValue"] = request.targetValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trim)) {
            query["Trim"] = request.trim!;
        }
        if (!TeaUtils.Client.isUnset(request.iOSApnsEnv)) {
            query["iOSApnsEnv"] = request.iOSApnsEnv ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iOSBadge)) {
            query["iOSBadge"] = request.iOSBadge!;
        }
        if (!TeaUtils.Client.isUnset(request.iOSBadgeAutoIncrement)) {
            query["iOSBadgeAutoIncrement"] = request.iOSBadgeAutoIncrement!;
        }
        if (!TeaUtils.Client.isUnset(request.iOSExtParameters)) {
            query["iOSExtParameters"] = request.iOSExtParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iOSInterruptionLevel)) {
            query["iOSInterruptionLevel"] = request.iOSInterruptionLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iOSMusic)) {
            query["iOSMusic"] = request.iOSMusic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iOSMutableContent)) {
            query["iOSMutableContent"] = request.iOSMutableContent!;
        }
        if (!TeaUtils.Client.isUnset(request.iOSNotificationCategory)) {
            query["iOSNotificationCategory"] = request.iOSNotificationCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iOSNotificationCollapseId)) {
            query["iOSNotificationCollapseId"] = request.iOSNotificationCollapseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iOSNotificationThreadId)) {
            query["iOSNotificationThreadId"] = request.iOSNotificationThreadId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iOSRelevanceScore)) {
            query["iOSRelevanceScore"] = request.iOSRelevanceScore!;
        }
        if (!TeaUtils.Client.isUnset(request.iOSRemind)) {
            query["iOSRemind"] = request.iOSRemind!;
        }
        if (!TeaUtils.Client.isUnset(request.iOSRemindBody)) {
            query["iOSRemindBody"] = request.iOSRemindBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iOSSilentNotification)) {
            query["iOSSilentNotification"] = request.iOSSilentNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.iOSSubtitle)) {
            query["iOSSubtitle"] = request.iOSSubtitle ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Push",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func push(_ request: PushRequest) async throws -> PushResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushWithOptions(request as! PushRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushMessageToAndroidWithOptions(_ request: PushMessageToAndroidRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushMessageToAndroidResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.body)) {
            query["Body"] = request.body ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobKey)) {
            query["JobKey"] = request.jobKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeOffline)) {
            query["StoreOffline"] = request.storeOffline!;
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetValue)) {
            query["TargetValue"] = request.targetValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushMessageToAndroid",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushMessageToAndroidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushMessageToAndroid(_ request: PushMessageToAndroidRequest) async throws -> PushMessageToAndroidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushMessageToAndroidWithOptions(request as! PushMessageToAndroidRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushMessageToiOSWithOptions(_ request: PushMessageToiOSRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushMessageToiOSResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.body)) {
            query["Body"] = request.body ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobKey)) {
            query["JobKey"] = request.jobKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeOffline)) {
            query["StoreOffline"] = request.storeOffline!;
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetValue)) {
            query["TargetValue"] = request.targetValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushMessageToiOS",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushMessageToiOSResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushMessageToiOS(_ request: PushMessageToiOSRequest) async throws -> PushMessageToiOSResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushMessageToiOSWithOptions(request as! PushMessageToiOSRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushNoticeToAndroidWithOptions(_ request: PushNoticeToAndroidRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushNoticeToAndroidResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.body)) {
            query["Body"] = request.body ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extParameters)) {
            query["ExtParameters"] = request.extParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobKey)) {
            query["JobKey"] = request.jobKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeOffline)) {
            query["StoreOffline"] = request.storeOffline!;
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetValue)) {
            query["TargetValue"] = request.targetValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushNoticeToAndroid",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushNoticeToAndroidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushNoticeToAndroid(_ request: PushNoticeToAndroidRequest) async throws -> PushNoticeToAndroidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushNoticeToAndroidWithOptions(request as! PushNoticeToAndroidRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushNoticeToiOSWithOptions(_ request: PushNoticeToiOSRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushNoticeToiOSResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apnsEnv)) {
            query["ApnsEnv"] = request.apnsEnv ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.body)) {
            query["Body"] = request.body ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extParameters)) {
            query["ExtParameters"] = request.extParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobKey)) {
            query["JobKey"] = request.jobKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetValue)) {
            query["TargetValue"] = request.targetValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushNoticeToiOS",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushNoticeToiOSResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushNoticeToiOS(_ request: PushNoticeToiOSRequest) async throws -> PushNoticeToiOSResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushNoticeToiOSWithOptions(request as! PushNoticeToiOSRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAliasesWithOptions(_ request: QueryAliasesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAliasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAliases",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAliasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAliases(_ request: QueryAliasesRequest) async throws -> QueryAliasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAliasesWithOptions(request as! QueryAliasesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceInfoWithOptions(_ request: QueryDeviceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDeviceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDeviceInfo",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDeviceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceInfo(_ request: QueryDeviceInfoRequest) async throws -> QueryDeviceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDeviceInfoWithOptions(request as! QueryDeviceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceStatWithOptions(_ request: QueryDeviceStatRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDeviceStatResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            query["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDeviceStat",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDeviceStatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceStat(_ request: QueryDeviceStatRequest) async throws -> QueryDeviceStatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDeviceStatWithOptions(request as! QueryDeviceStatRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicesByAccountWithOptions(_ request: QueryDevicesByAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDevicesByAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDevicesByAccount",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDevicesByAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicesByAccount(_ request: QueryDevicesByAccountRequest) async throws -> QueryDevicesByAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDevicesByAccountWithOptions(request as! QueryDevicesByAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicesByAliasWithOptions(_ request: QueryDevicesByAliasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDevicesByAliasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            query["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDevicesByAlias",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDevicesByAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicesByAlias(_ request: QueryDevicesByAliasRequest) async throws -> QueryDevicesByAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDevicesByAliasWithOptions(request as! QueryDevicesByAliasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushRecordsWithOptions(_ request: QueryPushRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPushRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pushType)) {
            query["PushType"] = request.pushType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPushRecords",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPushRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushRecords(_ request: QueryPushRecordsRequest) async throws -> QueryPushRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPushRecordsWithOptions(request as! QueryPushRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushStatByAppWithOptions(_ request: QueryPushStatByAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPushStatByAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.granularity)) {
            query["Granularity"] = request.granularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPushStatByApp",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPushStatByAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushStatByApp(_ request: QueryPushStatByAppRequest) async throws -> QueryPushStatByAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPushStatByAppWithOptions(request as! QueryPushStatByAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushStatByMsgWithOptions(_ request: QueryPushStatByMsgRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPushStatByMsgResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.messageId)) {
            query["MessageId"] = request.messageId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPushStatByMsg",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPushStatByMsgResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPushStatByMsg(_ request: QueryPushStatByMsgRequest) async throws -> QueryPushStatByMsgResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPushStatByMsgWithOptions(request as! QueryPushStatByMsgRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTagsWithOptions(_ request: QueryTagsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.clientKey)) {
            query["ClientKey"] = request.clientKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyType)) {
            query["KeyType"] = request.keyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTags",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTags(_ request: QueryTagsRequest) async throws -> QueryTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTagsWithOptions(request as! QueryTagsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUniqueDeviceStatWithOptions(_ request: QueryUniqueDeviceStatRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUniqueDeviceStatResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.granularity)) {
            query["Granularity"] = request.granularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUniqueDeviceStat",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUniqueDeviceStatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUniqueDeviceStat(_ request: QueryUniqueDeviceStatRequest) async throws -> QueryUniqueDeviceStatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUniqueDeviceStatWithOptions(request as! QueryUniqueDeviceStatRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeTagWithOptions(_ request: RemoveTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["TagName"] = request.tagName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveTag",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeTag(_ request: RemoveTagRequest) async throws -> RemoveTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeTagWithOptions(request as! RemoveTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindAliasWithOptions(_ request: UnbindAliasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindAliasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliasName)) {
            query["AliasName"] = request.aliasName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unbindAll)) {
            query["UnbindAll"] = request.unbindAll!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindAlias",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindAlias(_ request: UnbindAliasRequest) async throws -> UnbindAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindAliasWithOptions(request as! UnbindAliasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindPhoneWithOptions(_ request: UnbindPhoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindPhoneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindPhone",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindPhoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindPhone(_ request: UnbindPhoneRequest) async throws -> UnbindPhoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindPhoneWithOptions(request as! UnbindPhoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindTagWithOptions(_ request: UnbindTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.clientKey)) {
            query["ClientKey"] = request.clientKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyType)) {
            query["KeyType"] = request.keyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["TagName"] = request.tagName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindTag",
            "version": "2016-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindTag(_ request: UnbindTagRequest) async throws -> UnbindTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindTagWithOptions(request as! UnbindTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
