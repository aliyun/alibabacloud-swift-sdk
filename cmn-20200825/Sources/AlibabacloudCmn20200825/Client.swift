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
        self._endpoint = try getEndpoint("cmn", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func closeEventWithOptions(_ request: CloseEventRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloseEventResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventName)) {
            body["EventName"] = request.eventName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventObjectId)) {
            body["EventObjectId"] = request.eventObjectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            body["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloseEvent",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloseEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeEvent(_ request: CloseEventRequest) async throws -> CloseEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await closeEventWithOptions(request as! CloseEventRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDedicatedLineWithOptions(_ request: CreateDedicatedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDedicatedLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            body["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contact)) {
            body["Contact"] = request.contact ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedLineGateway)) {
            body["DedicatedLineGateway"] = request.dedicatedLineGateway ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedLineIp)) {
            body["DedicatedLineIp"] = request.dedicatedLineIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedLineRole)) {
            body["DedicatedLineRole"] = request.dedicatedLineRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devicePort)) {
            body["DevicePort"] = request.devicePort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expirationDate)) {
            body["ExpirationDate"] = request.expirationDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extAttributes)) {
            body["ExtAttributes"] = request.extAttributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isp)) {
            body["Isp"] = request.isp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ispFormId)) {
            body["IspFormId"] = request.ispFormId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ispId)) {
            body["IspId"] = request.ispId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onlineDate)) {
            body["OnlineDate"] = request.onlineDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceId)) {
            body["PhysicalSpaceId"] = request.physicalSpaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDedicatedLine",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDedicatedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDedicatedLine(_ request: CreateDedicatedLineRequest) async throws -> CreateDedicatedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDedicatedLineWithOptions(request as! CreateDedicatedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeviceWithOptions(_ request: CreateDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceFormId)) {
            body["DeviceFormId"] = request.deviceFormId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePassword)) {
            body["EnablePassword"] = request.enablePassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extAttributes)) {
            body["ExtAttributes"] = request.extAttributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            body["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            body["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginPassword)) {
            body["LoginPassword"] = request.loginPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginType)) {
            body["LoginType"] = request.loginType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginUsername)) {
            body["LoginUsername"] = request.loginUsername ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            body["Mac"] = request.mac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceId)) {
            body["PhysicalSpaceId"] = request.physicalSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityDomain)) {
            body["SecurityDomain"] = request.securityDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceStatus)) {
            body["ServiceStatus"] = request.serviceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sn)) {
            body["Sn"] = request.sn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAccountType)) {
            body["SnmpAccountType"] = request.snmpAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAccountVersion)) {
            body["SnmpAccountVersion"] = request.snmpAccountVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAuthPassphrase)) {
            body["SnmpAuthPassphrase"] = request.snmpAuthPassphrase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAuthProtocol)) {
            body["SnmpAuthProtocol"] = request.snmpAuthProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpCommunity)) {
            body["SnmpCommunity"] = request.snmpCommunity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpPrivacyPassphrase)) {
            body["SnmpPrivacyPassphrase"] = request.snmpPrivacyPassphrase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpPrivacyProtocol)) {
            body["SnmpPrivacyProtocol"] = request.snmpPrivacyProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpSecurityLevel)) {
            body["SnmpSecurityLevel"] = request.snmpSecurityLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpUsername)) {
            body["SnmpUsername"] = request.snmpUsername ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDevice",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDevice(_ request: CreateDeviceRequest) async throws -> CreateDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDeviceWithOptions(request as! CreateDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeviceFormWithOptions(_ request: CreateDeviceFormRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeviceFormResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountConfig)) {
            body["AccountConfig"] = request.accountConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configCompare)) {
            body["ConfigCompare"] = request.configCompare!;
        }
        if (!TeaUtils.Client.isUnset(request.detailDisplay)) {
            body["DetailDisplay"] = request.detailDisplay!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceFormName)) {
            body["DeviceFormName"] = request.deviceFormName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDeviceFormId)) {
            body["RelatedDeviceFormId"] = request.relatedDeviceFormId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceUse)) {
            body["ResourceUse"] = request.resourceUse ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.script)) {
            body["Script"] = request.script ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueKey)) {
            body["UniqueKey"] = request.uniqueKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDeviceForm",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDeviceFormResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeviceForm(_ request: CreateDeviceFormRequest) async throws -> CreateDeviceFormResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDeviceFormWithOptions(request as! CreateDeviceFormRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDevicePropertyWithOptions(_ request: CreateDevicePropertyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDevicePropertyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceFormId)) {
            body["DeviceFormId"] = request.deviceFormId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyContent)) {
            body["PropertyContent"] = request.propertyContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyFormat)) {
            body["PropertyFormat"] = request.propertyFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyKey)) {
            body["PropertyKey"] = request.propertyKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyName)) {
            body["PropertyName"] = request.propertyName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDeviceProperty",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDevicePropertyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeviceProperty(_ request: CreateDevicePropertyRequest) async throws -> CreateDevicePropertyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDevicePropertyWithOptions(request as! CreateDevicePropertyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDevicesWithOptions(_ tmpReq: CreateDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDevicesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDevicesShrinkRequest = CreateDevicesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.deviceParamModelList)) {
            request.deviceParamModelListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deviceParamModelList, "DeviceParamModelList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceFormId)) {
            body["DeviceFormId"] = request.deviceFormId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceParamModelListShrink)) {
            body["DeviceParamModelList"] = request.deviceParamModelListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDevices",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDevices(_ request: CreateDevicesRequest) async throws -> CreateDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDevicesWithOptions(request as! CreateDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventDefinitionWithOptions(_ request: CreateEventDefinitionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEventDefinitionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventName)) {
            body["EventName"] = request.eventName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            body["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEventDefinition",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEventDefinitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventDefinition(_ request: CreateEventDefinitionRequest) async throws -> CreateEventDefinitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEventDefinitionWithOptions(request as! CreateEventDefinitionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMonitorItemWithOptions(_ tmpReq: CreateMonitorItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMonitorItemResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateMonitorItemShrinkRequest = CreateMonitorItemShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.alarmRuleList)) {
            request.alarmRuleListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.alarmRuleList, "AlarmRuleList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmRuleListShrink)) {
            body["AlarmRuleList"] = request.alarmRuleListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.analysisCode)) {
            body["AnalysisCode"] = request.analysisCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.collectionType)) {
            body["CollectionType"] = request.collectionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["Config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataItem)) {
            body["DataItem"] = request.dataItem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceForm)) {
            body["DeviceForm"] = request.deviceForm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effective)) {
            body["Effective"] = request.effective!;
        }
        if (!TeaUtils.Client.isUnset(request.execInterval)) {
            body["ExecInterval"] = request.execInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.monitorItemDescription)) {
            body["MonitorItemDescription"] = request.monitorItemDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorItemName)) {
            body["MonitorItemName"] = request.monitorItemName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityDomain)) {
            body["SecurityDomain"] = request.securityDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMonitorItem",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMonitorItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMonitorItem(_ request: CreateMonitorItemRequest) async throws -> CreateMonitorItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMonitorItemWithOptions(request as! CreateMonitorItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOsVersionWithOptions(_ request: CreateOsVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOsVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bootPatch)) {
            body["BootPatch"] = request.bootPatch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTime)) {
            body["CreateTime"] = request.createTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featurePatch)) {
            body["FeaturePatch"] = request.featurePatch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osVersion)) {
            body["OsVersion"] = request.osVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemPatch)) {
            body["SystemPatch"] = request.systemPatch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOsVersion",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOsVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOsVersion(_ request: CreateOsVersionRequest) async throws -> CreateOsVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOsVersionWithOptions(request as! CreateOsVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPhysicalSpaceWithOptions(_ tmpReq: CreatePhysicalSpaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePhysicalSpaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePhysicalSpaceShrinkRequest = CreatePhysicalSpaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.securityDomainList)) {
            request.securityDomainListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.securityDomainList, "SecurityDomainList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            body["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.adminSpace)) {
            body["AdminSpace"] = request.adminSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            body["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            body["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.owner)) {
            body["Owner"] = request.owner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentUid)) {
            body["ParentUid"] = request.parentUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceName)) {
            body["PhysicalSpaceName"] = request.physicalSpaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            body["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityDomainListShrink)) {
            body["SecurityDomainList"] = request.securityDomainListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceAbbreviation)) {
            body["SpaceAbbreviation"] = request.spaceAbbreviation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            body["SpaceType"] = request.spaceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePhysicalSpace",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePhysicalSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPhysicalSpace(_ request: CreatePhysicalSpaceRequest) async throws -> CreatePhysicalSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPhysicalSpaceWithOptions(request as! CreatePhysicalSpaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRealtimeTaskWithOptions(_ request: CreateRealtimeTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRealtimeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkDuplicatePolicy)) {
            body["CheckDuplicatePolicy"] = request.checkDuplicatePolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemName)) {
            body["ItemName"] = request.itemName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.script)) {
            body["Script"] = request.script ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRealtimeTask",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRealtimeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRealtimeTask(_ request: CreateRealtimeTaskRequest) async throws -> CreateRealtimeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRealtimeTaskWithOptions(request as! CreateRealtimeTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSpaceModelWithOptions(_ tmpReq: CreateSpaceModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSpaceModelResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSpaceModelShrinkRequest = CreateSpaceModelShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sort)) {
            request.sortShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sort, "Sort", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortShrink)) {
            body["Sort"] = request.sortShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            body["SpaceType"] = request.spaceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSpaceModel",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSpaceModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSpaceModel(_ request: CreateSpaceModelRequest) async throws -> CreateSpaceModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSpaceModelWithOptions(request as! CreateSpaceModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskWithOptions(_ request: CreateTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTask",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTask(_ request: CreateTaskRequest) async throws -> CreateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTaskWithOptions(request as! CreateTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTimePeriodWithOptions(_ request: CreateTimePeriodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTimePeriodResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expression)) {
            body["Expression"] = request.expression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timePeriodDescription)) {
            body["TimePeriodDescription"] = request.timePeriodDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timePeriodName)) {
            body["TimePeriodName"] = request.timePeriodName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTimePeriod",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTimePeriodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTimePeriod(_ request: CreateTimePeriodRequest) async throws -> CreateTimePeriodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTimePeriodWithOptions(request as! CreateTimePeriodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDedicatedLineWithOptions(_ request: DeleteDedicatedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDedicatedLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dedicatedLineId)) {
            body["DedicatedLineId"] = request.dedicatedLineId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDedicatedLine",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDedicatedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDedicatedLine(_ request: DeleteDedicatedLineRequest) async throws -> DeleteDedicatedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDedicatedLineWithOptions(request as! DeleteDedicatedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeliveryArchVersionWithOptions(_ request: DeleteDeliveryArchVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDeliveryArchVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deliveryArchVersionId)) {
            body["DeliveryArchVersionId"] = request.deliveryArchVersionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDeliveryArchVersion",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDeliveryArchVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeliveryArchVersion(_ request: DeleteDeliveryArchVersionRequest) async throws -> DeleteDeliveryArchVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDeliveryArchVersionWithOptions(request as! DeleteDeliveryArchVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeviceWithOptions(_ request: DeleteDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDevice",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDevice(_ request: DeleteDeviceRequest) async throws -> DeleteDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDeviceWithOptions(request as! DeleteDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeviceFormWithOptions(_ request: DeleteDeviceFormRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDeviceFormResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceFormId)) {
            body["DeviceFormId"] = request.deviceFormId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDeviceForm",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDeviceFormResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeviceForm(_ request: DeleteDeviceFormRequest) async throws -> DeleteDeviceFormResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDeviceFormWithOptions(request as! DeleteDeviceFormRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDevicePropertyWithOptions(_ request: DeleteDevicePropertyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDevicePropertyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.devicePropertyId)) {
            body["DevicePropertyId"] = request.devicePropertyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDeviceProperty",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDevicePropertyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeviceProperty(_ request: DeleteDevicePropertyRequest) async throws -> DeleteDevicePropertyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDevicePropertyWithOptions(request as! DeleteDevicePropertyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDevicesWithOptions(_ tmpReq: DeleteDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDevicesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteDevicesShrinkRequest = DeleteDevicesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.deviceIds)) {
            request.deviceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deviceIds, "DeviceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceIdsShrink)) {
            body["DeviceIds"] = request.deviceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDevices",
            "version": "2020-08-25",
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
    public func deleteEventDefinitionWithOptions(_ request: DeleteEventDefinitionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEventDefinitionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            body["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEventDefinition",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEventDefinitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventDefinition(_ request: DeleteEventDefinitionRequest) async throws -> DeleteEventDefinitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEventDefinitionWithOptions(request as! DeleteEventDefinitionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOsVersionWithOptions(_ request: DeleteOsVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteOsVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osVersionId)) {
            body["OsVersionId"] = request.osVersionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteOsVersion",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteOsVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOsVersion(_ request: DeleteOsVersionRequest) async throws -> DeleteOsVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteOsVersionWithOptions(request as! DeleteOsVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePhysicalSpaceWithOptions(_ request: DeletePhysicalSpaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePhysicalSpaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.physicalSpaceId)) {
            body["PhysicalSpaceId"] = request.physicalSpaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePhysicalSpace",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePhysicalSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePhysicalSpace(_ request: DeletePhysicalSpaceRequest) async throws -> DeletePhysicalSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePhysicalSpaceWithOptions(request as! DeletePhysicalSpaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSpaceModelWithOptions(_ request: DeleteSpaceModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSpaceModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceModelId)) {
            query["SpaceModelId"] = request.spaceModelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSpaceModel",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSpaceModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSpaceModel(_ request: DeleteSpaceModelRequest) async throws -> DeleteSpaceModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSpaceModelWithOptions(request as! DeleteSpaceModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableNotificationWithOptions(_ tmpReq: DisableNotificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableNotificationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DisableNotificationShrinkRequest = DisableNotificationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.list)) {
            request.listShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.list, "List", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expiryTime)) {
            body["ExpiryTime"] = request.expiryTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listShrink)) {
            body["List"] = request.listShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["Reason"] = request.reason ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableNotification",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableNotificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableNotification(_ request: DisableNotificationRequest) async throws -> DisableNotificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableNotificationWithOptions(request as! DisableNotificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableNotificationWithOptions(_ tmpReq: EnableNotificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableNotificationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EnableNotificationShrinkRequest = EnableNotificationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.list)) {
            request.listShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.list, "List", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listShrink)) {
            body["List"] = request.listShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableNotification",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableNotificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableNotification(_ request: EnableNotificationRequest) async throws -> EnableNotificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableNotificationWithOptions(request as! EnableNotificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlarmStatusWithOptions(_ request: GetAlarmStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAlarmStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAlarmStatus",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAlarmStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlarmStatus(_ request: GetAlarmStatusRequest) async throws -> GetAlarmStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAlarmStatusWithOptions(request as! GetAlarmStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDedicatedLineWithOptions(_ request: GetDedicatedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDedicatedLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDedicatedLine",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDedicatedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDedicatedLine(_ request: GetDedicatedLineRequest) async throws -> GetDedicatedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDedicatedLineWithOptions(request as! GetDedicatedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceWithOptions(_ request: GetDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDevice",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDevice(_ request: GetDeviceRequest) async throws -> GetDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceWithOptions(request as! GetDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceConfigWithOptions(_ request: GetDeviceConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceConfig",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceConfig(_ request: GetDeviceConfigRequest) async throws -> GetDeviceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceConfigWithOptions(request as! GetDeviceConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceConfigDateWithOptions(_ request: GetDeviceConfigDateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceConfigDateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceConfigDate",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceConfigDateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceConfigDate(_ request: GetDeviceConfigDateRequest) async throws -> GetDeviceConfigDateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceConfigDateWithOptions(request as! GetDeviceConfigDateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceConfigDiffWithOptions(_ request: GetDeviceConfigDiffRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceConfigDiffResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceConfigDiff",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceConfigDiffResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceConfigDiff(_ request: GetDeviceConfigDiffRequest) async throws -> GetDeviceConfigDiffResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceConfigDiffWithOptions(request as! GetDeviceConfigDiffRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceFormWithOptions(_ request: GetDeviceFormRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceFormResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceForm",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceFormResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceForm(_ request: GetDeviceFormRequest) async throws -> GetDeviceFormResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceFormWithOptions(request as! GetDeviceFormRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceOpLogWithOptions(_ request: GetDeviceOpLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceOpLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceOpLog",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceOpLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceOpLog(_ request: GetDeviceOpLogRequest) async throws -> GetDeviceOpLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceOpLogWithOptions(request as! GetDeviceOpLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDevicePropertyWithOptions(_ request: GetDevicePropertyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDevicePropertyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceProperty",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDevicePropertyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceProperty(_ request: GetDevicePropertyRequest) async throws -> GetDevicePropertyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDevicePropertyWithOptions(request as! GetDevicePropertyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInspectionTaskWithOptions(_ request: GetInspectionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInspectionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInspectionTask",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInspectionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInspectionTask(_ request: GetInspectionTaskRequest) async throws -> GetInspectionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInspectionTaskWithOptions(request as! GetInspectionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMonitorItemWithOptions(_ request: GetMonitorItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMonitorItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMonitorItem",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMonitorItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMonitorItem(_ request: GetMonitorItemRequest) async throws -> GetMonitorItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMonitorItemWithOptions(request as! GetMonitorItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOsVersionWithOptions(_ request: GetOsVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOsVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOsVersion",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOsVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOsVersion(_ request: GetOsVersionRequest) async throws -> GetOsVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOsVersionWithOptions(request as! GetOsVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssPolicyWithOptions(_ request: GetOssPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOssPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOssPolicy",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOssPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssPolicy(_ request: GetOssPolicyRequest) async throws -> GetOssPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOssPolicyWithOptions(request as! GetOssPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalSpaceWithOptions(_ request: GetPhysicalSpaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhysicalSpaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhysicalSpace",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhysicalSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalSpace(_ request: GetPhysicalSpaceRequest) async throws -> GetPhysicalSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhysicalSpaceWithOptions(request as! GetPhysicalSpaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRealtimeTaskWithOptions(_ request: GetRealtimeTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRealtimeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRealtimeTask",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRealtimeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRealtimeTask(_ request: GetRealtimeTaskRequest) async throws -> GetRealtimeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRealtimeTaskWithOptions(request as! GetRealtimeTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpaceModelWithOptions(_ request: GetSpaceModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSpaceModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSpaceModel",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSpaceModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpaceModel(_ request: GetSpaceModelRequest) async throws -> GetSpaceModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSpaceModelWithOptions(request as! GetSpaceModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpaceModelInstanceWithOptions(_ request: GetSpaceModelInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSpaceModelInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSpaceModelInstance",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSpaceModelInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpaceModelInstance(_ request: GetSpaceModelInstanceRequest) async throws -> GetSpaceModelInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSpaceModelInstanceWithOptions(request as! GetSpaceModelInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpaceModelSortWithOptions(_ request: GetSpaceModelSortRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSpaceModelSortResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSpaceModelSort",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSpaceModelSortResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpaceModelSort(_ request: GetSpaceModelSortRequest) async throws -> GetSpaceModelSortResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSpaceModelSortWithOptions(request as! GetSpaceModelSortRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskWithOptions(_ request: GetTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTask",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTask(_ request: GetTaskRequest) async throws -> GetTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTaskWithOptions(request as! GetTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlarmStatusWithOptions(_ request: ListAlarmStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlarmStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlarmStatus",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlarmStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlarmStatus(_ request: ListAlarmStatusRequest) async throws -> ListAlarmStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAlarmStatusWithOptions(request as! ListAlarmStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlarmStatusHistoriesWithOptions(_ request: ListAlarmStatusHistoriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlarmStatusHistoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlarmStatusHistories",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlarmStatusHistoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlarmStatusHistories(_ request: ListAlarmStatusHistoriesRequest) async throws -> ListAlarmStatusHistoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAlarmStatusHistoriesWithOptions(request as! ListAlarmStatusHistoriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlarmStatusStatisticsWithOptions(_ request: ListAlarmStatusStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlarmStatusStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlarmStatusStatistics",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlarmStatusStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlarmStatusStatistics(_ request: ListAlarmStatusStatisticsRequest) async throws -> ListAlarmStatusStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAlarmStatusStatisticsWithOptions(request as! ListAlarmStatusStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDedicatedLinesWithOptions(_ request: ListDedicatedLinesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDedicatedLinesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDedicatedLines",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDedicatedLinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDedicatedLines(_ request: ListDedicatedLinesRequest) async throws -> ListDedicatedLinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDedicatedLinesWithOptions(request as! ListDedicatedLinesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceFormsWithOptions(_ request: ListDeviceFormsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeviceFormsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeviceForms",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeviceFormsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceForms(_ request: ListDeviceFormsRequest) async throws -> ListDeviceFormsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDeviceFormsWithOptions(request as! ListDeviceFormsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDevicePropertiesWithOptions(_ request: ListDevicePropertiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDevicePropertiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeviceProperties",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDevicePropertiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceProperties(_ request: ListDevicePropertiesRequest) async throws -> ListDevicePropertiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDevicePropertiesWithOptions(request as! ListDevicePropertiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceValuesWithOptions(_ request: ListDeviceValuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeviceValuesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeviceValues",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeviceValuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceValues(_ request: ListDeviceValuesRequest) async throws -> ListDeviceValuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDeviceValuesWithOptions(request as! ListDeviceValuesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDevicesWithOptions(_ tmpReq: ListDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDevicesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDevicesShrinkRequest = ListDevicesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.deviceIds)) {
            request.deviceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deviceIds, "DeviceIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.hostName)) {
            request.hostNameShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hostName, "HostName", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ip)) {
            request.ipShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ip, "Ip", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.mac)) {
            request.macShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.mac, "Mac", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.model)) {
            request.modelShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.model, "Model", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.physicalSpaceIds)) {
            request.physicalSpaceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.physicalSpaceIds, "PhysicalSpaceIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.securityDomain)) {
            request.securityDomainShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.securityDomain, "SecurityDomain", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.serviceStatus)) {
            request.serviceStatusShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.serviceStatus, "ServiceStatus", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sn)) {
            request.snShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sn, "Sn", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.vendor)) {
            request.vendorShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.vendor, "Vendor", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calculateAmount)) {
            query["CalculateAmount"] = request.calculateAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceFormId)) {
            query["DeviceFormId"] = request.deviceFormId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceFormName)) {
            query["DeviceFormName"] = request.deviceFormName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceIdsShrink)) {
            query["DeviceIds"] = request.deviceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extAttributes)) {
            query["ExtAttributes"] = request.extAttributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostNameShrink)) {
            query["HostName"] = request.hostNameShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipShrink)) {
            query["Ip"] = request.ipShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.macShrink)) {
            query["Mac"] = request.macShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.modelShrink)) {
            query["Model"] = request.modelShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceId)) {
            query["PhysicalSpaceId"] = request.physicalSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceIdsShrink)) {
            query["PhysicalSpaceIds"] = request.physicalSpaceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityDomainShrink)) {
            query["SecurityDomain"] = request.securityDomainShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceStatusShrink)) {
            query["ServiceStatus"] = request.serviceStatusShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snShrink)) {
            query["Sn"] = request.snShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendorShrink)) {
            query["Vendor"] = request.vendorShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDevices",
            "version": "2020-08-25",
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
    public func listEventDefinitionsWithOptions(_ request: ListEventDefinitionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventDefinitionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventDefinitions",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventDefinitionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventDefinitions(_ request: ListEventDefinitionsRequest) async throws -> ListEventDefinitionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventDefinitionsWithOptions(request as! ListEventDefinitionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventsWithOptions(_ request: ListEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEvents",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEvents(_ request: ListEventsRequest) async throws -> ListEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventsWithOptions(request as! ListEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInspectionDevicesWithOptions(_ tmpReq: ListInspectionDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInspectionDevicesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListInspectionDevicesShrinkRequest = ListInspectionDevicesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.model)) {
            request.modelShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.model, "Model", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInspectionDevices",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInspectionDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInspectionDevices(_ request: ListInspectionDevicesRequest) async throws -> ListInspectionDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInspectionDevicesWithOptions(request as! ListInspectionDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInspectionTasksWithOptions(_ tmpReq: ListInspectionTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInspectionTasksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListInspectionTasksShrinkRequest = ListInspectionTasksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.alarmStatus)) {
            request.alarmStatusShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.alarmStatus, "AlarmStatus", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInspectionTasks",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInspectionTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInspectionTasks(_ request: ListInspectionTasksRequest) async throws -> ListInspectionTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInspectionTasksWithOptions(request as! ListInspectionTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstances",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstances() async throws -> ListInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstancesWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIpBlocksWithOptions(_ tmpReq: ListIpBlocksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIpBlocksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListIpBlocksShrinkRequest = ListIpBlocksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extAttributes)) {
            request.extAttributesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extAttributes, "ExtAttributes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ipList)) {
            request.ipListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ipList, "IpList", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIpBlocks",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIpBlocksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIpBlocks(_ request: ListIpBlocksRequest) async throws -> ListIpBlocksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIpBlocksWithOptions(request as! ListIpBlocksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogsWithOptions(_ request: ListLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogs",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogs(_ request: ListLogsRequest) async throws -> ListLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLogsWithOptions(request as! ListLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMonitorDataWithOptions(_ request: ListMonitorDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMonitorDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMonitorData",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMonitorDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMonitorData(_ request: ListMonitorDataRequest) async throws -> ListMonitorDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMonitorDataWithOptions(request as! ListMonitorDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNotificationHistoriesWithOptions(_ request: ListNotificationHistoriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNotificationHistoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNotificationHistories",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNotificationHistoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNotificationHistories(_ request: ListNotificationHistoriesRequest) async throws -> ListNotificationHistoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNotificationHistoriesWithOptions(request as! ListNotificationHistoriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNotificationHistoriesStatisticsWithOptions(_ request: ListNotificationHistoriesStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNotificationHistoriesStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNotificationHistoriesStatistics",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNotificationHistoriesStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNotificationHistoriesStatistics(_ request: ListNotificationHistoriesStatisticsRequest) async throws -> ListNotificationHistoriesStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNotificationHistoriesStatisticsWithOptions(request as! ListNotificationHistoriesStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOsVersionsWithOptions(_ request: ListOsVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOsVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOsVersions",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOsVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOsVersions(_ request: ListOsVersionsRequest) async throws -> ListOsVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOsVersionsWithOptions(request as! ListOsVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPhysicalSpacesWithOptions(_ tmpReq: ListPhysicalSpacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPhysicalSpacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListPhysicalSpacesShrinkRequest = ListPhysicalSpacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.physicalSpaceIds)) {
            request.physicalSpaceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.physicalSpaceIds, "PhysicalSpaceIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPhysicalSpaces",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPhysicalSpacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPhysicalSpaces(_ request: ListPhysicalSpacesRequest) async throws -> ListPhysicalSpacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPhysicalSpacesWithOptions(request as! ListPhysicalSpacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegionsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRegions",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegions() async throws -> ListRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRegionsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSpaceModelsWithOptions(_ request: ListSpaceModelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSpaceModelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSpaceModels",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSpaceModelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSpaceModels(_ request: ListSpaceModelsRequest) async throws -> ListSpaceModelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSpaceModelsWithOptions(request as! ListSpaceModelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTasksHistoriesWithOptions(_ request: ListTasksHistoriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTasksHistoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTasksHistories",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTasksHistoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTasksHistories(_ request: ListTasksHistoriesRequest) async throws -> ListTasksHistoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTasksHistoriesWithOptions(request as! ListTasksHistoriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTreePhysicalSpacesWithOptions(_ tmpReq: ListTreePhysicalSpacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTreePhysicalSpacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTreePhysicalSpacesShrinkRequest = ListTreePhysicalSpacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.physicalSpaceIds)) {
            request.physicalSpaceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.physicalSpaceIds, "PhysicalSpaceIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTreePhysicalSpaces",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTreePhysicalSpacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTreePhysicalSpaces(_ request: ListTreePhysicalSpacesRequest) async throws -> ListTreePhysicalSpacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTreePhysicalSpacesWithOptions(request as! ListTreePhysicalSpacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockSpaceModelWithOptions(_ request: LockSpaceModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LockSpaceModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceModelId)) {
            query["SpaceModelId"] = request.spaceModelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LockSpaceModel",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LockSpaceModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockSpaceModel(_ request: LockSpaceModelRequest) async throws -> LockSpaceModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await lockSpaceModelWithOptions(request as! LockSpaceModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryTasksWithOptions(_ tmpReq: RetryTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RetryTasksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RetryTasksShrinkRequest = RetryTasksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.retryTasks)) {
            request.retryTasksShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.retryTasks, "RetryTasks", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retryTasksShrink)) {
            query["RetryTasks"] = request.retryTasksShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetryTasks",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetryTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryTasks(_ request: RetryTasksRequest) async throws -> RetryTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await retryTasksWithOptions(request as! RetryTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDedicatedLineWithOptions(_ request: UpdateDedicatedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDedicatedLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            body["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.contact)) {
            body["Contact"] = request.contact ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedLineGateway)) {
            body["DedicatedLineGateway"] = request.dedicatedLineGateway ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedLineId)) {
            body["DedicatedLineId"] = request.dedicatedLineId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedLineIp)) {
            body["DedicatedLineIp"] = request.dedicatedLineIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedLineRole)) {
            body["DedicatedLineRole"] = request.dedicatedLineRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devicePort)) {
            body["DevicePort"] = request.devicePort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expirationDate)) {
            body["ExpirationDate"] = request.expirationDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extAttributes)) {
            body["ExtAttributes"] = request.extAttributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isp)) {
            body["Isp"] = request.isp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ispId)) {
            body["IspId"] = request.ispId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onlineDate)) {
            body["OnlineDate"] = request.onlineDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceId)) {
            body["PhysicalSpaceId"] = request.physicalSpaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDedicatedLine",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDedicatedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDedicatedLine(_ request: UpdateDedicatedLineRequest) async throws -> UpdateDedicatedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDedicatedLineWithOptions(request as! UpdateDedicatedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeviceWithOptions(_ request: UpdateDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePassword)) {
            body["EnablePassword"] = request.enablePassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extAttributes)) {
            body["ExtAttributes"] = request.extAttributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            body["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            body["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginPassword)) {
            body["LoginPassword"] = request.loginPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginType)) {
            body["LoginType"] = request.loginType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginUsername)) {
            body["LoginUsername"] = request.loginUsername ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            body["Mac"] = request.mac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceId)) {
            body["PhysicalSpaceId"] = request.physicalSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityDomain)) {
            body["SecurityDomain"] = request.securityDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceStatus)) {
            body["ServiceStatus"] = request.serviceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sn)) {
            body["Sn"] = request.sn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAccountType)) {
            body["SnmpAccountType"] = request.snmpAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAccountVersion)) {
            body["SnmpAccountVersion"] = request.snmpAccountVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAuthPassphrase)) {
            body["SnmpAuthPassphrase"] = request.snmpAuthPassphrase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAuthProtocol)) {
            body["SnmpAuthProtocol"] = request.snmpAuthProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpCommunity)) {
            body["SnmpCommunity"] = request.snmpCommunity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpPrivacyPassphrase)) {
            body["SnmpPrivacyPassphrase"] = request.snmpPrivacyPassphrase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpPrivacyProtocol)) {
            body["SnmpPrivacyProtocol"] = request.snmpPrivacyProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpSecurityLevel)) {
            body["SnmpSecurityLevel"] = request.snmpSecurityLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpUsername)) {
            body["SnmpUsername"] = request.snmpUsername ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDevice",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDevice(_ request: UpdateDeviceRequest) async throws -> UpdateDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDeviceWithOptions(request as! UpdateDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeviceFormWithOptions(_ tmpReq: UpdateDeviceFormRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeviceFormResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateDeviceFormShrinkRequest = UpdateDeviceFormShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.attributeList)) {
            request.attributeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.attributeList, "AttributeList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountConfig)) {
            body["AccountConfig"] = request.accountConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.attributeListShrink)) {
            body["AttributeList"] = request.attributeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configCompare)) {
            body["ConfigCompare"] = request.configCompare!;
        }
        if (!TeaUtils.Client.isUnset(request.detailDisplay)) {
            body["DetailDisplay"] = request.detailDisplay!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceFormId)) {
            body["DeviceFormId"] = request.deviceFormId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDeviceFormId)) {
            body["RelatedDeviceFormId"] = request.relatedDeviceFormId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.script)) {
            body["Script"] = request.script ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDeviceForm",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDeviceFormResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeviceForm(_ request: UpdateDeviceFormRequest) async throws -> UpdateDeviceFormResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDeviceFormWithOptions(request as! UpdateDeviceFormRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDevicePropertyWithOptions(_ request: UpdateDevicePropertyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDevicePropertyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.devicePropertyId)) {
            body["DevicePropertyId"] = request.devicePropertyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyContent)) {
            body["PropertyContent"] = request.propertyContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyFormat)) {
            body["PropertyFormat"] = request.propertyFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyName)) {
            body["PropertyName"] = request.propertyName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDeviceProperty",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDevicePropertyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeviceProperty(_ request: UpdateDevicePropertyRequest) async throws -> UpdateDevicePropertyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDevicePropertyWithOptions(request as! UpdateDevicePropertyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDevicesWithOptions(_ tmpReq: UpdateDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDevicesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateDevicesShrinkRequest = UpdateDevicesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.deviceIds)) {
            request.deviceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deviceIds, "DeviceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceIdsShrink)) {
            body["DeviceIds"] = request.deviceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enablePassword)) {
            body["EnablePassword"] = request.enablePassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extAttributes)) {
            body["ExtAttributes"] = request.extAttributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginPassword)) {
            body["LoginPassword"] = request.loginPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginType)) {
            body["LoginType"] = request.loginType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginUsername)) {
            body["LoginUsername"] = request.loginUsername ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceId)) {
            body["PhysicalSpaceId"] = request.physicalSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceName)) {
            body["PhysicalSpaceName"] = request.physicalSpaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityDomain)) {
            body["SecurityDomain"] = request.securityDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceStatus)) {
            body["ServiceStatus"] = request.serviceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAccountType)) {
            body["SnmpAccountType"] = request.snmpAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAccountVersion)) {
            body["SnmpAccountVersion"] = request.snmpAccountVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAuthPassphrase)) {
            body["SnmpAuthPassphrase"] = request.snmpAuthPassphrase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpAuthProtocol)) {
            body["SnmpAuthProtocol"] = request.snmpAuthProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpCommunity)) {
            body["SnmpCommunity"] = request.snmpCommunity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpPrivacyPassphrase)) {
            body["SnmpPrivacyPassphrase"] = request.snmpPrivacyPassphrase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpPrivacyProtocol)) {
            body["SnmpPrivacyProtocol"] = request.snmpPrivacyProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpSecurityLevel)) {
            body["SnmpSecurityLevel"] = request.snmpSecurityLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snmpUsername)) {
            body["SnmpUsername"] = request.snmpUsername ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDevices",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDevices(_ request: UpdateDevicesRequest) async throws -> UpdateDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDevicesWithOptions(request as! UpdateDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventDefinitionWithOptions(_ request: UpdateEventDefinitionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEventDefinitionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            body["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventName)) {
            body["EventName"] = request.eventName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            body["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEventDefinition",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEventDefinitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventDefinition(_ request: UpdateEventDefinitionRequest) async throws -> UpdateEventDefinitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateEventDefinitionWithOptions(request as! UpdateEventDefinitionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceWithOptions(_ request: UpdateInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstance",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstance(_ request: UpdateInstanceRequest) async throws -> UpdateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateInstanceWithOptions(request as! UpdateInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOsVersionWithOptions(_ request: UpdateOsVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateOsVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bootPatch)) {
            body["BootPatch"] = request.bootPatch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featurePatch)) {
            body["FeaturePatch"] = request.featurePatch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osVersion)) {
            body["OsVersion"] = request.osVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osVersionId)) {
            body["OsVersionId"] = request.osVersionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemPatch)) {
            body["SystemPatch"] = request.systemPatch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateOsVersion",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateOsVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOsVersion(_ request: UpdateOsVersionRequest) async throws -> UpdateOsVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateOsVersionWithOptions(request as! UpdateOsVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePhysicalSpaceWithOptions(_ tmpReq: UpdatePhysicalSpaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePhysicalSpaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdatePhysicalSpaceShrinkRequest = UpdatePhysicalSpaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.securityDomainList)) {
            request.securityDomainListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.securityDomainList, "SecurityDomainList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            body["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.adminSpace)) {
            body["AdminSpace"] = request.adminSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            body["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            body["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moveAction)) {
            body["MoveAction"] = request.moveAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.owner)) {
            body["Owner"] = request.owner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentUid)) {
            body["ParentUid"] = request.parentUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceId)) {
            body["PhysicalSpaceId"] = request.physicalSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.physicalSpaceName)) {
            body["PhysicalSpaceName"] = request.physicalSpaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            body["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityDomainListShrink)) {
            body["SecurityDomainList"] = request.securityDomainListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceAbbreviation)) {
            body["SpaceAbbreviation"] = request.spaceAbbreviation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            body["SpaceType"] = request.spaceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUid)) {
            body["TargetUid"] = request.targetUid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePhysicalSpace",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePhysicalSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePhysicalSpace(_ request: UpdatePhysicalSpaceRequest) async throws -> UpdatePhysicalSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePhysicalSpaceWithOptions(request as! UpdatePhysicalSpaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSpaceModelWithOptions(_ tmpReq: UpdateSpaceModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSpaceModelResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateSpaceModelShrinkRequest = UpdateSpaceModelShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sort)) {
            request.sortShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sort, "Sort", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortShrink)) {
            body["Sort"] = request.sortShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceModelId)) {
            body["SpaceModelId"] = request.spaceModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            body["SpaceType"] = request.spaceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSpaceModel",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSpaceModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSpaceModel(_ request: UpdateSpaceModelRequest) async throws -> UpdateSpaceModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSpaceModelWithOptions(request as! UpdateSpaceModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSpaceModelInstanceWithOptions(_ request: UpdateSpaceModelInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSpaceModelInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instance)) {
            query["Instance"] = request.instance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceId)) {
            query["SpaceId"] = request.spaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSpaceModelInstance",
            "version": "2020-08-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSpaceModelInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSpaceModelInstance(_ request: UpdateSpaceModelInstanceRequest) async throws -> UpdateSpaceModelInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSpaceModelInstanceWithOptions(request as! UpdateSpaceModelInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
