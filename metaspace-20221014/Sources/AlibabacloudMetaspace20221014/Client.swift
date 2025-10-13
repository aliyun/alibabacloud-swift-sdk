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
        self._endpoint = try getEndpoint("metaspace", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func applyCoordinationForCoordinatorWithOptions(_ request: ApplyCoordinationForCoordinatorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyCoordinationForCoordinatorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coordinationResourceCandidates)) {
            bodyFlat["CoordinationResourceCandidates"] = request.coordinationResourceCandidates ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.initiatorType)) {
            body["InitiatorType"] = request.initiatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyCoordinationForCoordinator",
            "version": "2022-10-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyCoordinationForCoordinatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyCoordinationForCoordinator(_ request: ApplyCoordinationForCoordinatorRequest) async throws -> ApplyCoordinationForCoordinatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyCoordinationForCoordinatorWithOptions(request as! ApplyCoordinationForCoordinatorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCoordinationWithOptions(_ request: CancelCoordinationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelCoordinationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coIds)) {
            bodyFlat["CoIds"] = request.coIds ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelCoordination",
            "version": "2022-10-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelCoordinationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCoordination(_ request: CancelCoordinationRequest) async throws -> CancelCoordinationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelCoordinationWithOptions(request as! CancelCoordinationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCoordinationTicketWithOptions(_ request: GetCoordinationTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCoordinationTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coId)) {
            body["CoId"] = request.coId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCoordinationTicket",
            "version": "2022-10-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCoordinationTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCoordinationTicket(_ request: GetCoordinationTicketRequest) async throws -> GetCoordinationTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCoordinationTicketWithOptions(request as! GetCoordinationTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
