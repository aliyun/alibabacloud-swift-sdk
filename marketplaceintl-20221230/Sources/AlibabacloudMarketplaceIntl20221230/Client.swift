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
        self._endpoint = try getEndpoint("marketplaceintl", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func noticeInstanceUserWithOptions(_ request: NoticeInstanceUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> NoticeInstanceUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.noticeParam)) {
            body["NoticeParam"] = request.noticeParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.noticeType)) {
            body["NoticeType"] = request.noticeType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "NoticeInstanceUser",
            "version": "2022-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(NoticeInstanceUserResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(NoticeInstanceUserResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func noticeInstanceUser(_ request: NoticeInstanceUserRequest) async throws -> NoticeInstanceUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await noticeInstanceUserWithOptions(request as! NoticeInstanceUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushMeteringDataWithOptions(_ request: PushMeteringDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushMeteringDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gmtCreate)) {
            body["GmtCreate"] = request.gmtCreate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.meteringData)) {
            body["MeteringData"] = request.meteringData ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushMeteringData",
            "version": "2022-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(PushMeteringDataResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(PushMeteringDataResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushMeteringData(_ request: PushMeteringDataRequest) async throws -> PushMeteringDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushMeteringDataWithOptions(request as! PushMeteringDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
