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
    public func activateDeviceWithOptions(_ request: ActivateDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ActivateDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActivateDevice",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActivateDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activateDevice(_ request: ActivateDeviceRequest) async throws -> ActivateDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await activateDeviceWithOptions(request as! ActivateDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDeviceFromSNWithOptions(_ request: AddDeviceFromSNRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDeviceFromSNResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            body["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customProperty)) {
            body["CustomProperty"] = request.customProperty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelContents)) {
            body["LabelContents"] = request.labelContents ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secureNetworkType)) {
            body["SecureNetworkType"] = request.secureNetworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDeviceFromSN",
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
        return Tea.TeaConverter.fromMap(AddDeviceFromSNResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDeviceFromSN(_ request: AddDeviceFromSNRequest) async throws -> AddDeviceFromSNResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDeviceFromSNWithOptions(request as! AddDeviceFromSNRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDeviceSeatsAndLabelsWithOptions(_ request: AddDeviceSeatsAndLabelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDeviceSeatsAndLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isUnique)) {
            body["IsUnique"] = request.isUnique!;
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            body["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelList)) {
            body["LabelList"] = request.labelList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.seatName)) {
            body["SeatName"] = request.seatName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDeviceSeatsAndLabels",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDeviceSeatsAndLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDeviceSeatsAndLabels(_ request: AddDeviceSeatsAndLabelsRequest) async throws -> AddDeviceSeatsAndLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDeviceSeatsAndLabelsWithOptions(request as! AddDeviceSeatsAndLabelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDevicesFromCSVWithOptions(_ request: AddDevicesFromCSVRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDevicesFromCSVResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            body["FileType"] = request.fileType!;
        }
        if (!TeaUtils.Client.isUnset(request.seatCol)) {
            body["SeatCol"] = request.seatCol!;
        }
        if (!TeaUtils.Client.isUnset(request.siteId)) {
            body["SiteId"] = request.siteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.siteName)) {
            body["SiteName"] = request.siteName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDevicesFromCSV",
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
        return Tea.TeaConverter.fromMap(AddDevicesFromCSVResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDevicesFromCSV(_ request: AddDevicesFromCSVRequest) async throws -> AddDevicesFromCSVResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDevicesFromCSVWithOptions(request as! AddDevicesFromCSVRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addLabelsWithOptions(_ request: AddLabelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelContents)) {
            body["LabelContents"] = request.labelContents ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddLabels",
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
        return Tea.TeaConverter.fromMap(AddLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addLabels(_ request: AddLabelsRequest) async throws -> AddLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addLabelsWithOptions(request as! AddLabelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addOrUpdateDeviceSeatsWithOptions(_ request: AddOrUpdateDeviceSeatsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddOrUpdateDeviceSeatsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCustomId)) {
            body["UserCustomId"] = request.userCustomId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddOrUpdateDeviceSeats",
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
        return Tea.TeaConverter.fromMap(AddOrUpdateDeviceSeatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addOrUpdateDeviceSeats(_ request: AddOrUpdateDeviceSeatsRequest) async throws -> AddOrUpdateDeviceSeatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addOrUpdateDeviceSeatsWithOptions(request as! AddOrUpdateDeviceSeatsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTerminalWithOptions(_ request: AddTerminalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTerminalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            body["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            body["SerialNumber"] = request.serialNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.terminalGroupId)) {
            body["TerminalGroupId"] = request.terminalGroupId ?? "";
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
    public func attachEndUsersWithOptions(_ request: AttachEndUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachEndUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endUserIds)) {
            body["EndUserIds"] = request.endUserIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachEndUsers",
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
        return Tea.TeaConverter.fromMap(AttachEndUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachEndUsers(_ request: AttachEndUsersRequest) async throws -> AttachEndUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachEndUsersWithOptions(request as! AttachEndUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachLabelWithOptions(_ request: AttachLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelContent)) {
            body["LabelContent"] = request.labelContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelId)) {
            body["LabelId"] = request.labelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachLabel",
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
        return Tea.TeaConverter.fromMap(AttachLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachLabel(_ request: AttachLabelRequest) async throws -> AttachLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachLabelWithOptions(request as! AttachLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachLabelsWithOptions(_ request: AttachLabelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelIds)) {
            body["LabelIds"] = request.labelIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNoList)) {
            body["SerialNoList"] = request.serialNoList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachLabels",
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
        return Tea.TeaConverter.fromMap(AttachLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachLabels(_ request: AttachLabelsRequest) async throws -> AttachLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachLabelsWithOptions(request as! AttachLabelsRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func checkUuidValidWithOptions(_ request: CheckUuidValidRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckUuidValidResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bluetooth)) {
            body["Bluetooth"] = request.bluetooth ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildId)) {
            body["BuildId"] = request.buildId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chipId)) {
            body["ChipId"] = request.chipId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            body["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customId)) {
            body["CustomId"] = request.customId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.etherMac)) {
            body["EtherMac"] = request.etherMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wlan)) {
            body["Wlan"] = request.wlan ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wosAppVersion)) {
            body["WosAppVersion"] = request.wosAppVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckUuidValid",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckUuidValidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkUuidValid(_ request: CheckUuidValidRequest) async throws -> CheckUuidValidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkUuidValidWithOptions(request as! CheckUuidValidRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppOtaTaskWithOptions(_ request: CreateAppOtaTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppOtaTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersionUid)) {
            query["AppVersionUid"] = request.appVersionUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientIdList)) {
            query["ClientIdList"] = request.clientIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType!;
        }
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceUpgrade)) {
            query["ForceUpgrade"] = request.forceUpgrade!;
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            query["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regions)) {
            query["Regions"] = request.regions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAppOtaTask",
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
        return Tea.TeaConverter.fromMap(CreateAppOtaTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppOtaTask(_ request: CreateAppOtaTaskRequest) async throws -> CreateAppOtaTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAppOtaTaskWithOptions(request as! CreateAppOtaTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppOtaVersionWithOptions(_ request: CreateAppOtaVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppOtaVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arch)) {
            query["Arch"] = request.arch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType!;
        }
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.downloadUrl)) {
            query["DownloadUrl"] = request.downloadUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.md5)) {
            query["Md5"] = request.md5 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            query["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            query["OsType"] = request.osType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaType)) {
            query["OtaType"] = request.otaType!;
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseNote)) {
            query["ReleaseNote"] = request.releaseNote ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseNoteEn)) {
            query["ReleaseNoteEn"] = request.releaseNoteEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseNoteJp)) {
            query["ReleaseNoteJp"] = request.releaseNoteJp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotRegionId)) {
            query["SnapshotRegionId"] = request.snapshotRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.versionType)) {
            query["VersionType"] = request.versionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAppOtaVersion",
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
        return Tea.TeaConverter.fromMap(CreateAppOtaVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppOtaVersion(_ request: CreateAppOtaVersionRequest) async throws -> CreateAppOtaVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAppOtaVersionWithOptions(request as! CreateAppOtaVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppOtaVersionsWithOptions(_ request: DeleteAppOtaVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAppOtaVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.versionUidList)) {
            query["VersionUidList"] = request.versionUidList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAppOtaVersions",
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
        return Tea.TeaConverter.fromMap(DeleteAppOtaVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppOtaVersions(_ request: DeleteAppOtaVersionsRequest) async throws -> DeleteAppOtaVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAppOtaVersionsWithOptions(request as! DeleteAppOtaVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDevicesWithOptions(_ request: DeleteDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.uuids)) {
            query["Uuids"] = request.uuids ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.force)) {
            body["Force"] = request.force ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNos)) {
            body["SerialNos"] = request.serialNos ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDevices",
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
        return Tea.TeaConverter.fromMap(DeleteDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDevices(_ request: DeleteDevicesRequest) async throws -> DeleteDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDevicesWithOptions(request as! DeleteDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLabelWithOptions(_ request: DeleteLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.force)) {
            body["Force"] = request.force ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelContent)) {
            body["LabelContent"] = request.labelContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelId)) {
            body["LabelId"] = request.labelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLabel",
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
        return Tea.TeaConverter.fromMap(DeleteLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLabel(_ request: DeleteLabelRequest) async throws -> DeleteLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLabelWithOptions(request as! DeleteLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppOtaVersionWithOptions(_ request: DescribeAppOtaVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppOtaVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType!;
        }
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.versionUid)) {
            query["VersionUid"] = request.versionUid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAppOtaVersion",
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
        return Tea.TeaConverter.fromMap(DescribeAppOtaVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppOtaVersion(_ request: DescribeAppOtaVersionRequest) async throws -> DescribeAppOtaVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAppOtaVersionWithOptions(request as! DescribeAppOtaVersionRequest, runtime as! TeaUtils.RuntimeOptions)
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
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDeviceSeatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeviceSeats(_ request: DescribeDeviceSeatsRequest) async throws -> DescribeDeviceSeatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDeviceSeatsWithOptions(request as! DescribeDeviceSeatsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeviceVersionDetailWithOptions(_ request: DescribeDeviceVersionDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDeviceVersionDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            body["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionName)) {
            body["VersionName"] = request.versionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDeviceVersionDetail",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDeviceVersionDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeviceVersionDetail(_ request: DescribeDeviceVersionDetailRequest) async throws -> DescribeDeviceVersionDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDeviceVersionDetailWithOptions(request as! DescribeDeviceVersionDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSnLabelCountsWithOptions(_ request: DescribeSnLabelCountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSnLabelCountsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelList)) {
            body["LabelList"] = request.labelList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneName)) {
            body["ZoneName"] = request.zoneName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSnLabelCounts",
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
        return Tea.TeaConverter.fromMap(DescribeSnLabelCountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSnLabelCounts(_ request: DescribeSnLabelCountsRequest) async throws -> DescribeSnLabelCountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSnLabelCountsWithOptions(request as! DescribeSnLabelCountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWorkZonesWithOptions(_ request: DescribeWorkZonesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWorkZonesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneIdList)) {
            body["ZoneIdList"] = request.zoneIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.zoneNameList)) {
            body["ZoneNameList"] = request.zoneNameList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWorkZones",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWorkZonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWorkZones(_ request: DescribeWorkZonesRequest) async throws -> DescribeWorkZonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeWorkZonesWithOptions(request as! DescribeWorkZonesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachEndUsersWithOptions(_ request: DetachEndUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachEndUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endUserIds)) {
            body["EndUserIds"] = request.endUserIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachEndUsers",
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
        return Tea.TeaConverter.fromMap(DetachEndUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachEndUsers(_ request: DetachEndUsersRequest) async throws -> DetachEndUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachEndUsersWithOptions(request as! DetachEndUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachLabelWithOptions(_ request: DetachLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelContent)) {
            body["LabelContent"] = request.labelContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelId)) {
            body["LabelId"] = request.labelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachLabel",
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
        return Tea.TeaConverter.fromMap(DetachLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachLabel(_ request: DetachLabelRequest) async throws -> DetachLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachLabelWithOptions(request as! DetachLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachLabelsWithOptions(_ request: DetachLabelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelIds)) {
            body["LabelIds"] = request.labelIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNoList)) {
            body["SerialNoList"] = request.serialNoList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachLabels",
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
        return Tea.TeaConverter.fromMap(DetachLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachLabels(_ request: DetachLabelsRequest) async throws -> DetachLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachLabelsWithOptions(request as! DetachLabelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateOssUrlWithOptions(_ request: GenerateOssUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateOssUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.objectNameList)) {
            body["ObjectNameList"] = request.objectNameList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateOssUrl",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateOssUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateOssUrl(_ request: GenerateOssUrlRequest) async throws -> GenerateOssUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateOssUrlWithOptions(request as! GenerateOssUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppOtaLatestVersionWithOptions(_ request: GetAppOtaLatestVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAppOtaLatestVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseVersion)) {
            query["BaseVersion"] = request.baseVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType!;
        }
        if (!TeaUtils.Client.isUnset(request.clientUid)) {
            query["ClientUid"] = request.clientUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            query["OsType"] = request.osType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAppOtaLatestVersion",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAppOtaLatestVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppOtaLatestVersion(_ request: GetAppOtaLatestVersionRequest) async throws -> GetAppOtaLatestVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAppOtaLatestVersionWithOptions(request as! GetAppOtaLatestVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceConfigsWithOptions(_ request: GetDeviceConfigsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            body["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.urclVersion)) {
            body["UrclVersion"] = request.urclVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCustomId)) {
            body["UserCustomId"] = request.userCustomId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceConfigs",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceConfigs(_ request: GetDeviceConfigsRequest) async throws -> GetDeviceConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceConfigsWithOptions(request as! GetDeviceConfigsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceOtaAutoStatusWithOptions(_ request: GetDeviceOtaAutoStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceOtaAutoStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            body["ClientType"] = request.clientType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceOtaAutoStatus",
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
        return Tea.TeaConverter.fromMap(GetDeviceOtaAutoStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceOtaAutoStatus(_ request: GetDeviceOtaAutoStatusRequest) async throws -> GetDeviceOtaAutoStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceOtaAutoStatusWithOptions(request as! GetDeviceOtaAutoStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceOtaInfoWithOptions(_ request: GetDeviceOtaInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceOtaInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseVersion)) {
            body["BaseVersion"] = request.baseVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            body["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osVersion)) {
            body["OsVersion"] = request.osVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetVersionType)) {
            body["TargetVersionType"] = request.targetVersionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceOtaInfo",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceOtaInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceOtaInfo(_ request: GetDeviceOtaInfoRequest) async throws -> GetDeviceOtaInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceOtaInfoWithOptions(request as! GetDeviceOtaInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceOtaInfoTestWithOptions(_ request: GetDeviceOtaInfoTestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceOtaInfoTestResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseVersion)) {
            body["BaseVersion"] = request.baseVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceOtaInfoTest",
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
        return Tea.TeaConverter.fromMap(GetDeviceOtaInfoTestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceOtaInfoTest(_ request: GetDeviceOtaInfoTestRequest) async throws -> GetDeviceOtaInfoTestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceOtaInfoTestWithOptions(request as! GetDeviceOtaInfoTestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceOtaTaskVersionInfoWithOptions(_ request: GetDeviceOtaTaskVersionInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceOtaTaskVersionInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceOtaTaskVersionInfo",
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
        return Tea.TeaConverter.fromMap(GetDeviceOtaTaskVersionInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceOtaTaskVersionInfo(_ request: GetDeviceOtaTaskVersionInfoRequest) async throws -> GetDeviceOtaTaskVersionInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceOtaTaskVersionInfoWithOptions(request as! GetDeviceOtaTaskVersionInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceUpgradeStatusWithOptions(_ request: GetDeviceUpgradeStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceUpgradeStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientUid)) {
            query["ClientUid"] = request.clientUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskUid)) {
            query["TaskUid"] = request.taskUid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceUpgradeStatus",
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
        return Tea.TeaConverter.fromMap(GetDeviceUpgradeStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceUpgradeStatus(_ request: GetDeviceUpgradeStatusRequest) async throws -> GetDeviceUpgradeStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceUpgradeStatusWithOptions(request as! GetDeviceUpgradeStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExportDeviceInfoOssUrlWithOptions(_ request: GetExportDeviceInfoOssUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetExportDeviceInfoOssUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneName)) {
            body["ZoneName"] = request.zoneName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetExportDeviceInfoOssUrl",
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
        return Tea.TeaConverter.fromMap(GetExportDeviceInfoOssUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExportDeviceInfoOssUrl(_ request: GetExportDeviceInfoOssUrlRequest) async throws -> GetExportDeviceInfoOssUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getExportDeviceInfoOssUrlWithOptions(request as! GetExportDeviceInfoOssUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFbOssConfigWithOptions(_ request: GetFbOssConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFbOssConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dirPrefix)) {
            body["DirPrefix"] = request.dirPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDedicatedLine)) {
            body["IsDedicatedLine"] = request.isDedicatedLine!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["Region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFbOssConfig",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFbOssConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFbOssConfig(_ request: GetFbOssConfigRequest) async throws -> GetFbOssConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFbOssConfigWithOptions(request as! GetFbOssConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssConfigWithOptions(_ request: GetOssConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOssConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOssConfig",
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
        return Tea.TeaConverter.fromMap(GetOssConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssConfig(_ request: GetOssConfigRequest) async throws -> GetOssConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOssConfigWithOptions(request as! GetOssConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVersionDownloadUrlWithOptions(_ request: GetVersionDownloadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVersionDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.versionName)) {
            query["VersionName"] = request.versionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVersionDownloadUrl",
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
        return Tea.TeaConverter.fromMap(GetVersionDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVersionDownloadUrl(_ request: GetVersionDownloadUrlRequest) async throws -> GetVersionDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVersionDownloadUrlWithOptions(request as! GetVersionDownloadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceOtaTaskByTenantWithOptions(_ request: ListDeviceOtaTaskByTenantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeviceOtaTaskByTenantResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
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
            "action": "ListDeviceOtaTaskByTenant",
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
        return Tea.TeaConverter.fromMap(ListDeviceOtaTaskByTenantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceOtaTaskByTenant(_ request: ListDeviceOtaTaskByTenantRequest) async throws -> ListDeviceOtaTaskByTenantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDeviceOtaTaskByTenantWithOptions(request as! ListDeviceOtaTaskByTenantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceSeatsWithOptions(_ request: ListDeviceSeatsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeviceSeatsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.label)) {
            body["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seatNo)) {
            body["SeatNo"] = request.seatNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNoList)) {
            body["SerialNoList"] = request.serialNoList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeviceSeats",
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
        return Tea.TeaConverter.fromMap(ListDeviceSeatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceSeats(_ request: ListDeviceSeatsRequest) async throws -> ListDeviceSeatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDeviceSeatsWithOptions(request as! ListDeviceSeatsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDevicesWithOptions(_ request: ListDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceIpV4)) {
            query["DeviceIpV4"] = request.deviceIpV4 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceOS)) {
            query["DeviceOS"] = request.deviceOS ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devicePlatform)) {
            query["DevicePlatform"] = request.devicePlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locationInfo)) {
            query["LocationInfo"] = request.locationInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            query["UserType"] = request.userType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            body["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildId)) {
            body["BuildId"] = request.buildId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceGroupId)) {
            body["DeviceGroupId"] = request.deviceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            body["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelContent)) {
            body["LabelContent"] = request.labelContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelId)) {
            body["LabelId"] = request.labelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDevices",
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
        return Tea.TeaConverter.fromMap(ListDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDevices(_ request: ListDevicesRequest) async throws -> ListDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDevicesWithOptions(request as! ListDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFbIssueLabelsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListFbIssueLabelsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFbIssueLabels",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFbIssueLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFbIssueLabels() async throws -> ListFbIssueLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFbIssueLabelsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFbIssueLabelsByLCWithOptions(_ request: ListFbIssueLabelsByLCRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFbIssueLabelsByLCResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            body["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.languageType)) {
            body["LanguageType"] = request.languageType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFbIssueLabelsByLC",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFbIssueLabelsByLCResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFbIssueLabelsByLC(_ request: ListFbIssueLabelsByLCRequest) async throws -> ListFbIssueLabelsByLCResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFbIssueLabelsByLCWithOptions(request as! ListFbIssueLabelsByLCRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLabelsWithOptions(_ request: ListLabelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelContent)) {
            body["LabelContent"] = request.labelContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelId)) {
            body["LabelId"] = request.labelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLabels",
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
        return Tea.TeaConverter.fromMap(ListLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLabels(_ request: ListLabelsRequest) async throws -> ListLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLabelsWithOptions(request as! ListLabelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTenantDeviceOtaInfoWithOptions(_ request: ListTenantDeviceOtaInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTenantDeviceOtaInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTenantDeviceOtaInfo",
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
        return Tea.TeaConverter.fromMap(ListTenantDeviceOtaInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTenantDeviceOtaInfo(_ request: ListTenantDeviceOtaInfoRequest) async throws -> ListTenantDeviceOtaInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTenantDeviceOtaInfoWithOptions(request as! ListTenantDeviceOtaInfoRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func listTerminalsWithOptions(_ request: ListTerminalsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTerminalsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inManage)) {
            body["InManage"] = request.inManage!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passwordFreeLoginUser)) {
            body["PasswordFreeLoginUser"] = request.passwordFreeLoginUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchKeyword)) {
            body["SearchKeyword"] = request.searchKeyword ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serialNumbers)) {
            bodyFlat["SerialNumbers"] = request.serialNumbers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.terminalGroupId)) {
            body["TerminalGroupId"] = request.terminalGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuids)) {
            bodyFlat["Uuids"] = request.uuids ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.withBindUser)) {
            body["WithBindUser"] = request.withBindUser!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTerminals",
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
        return Tea.TeaConverter.fromMap(ListTerminalsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTerminals(_ request: ListTerminalsRequest) async throws -> ListTerminalsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTerminalsWithOptions(request as! ListTerminalsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrustDevicesWithOptions(_ request: ListTrustDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrustDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelContent)) {
            body["LabelContent"] = request.labelContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelId)) {
            body["LabelId"] = request.labelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCustomId)) {
            body["UserCustomId"] = request.userCustomId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrustDevices",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrustDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrustDevices(_ request: ListTrustDevicesRequest) async throws -> ListTrustDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTrustDevicesWithOptions(request as! ListTrustDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserFbAcIssuesWithOptions(_ request: ListUserFbAcIssuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserFbAcIssuesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            body["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersion)) {
            body["ClientVersion"] = request.clientVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorMessage)) {
            body["ErrorMessage"] = request.errorMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.issueId)) {
            body["IssueId"] = request.issueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            body["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reservedA)) {
            body["ReservedA"] = request.reservedA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reservedB)) {
            body["ReservedB"] = request.reservedB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userEmail)) {
            body["UserEmail"] = request.userEmail ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserFbAcIssues",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserFbAcIssuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserFbAcIssues(_ request: ListUserFbAcIssuesRequest) async throws -> ListUserFbAcIssuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserFbAcIssuesWithOptions(request as! ListUserFbAcIssuesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserFbIssuesWithOptions(_ request: ListUserFbIssuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserFbIssuesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            body["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientModel)) {
            body["ClientModel"] = request.clientModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSn)) {
            body["ClientSn"] = request.clientSn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerId)) {
            body["CustomerId"] = request.customerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            body["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorCode)) {
            body["ErrorCode"] = request.errorCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorMsg)) {
            body["ErrorMsg"] = request.errorMsg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fbType)) {
            body["FbType"] = request.fbType!;
        }
        if (!TeaUtils.Client.isUnset(request.issueId)) {
            body["IssueId"] = request.issueId!;
        }
        if (!TeaUtils.Client.isUnset(request.issueLabel)) {
            body["IssueLabel"] = request.issueLabel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userEmail)) {
            body["UserEmail"] = request.userEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wasRead)) {
            body["WasRead"] = request.wasRead!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserFbIssues",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserFbIssuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserFbIssues(_ request: ListUserFbIssuesRequest) async throws -> ListUserFbIssuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserFbIssuesWithOptions(request as! ListUserFbIssuesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDevicesSecureNetworkTypeWithOptions(_ request: ModifyDevicesSecureNetworkTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDevicesSecureNetworkTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allDevices)) {
            body["AllDevices"] = request.allDevices!;
        }
        if (!TeaUtils.Client.isUnset(request.secureNetworkType)) {
            body["SecureNetworkType"] = request.secureNetworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNos)) {
            body["SerialNos"] = request.serialNos ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDevicesSecureNetworkType",
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
        return Tea.TeaConverter.fromMap(ModifyDevicesSecureNetworkTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDevicesSecureNetworkType(_ request: ModifyDevicesSecureNetworkTypeRequest) async throws -> ModifyDevicesSecureNetworkTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDevicesSecureNetworkTypeWithOptions(request as! ModifyDevicesSecureNetworkTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecureNetworkTypeWithOptions(_ request: ModifySecureNetworkTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySecureNetworkTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.secureNetworkType)) {
            body["SecureNetworkType"] = request.secureNetworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySecureNetworkType",
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
        return Tea.TeaConverter.fromMap(ModifySecureNetworkTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecureNetworkType(_ request: ModifySecureNetworkTypeRequest) async throws -> ModifySecureNetworkTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySecureNetworkTypeWithOptions(request as! ModifySecureNetworkTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerDeviceWithOptions(_ request: RegisterDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bluetooth)) {
            body["Bluetooth"] = request.bluetooth ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildId)) {
            body["BuildId"] = request.buildId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chipId)) {
            body["ChipId"] = request.chipId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            body["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            body["ClientType"] = request.clientType!;
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["Cpu"] = request.cpu ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customId)) {
            body["CustomId"] = request.customId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.etherMac)) {
            body["EtherMac"] = request.etherMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            body["Memory"] = request.memory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storage)) {
            body["Storage"] = request.storage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wlan)) {
            body["Wlan"] = request.wlan ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterDevice",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerDevice(_ request: RegisterDeviceRequest) async throws -> RegisterDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerDeviceWithOptions(request as! RegisterDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportAppOtaInfoWithOptions(_ request: ReportAppOtaInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReportAppOtaInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseVersion)) {
            query["BaseVersion"] = request.baseVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType!;
        }
        if (!TeaUtils.Client.isUnset(request.clientUid)) {
            query["ClientUid"] = request.clientUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            query["OsType"] = request.osType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.targetVersion)) {
            query["TargetVersion"] = request.targetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskUid)) {
            query["TaskUid"] = request.taskUid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReportAppOtaInfo",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReportAppOtaInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportAppOtaInfo(_ request: ReportAppOtaInfoRequest) async throws -> ReportAppOtaInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reportAppOtaInfoWithOptions(request as! ReportAppOtaInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportDeviceOtaInfoWithOptions(_ request: ReportDeviceOtaInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReportDeviceOtaInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseVersion)) {
            body["BaseVersion"] = request.baseVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            body["Note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.targetVersion)) {
            body["TargetVersion"] = request.targetVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReportDeviceOtaInfo",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReportDeviceOtaInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportDeviceOtaInfo(_ request: ReportDeviceOtaInfoRequest) async throws -> ReportDeviceOtaInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reportDeviceOtaInfoWithOptions(request as! ReportDeviceOtaInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportUserFbAcIssueWithOptions(_ tmpReq: ReportUserFbAcIssueRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReportUserFbAcIssueResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ReportUserFbAcIssueShrinkRequest = ReportUserFbAcIssueShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.fileList)) {
            request.fileListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.fileList, "FileList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            body["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersion)) {
            body["ClientVersion"] = request.clientVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorMsg)) {
            body["ErrorMsg"] = request.errorMsg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileListShrink)) {
            body["FileList"] = request.fileListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reservedA)) {
            body["ReservedA"] = request.reservedA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reservedB)) {
            body["ReservedB"] = request.reservedB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userEmail)) {
            body["UserEmail"] = request.userEmail ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReportUserFbAcIssue",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReportUserFbAcIssueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportUserFbAcIssue(_ request: ReportUserFbAcIssueRequest) async throws -> ReportUserFbAcIssueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reportUserFbAcIssueWithOptions(request as! ReportUserFbAcIssueRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportUserFbIssueWithOptions(_ tmpReq: ReportUserFbIssueRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReportUserFbIssueResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ReportUserFbIssueShrinkRequest = ReportUserFbIssueShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.fileList)) {
            request.fileListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.fileList, "FileList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            body["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientModel)) {
            body["ClientModel"] = request.clientModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientOsName)) {
            body["ClientOsName"] = request.clientOsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSn)) {
            body["ClientSn"] = request.clientSn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersion)) {
            body["ClientVersion"] = request.clientVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerId)) {
            body["CustomerId"] = request.customerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            body["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopType)) {
            body["DesktopType"] = request.desktopType!;
        }
        if (!TeaUtils.Client.isUnset(request.errorCode)) {
            body["ErrorCode"] = request.errorCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorMsg)) {
            body["ErrorMsg"] = request.errorMsg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fbType)) {
            body["FbType"] = request.fbType!;
        }
        if (!TeaUtils.Client.isUnset(request.fileListShrink)) {
            body["FileList"] = request.fileListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.issueLabel)) {
            body["IssueLabel"] = request.issueLabel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.occurTime)) {
            body["OccurTime"] = request.occurTime!;
        }
        if (!TeaUtils.Client.isUnset(request.reservedA)) {
            body["ReservedA"] = request.reservedA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reservedB)) {
            body["ReservedB"] = request.reservedB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telNo)) {
            body["TelNo"] = request.telNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userEmail)) {
            body["UserEmail"] = request.userEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wyId)) {
            body["WyId"] = request.wyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReportUserFbIssue",
            "version": "2021-04-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReportUserFbIssueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reportUserFbIssue(_ request: ReportUserFbIssueRequest) async throws -> ReportUserFbIssueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reportUserFbIssueWithOptions(request as! ReportUserFbIssueRequest, runtime as! TeaUtils.RuntimeOptions)
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
    public func setDeviceOtaAutoStatusWithOptions(_ request: SetDeviceOtaAutoStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDeviceOtaAutoStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoUpdate)) {
            body["AutoUpdate"] = request.autoUpdate!;
        }
        if (!TeaUtils.Client.isUnset(request.autoUpdateTimeSchedule)) {
            body["AutoUpdateTimeSchedule"] = request.autoUpdateTimeSchedule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            body["ClientType"] = request.clientType!;
        }
        if (!TeaUtils.Client.isUnset(request.forceUpgrade)) {
            body["ForceUpgrade"] = request.forceUpgrade!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDeviceOtaAutoStatus",
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
        return Tea.TeaConverter.fromMap(SetDeviceOtaAutoStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDeviceOtaAutoStatus(_ request: SetDeviceOtaAutoStatusRequest) async throws -> SetDeviceOtaAutoStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDeviceOtaAutoStatusWithOptions(request as! SetDeviceOtaAutoStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDeviceOtaTaskStatusWithOptions(_ request: SetDeviceOtaTaskStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDeviceOtaTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationStatus)) {
            body["OperationStatus"] = request.operationStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDeviceOtaTaskStatus",
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
        return Tea.TeaConverter.fromMap(SetDeviceOtaTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDeviceOtaTaskStatus(_ request: SetDeviceOtaTaskStatusRequest) async throws -> SetDeviceOtaTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDeviceOtaTaskStatusWithOptions(request as! SetDeviceOtaTaskStatusRequest, runtime as! TeaUtils.RuntimeOptions)
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

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAliasWithOptions(_ request: UpdateAliasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAliasResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alias)) {
            body["Alias"] = request.alias ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAlias",
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
        return Tea.TeaConverter.fromMap(UpdateAliasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlias(_ request: UpdateAliasRequest) async throws -> UpdateAliasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAliasWithOptions(request as! UpdateAliasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeviceBindedEndUserWithOptions(_ request: UpdateDeviceBindedEndUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeviceBindedEndUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            body["SerialNo"] = request.serialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceAdEndUsers)) {
            body["SourceAdEndUsers"] = request.sourceAdEndUsers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndUserIds)) {
            body["SourceEndUserIds"] = request.sourceEndUserIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetAdEndUsers)) {
            body["TargetAdEndUsers"] = request.targetAdEndUsers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetEndUserIds)) {
            body["TargetEndUserIds"] = request.targetEndUserIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            body["UserType"] = request.userType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDeviceBindedEndUser",
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
        return Tea.TeaConverter.fromMap(UpdateDeviceBindedEndUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeviceBindedEndUser(_ request: UpdateDeviceBindedEndUserRequest) async throws -> UpdateDeviceBindedEndUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDeviceBindedEndUserWithOptions(request as! UpdateDeviceBindedEndUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLabelWithOptions(_ request: UpdateLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelContent)) {
            body["LabelContent"] = request.labelContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelId)) {
            body["LabelId"] = request.labelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLabel",
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
        return Tea.TeaConverter.fromMap(UpdateLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLabel(_ request: UpdateLabelRequest) async throws -> UpdateLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateLabelWithOptions(request as! UpdateLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTerminalPolicyWithOptions(_ request: UpdateTerminalPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTerminalPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backgroundModeTitle)) {
            body["BackgroundModeTitle"] = request.backgroundModeTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayLayout)) {
            body["DisplayLayout"] = request.displayLayout ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayResolution)) {
            body["DisplayResolution"] = request.displayResolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayScaleRatio)) {
            body["DisplayScaleRatio"] = request.displayScaleRatio ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAutoLockScreen)) {
            body["EnableAutoLockScreen"] = request.enableAutoLockScreen!;
        }
        if (!TeaUtils.Client.isUnset(request.enableAutoLogin)) {
            body["EnableAutoLogin"] = request.enableAutoLogin!;
        }
        if (!TeaUtils.Client.isUnset(request.enableBackgroundMode)) {
            body["EnableBackgroundMode"] = request.enableBackgroundMode!;
        }
        if (!TeaUtils.Client.isUnset(request.enableBluetooth)) {
            body["EnableBluetooth"] = request.enableBluetooth!;
        }
        if (!TeaUtils.Client.isUnset(request.enableModifyPassword)) {
            body["EnableModifyPassword"] = request.enableModifyPassword!;
        }
        if (!TeaUtils.Client.isUnset(request.enableScheduledReboot)) {
            body["EnableScheduledReboot"] = request.enableScheduledReboot!;
        }
        if (!TeaUtils.Client.isUnset(request.enableScheduledShutdown)) {
            body["EnableScheduledShutdown"] = request.enableScheduledShutdown!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSwitchPersonal)) {
            body["EnableSwitchPersonal"] = request.enableSwitchPersonal!;
        }
        if (!TeaUtils.Client.isUnset(request.enableWlan)) {
            body["EnableWlan"] = request.enableWlan!;
        }
        if (!TeaUtils.Client.isUnset(request.idleTimeout)) {
            body["IdleTimeout"] = request.idleTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.idleTimeoutAction)) {
            body["IdleTimeoutAction"] = request.idleTimeoutAction!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.powerButtonDefine)) {
            body["PowerButtonDefine"] = request.powerButtonDefine!;
        }
        if (!TeaUtils.Client.isUnset(request.powerButtonDefineForAs)) {
            body["PowerButtonDefineForAs"] = request.powerButtonDefineForAs!;
        }
        if (!TeaUtils.Client.isUnset(request.powerButtonDefineForNs)) {
            body["PowerButtonDefineForNs"] = request.powerButtonDefineForNs!;
        }
        if (!TeaUtils.Client.isUnset(request.powerOnBehavior)) {
            body["PowerOnBehavior"] = request.powerOnBehavior!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduledReboot)) {
            body["ScheduledReboot"] = request.scheduledReboot ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduledShutdown)) {
            body["ScheduledShutdown"] = request.scheduledShutdown ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.settingLock)) {
            body["SettingLock"] = request.settingLock!;
        }
        if (!TeaUtils.Client.isUnset(request.terminalPolicyId)) {
            body["TerminalPolicyId"] = request.terminalPolicyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTerminalPolicy",
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
        return Tea.TeaConverter.fromMap(UpdateTerminalPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTerminalPolicy(_ request: UpdateTerminalPolicyRequest) async throws -> UpdateTerminalPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTerminalPolicyWithOptions(request as! UpdateTerminalPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
