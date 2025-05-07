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
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("wuyingsolutionframework", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func sendOpsMessageToTerminalWithOptions(_ request: SendOpsMessageToTerminalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendOpsMessageToTerminalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.messageBody)) {
            query["MessageBody"] = request.messageBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeRegionId)) {
            query["OfficeRegionId"] = request.officeRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opsAction)) {
            query["OpsAction"] = request.opsAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            query["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.waitForAck)) {
            query["WaitForAck"] = request.waitForAck!;
        }
        if (!TeaUtils.Client.isUnset(request.waitForMsg)) {
            query["WaitForMsg"] = request.waitForMsg!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendOpsMessageToTerminal",
            "version": "2023-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendOpsMessageToTerminalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendOpsMessageToTerminal(_ request: SendOpsMessageToTerminalRequest) async throws -> SendOpsMessageToTerminalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendOpsMessageToTerminalWithOptions(request as! SendOpsMessageToTerminalRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
