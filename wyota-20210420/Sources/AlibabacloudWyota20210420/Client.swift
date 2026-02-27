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
        self._endpoint = try getEndpoint("wyota", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addTerminalWithOptions(_ request: AddTerminalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTerminalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            body["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            body["ClientType"] = request.clientType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainBizType)) {
            body["MainBizType"] = request.mainBizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            body["SerialNumber"] = request.serialNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminalGroupId)) {
            body["TerminalGroupId"] = request.terminalGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddTerminal",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddTerminalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTerminal(_ request: AddTerminalRequest) async throws -> AddTerminalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addTerminalWithOptions(request as! AddTerminalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTerminalsWithOptions(_ request: AddTerminalsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTerminalsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addTerminalParams)) {
            bodyFlat["AddTerminalParams"] = request.addTerminalParams ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.mainBizType)) {
            body["MainBizType"] = request.mainBizType ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddTerminals",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddTerminalsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTerminals(_ request: AddTerminalsRequest) async throws -> AddTerminalsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addTerminalsWithOptions(request as! AddTerminalsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAccountLessLoginUserWithOptions(_ request: BindAccountLessLoginUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAccountLessLoginUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            body["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            body["SerialNumber"] = request.serialNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAccountLessLoginUser",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAccountLessLoginUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAccountLessLoginUser(_ request: BindAccountLessLoginUserRequest) async throws -> BindAccountLessLoginUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAccountLessLoginUserWithOptions(request as! BindAccountLessLoginUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindPasswordFreeLoginUserWithOptions(_ request: BindPasswordFreeLoginUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindPasswordFreeLoginUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            body["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainBizType)) {
            body["MainBizType"] = request.mainBizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            body["SerialNumber"] = request.serialNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindPasswordFreeLoginUser",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindPasswordFreeLoginUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindPasswordFreeLoginUser(_ request: BindPasswordFreeLoginUserRequest) async throws -> BindPasswordFreeLoginUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindPasswordFreeLoginUserWithOptions(request as! BindPasswordFreeLoginUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeviceSeatsWithOptions(_ request: DescribeDeviceSeatsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDeviceSeatsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNoList)) {
            body["SerialNoList"] = request.serialNoList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.siteId)) {
            body["SiteId"] = request.siteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDeviceSeats",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDeviceSeatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeviceSeats(_ request: DescribeDeviceSeatsRequest) async throws -> DescribeDeviceSeatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDeviceSeatsWithOptions(request as! DescribeDeviceSeatsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTerminalWithOptions(_ request: ListTerminalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTerminalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            body["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildId)) {
            body["BuildId"] = request.buildId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            body["ClientType"] = request.clientType!;
        }
        if (!TeaUtils.Client.isUnset(request.inManage)) {
            body["InManage"] = request.inManage!;
        }
        if (!TeaUtils.Client.isUnset(request.ipv4)) {
            body["Ipv4"] = request.ipv4 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locationInfo)) {
            body["LocationInfo"] = request.locationInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchKeyword)) {
            body["SearchKeyword"] = request.searchKeyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            body["SerialNumber"] = request.serialNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminalGroupId)) {
            body["TerminalGroupId"] = request.terminalGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTerminal",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTerminalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTerminal(_ request: ListTerminalRequest) async throws -> ListTerminalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTerminalWithOptions(request as! ListTerminalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendOpsMessageToTerminalsWithOptions(_ request: SendOpsMessageToTerminalsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendOpsMessageToTerminalsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.delay)) {
            query["Delay"] = request.delay!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.msg)) {
            body["Msg"] = request.msg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opsAction)) {
            body["OpsAction"] = request.opsAction ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.uuids)) {
            bodyFlat["Uuids"] = request.uuids ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.waitForAck)) {
            body["WaitForAck"] = request.waitForAck!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendOpsMessageToTerminals",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendOpsMessageToTerminalsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendOpsMessageToTerminals(_ request: SendOpsMessageToTerminalsRequest) async throws -> SendOpsMessageToTerminalsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendOpsMessageToTerminalsWithOptions(request as! SendOpsMessageToTerminalsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindAccountLessLoginUserWithOptions(_ request: UnbindAccountLessLoginUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindAccountLessLoginUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            body["SerialNumber"] = request.serialNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindAccountLessLoginUser",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindAccountLessLoginUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindAccountLessLoginUser(_ request: UnbindAccountLessLoginUserRequest) async throws -> UnbindAccountLessLoginUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindAccountLessLoginUserWithOptions(request as! UnbindAccountLessLoginUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindDeviceSeatsWithOptions(_ tmpReq: UnbindDeviceSeatsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindDeviceSeatsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UnbindDeviceSeatsShrinkRequest = UnbindDeviceSeatsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.serialNoList)) {
            request.serialNoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.serialNoList, "SerialNoList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serialNoListShrink)) {
            body["SerialNoList"] = request.serialNoListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindDeviceSeats",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindDeviceSeatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindDeviceSeats(_ request: UnbindDeviceSeatsRequest) async throws -> UnbindDeviceSeatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindDeviceSeatsWithOptions(request as! UnbindDeviceSeatsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindPasswordFreeLoginUserWithOptions(_ request: UnbindPasswordFreeLoginUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindPasswordFreeLoginUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mainBizType)) {
            body["MainBizType"] = request.mainBizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            body["SerialNumber"] = request.serialNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindPasswordFreeLoginUser",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindPasswordFreeLoginUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindPasswordFreeLoginUser(_ request: UnbindPasswordFreeLoginUserRequest) async throws -> UnbindPasswordFreeLoginUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindPasswordFreeLoginUserWithOptions(request as! UnbindPasswordFreeLoginUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
