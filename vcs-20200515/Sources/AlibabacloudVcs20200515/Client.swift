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
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("vcs", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addAiotDevicesWithOptions(_ tmpReq: AddAiotDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAiotDevicesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddAiotDevicesShrinkRequest = AddAiotDevicesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.aiotDeviceList)) {
            request.aiotDeviceListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.aiotDeviceList, "AiotDeviceList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aiotDeviceListShrink)) {
            body["AiotDeviceList"] = request.aiotDeviceListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAiotDevices",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAiotDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAiotDevices(_ request: AddAiotDevicesRequest) async throws -> AddAiotDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addAiotDevicesWithOptions(request as! AddAiotDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAiotPersonTableWithOptions(_ request: AddAiotPersonTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAiotPersonTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.personTable)) {
            bodyFlat["PersonTable"] = request.personTable!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAiotPersonTable",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAiotPersonTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAiotPersonTable(_ request: AddAiotPersonTableRequest) async throws -> AddAiotPersonTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addAiotPersonTableWithOptions(request as! AddAiotPersonTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAiotPersonTableItemsWithOptions(_ request: AddAiotPersonTableItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAiotPersonTableItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personTableId)) {
            body["PersonTableId"] = request.personTableId ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.personTableItemList)) {
            bodyFlat["PersonTableItemList"] = request.personTableItemList ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAiotPersonTableItems",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAiotPersonTableItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAiotPersonTableItems(_ request: AddAiotPersonTableItemsRequest) async throws -> AddAiotPersonTableItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addAiotPersonTableItemsWithOptions(request as! AddAiotPersonTableItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAiotPersonTableItemsForTablesWithOptions(_ request: AddAiotPersonTableItemsForTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAiotPersonTableItemsForTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.personTableItemList)) {
            bodyFlat["PersonTableItemList"] = request.personTableItemList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.personTableList)) {
            bodyFlat["PersonTableList"] = request.personTableList ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAiotPersonTableItemsForTables",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAiotPersonTableItemsForTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAiotPersonTableItemsForTables(_ request: AddAiotPersonTableItemsForTablesRequest) async throws -> AddAiotPersonTableItemsForTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addAiotPersonTableItemsForTablesWithOptions(request as! AddAiotPersonTableItemsForTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAiotVehicleTableItemsWithOptions(_ tmpReq: AddAiotVehicleTableItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAiotVehicleTableItemsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddAiotVehicleTableItemsShrinkRequest = AddAiotVehicleTableItemsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.vehicleTableItem)) {
            request.vehicleTableItemShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.vehicleTableItem, "VehicleTableItem", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleTableId)) {
            body["VehicleTableId"] = request.vehicleTableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleTableItemShrink)) {
            body["VehicleTableItem"] = request.vehicleTableItemShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAiotVehicleTableItems",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAiotVehicleTableItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAiotVehicleTableItems(_ request: AddAiotVehicleTableItemsRequest) async throws -> AddAiotVehicleTableItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addAiotVehicleTableItemsWithOptions(request as! AddAiotVehicleTableItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addCameraForInstanceWithOptions(_ tmpReq: AddCameraForInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddCameraForInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddCameraForInstanceShrinkRequest = AddCameraForInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cameraIds)) {
            request.cameraIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cameraIds, "CameraIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cameraIdsShrink)) {
            body["CameraIds"] = request.cameraIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddCameraForInstance",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddCameraForInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addCameraForInstance(_ request: AddCameraForInstanceRequest) async throws -> AddCameraForInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addCameraForInstanceWithOptions(request as! AddCameraForInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addChannelWithOptions(_ request: AddChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.parentDeviceGbId)) {
            body["ParentDeviceGbId"] = request.parentDeviceGbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddChannel",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addChannel(_ request: AddChannelRequest) async throws -> AddChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addChannelWithOptions(request as! AddChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataSourceWithOptions(_ request: AddDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceName)) {
            body["DataSourceName"] = request.dataSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDataSource",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataSource(_ request: AddDataSourceRequest) async throws -> AddDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDataSourceWithOptions(request as! AddDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDeviceWithOptions(_ request: AddDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bitRate)) {
            body["BitRate"] = request.bitRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceAddress)) {
            body["DeviceAddress"] = request.deviceAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceDirection)) {
            body["DeviceDirection"] = request.deviceDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceResolution)) {
            body["DeviceResolution"] = request.deviceResolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceSite)) {
            body["DeviceSite"] = request.deviceSite ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gbId)) {
            body["GbId"] = request.gbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDevice(_ request: AddDeviceRequest) async throws -> AddDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDeviceWithOptions(request as! AddDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDoubleVerificationGroupsWithOptions(_ request: AddDoubleVerificationGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDoubleVerificationGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.doubleVerificationGroupList)) {
            bodyFlat["DoubleVerificationGroupList"] = request.doubleVerificationGroupList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDoubleVerificationGroups",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDoubleVerificationGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDoubleVerificationGroups(_ request: AddDoubleVerificationGroupsRequest) async throws -> AddDoubleVerificationGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDoubleVerificationGroupsWithOptions(request as! AddDoubleVerificationGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMonitorWithOptions(_ request: AddMonitorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmVendor)) {
            body["AlgorithmVendor"] = request.algorithmVendor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.batchIndicator)) {
            body["BatchIndicator"] = request.batchIndicator!;
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorType)) {
            body["MonitorType"] = request.monitorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifierAppSecret)) {
            body["NotifierAppSecret"] = request.notifierAppSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifierExtendValues)) {
            body["NotifierExtendValues"] = request.notifierExtendValues ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifierTimeOut)) {
            body["NotifierTimeOut"] = request.notifierTimeOut!;
        }
        if (!TeaUtils.Client.isUnset(request.notifierType)) {
            body["NotifierType"] = request.notifierType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifierUrl)) {
            body["NotifierUrl"] = request.notifierUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddMonitor",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMonitor(_ request: AddMonitorRequest) async throws -> AddMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addMonitorWithOptions(request as! AddMonitorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProfileWithOptions(_ request: AddProfileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddProfileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId!;
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceUrl)) {
            body["FaceUrl"] = request.faceUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["Gender"] = request.gender!;
        }
        if (!TeaUtils.Client.isUnset(request.idNumber)) {
            body["IdNumber"] = request.idNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.liveAddress)) {
            body["LiveAddress"] = request.liveAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNo)) {
            body["PhoneNo"] = request.phoneNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.plateNo)) {
            body["PlateNo"] = request.plateNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneType)) {
            body["SceneType"] = request.sceneType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddProfile",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddProfileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProfile(_ request: AddProfileRequest) async throws -> AddProfileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addProfileWithOptions(request as! AddProfileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProfileCatalogWithOptions(_ request: AddProfileCatalogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddProfileCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogName)) {
            body["CatalogName"] = request.catalogName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentCatalogId)) {
            body["ParentCatalogId"] = request.parentCatalogId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddProfileCatalog",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddProfileCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProfileCatalog(_ request: AddProfileCatalogRequest) async throws -> AddProfileCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addProfileCatalogWithOptions(request as! AddProfileCatalogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSearchItemsWithOptions(_ tmpReq: AddSearchItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddSearchItemsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddSearchItemsShrinkRequest = AddSearchItemsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.searchItemList)) {
            request.searchItemListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchItemList, "SearchItemList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.searchItemListShrink)) {
            body["SearchItemList"] = request.searchItemListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchTableId)) {
            body["SearchTableId"] = request.searchTableId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddSearchItems",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddSearchItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSearchItems(_ request: AddSearchItemsRequest) async throws -> AddSearchItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addSearchItemsWithOptions(request as! AddSearchItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWatchItemsWithOptions(_ request: AddWatchItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddWatchItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.watchItemList)) {
            bodyFlat["WatchItemList"] = request.watchItemList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.watchPolicyId)) {
            body["WatchPolicyId"] = request.watchPolicyId ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddWatchItems",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddWatchItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWatchItems(_ request: AddWatchItemsRequest) async throws -> AddWatchItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addWatchItemsWithOptions(request as! AddWatchItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeleteInstanceWithOptions(_ tmpReq: BatchDeleteInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchDeleteInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchDeleteInstanceShrinkRequest = BatchDeleteInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            body["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchDeleteInstance",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchDeleteInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeleteInstance(_ request: BatchDeleteInstanceRequest) async throws -> BatchDeleteInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchDeleteInstanceWithOptions(request as! BatchDeleteInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindCorpGroupWithOptions(_ request: BindCorpGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindCorpGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpGroupId)) {
            body["CorpGroupId"] = request.corpGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindCorpGroup",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindCorpGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindCorpGroup(_ request: BindCorpGroupRequest) async throws -> BindCorpGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindCorpGroupWithOptions(request as! BindCorpGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindDevicesWithOptions(_ tmpReq: BindDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindDevicesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BindDevicesShrinkRequest = BindDevicesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.subDeviceList)) {
            request.subDeviceListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subDeviceList, "SubDeviceList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDeviceListShrink)) {
            body["SubDeviceList"] = request.subDeviceListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindDevices",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindDevices(_ request: BindDevicesRequest) async throws -> BindDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindDevicesWithOptions(request as! BindDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindPersonWithOptions(_ request: BindPersonRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindPersonResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personId)) {
            body["PersonId"] = request.personId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personMatchingRate)) {
            body["PersonMatchingRate"] = request.personMatchingRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileId)) {
            body["ProfileId"] = request.profileId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindPerson",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindPersonResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindPerson(_ request: BindPersonRequest) async throws -> BindPersonResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindPersonWithOptions(request as! BindPersonRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindUserWithOptions(_ request: BindUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchingRate)) {
            body["MatchingRate"] = request.matchingRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personId)) {
            body["PersonId"] = request.personId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindUser",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindUser(_ request: BindUserRequest) async throws -> BindUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindUserWithOptions(request as! BindUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkAIInstanceNameWithOptions(_ request: CheckAIInstanceNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckAIInstanceNameResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckAIInstanceName",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckAIInstanceNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkAIInstanceName(_ request: CheckAIInstanceNameRequest) async throws -> CheckAIInstanceNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkAIInstanceNameWithOptions(request as! CheckAIInstanceNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func controlAiotDeviceWithOptions(_ request: ControlAiotDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ControlAiotDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.associatedDeviceId)) {
            body["AssociatedDeviceId"] = request.associatedDeviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.associatedIPAddr)) {
            body["AssociatedIPAddr"] = request.associatedIPAddr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.associatedPort)) {
            body["AssociatedPort"] = request.associatedPort!;
        }
        if (!TeaUtils.Client.isUnset(request.associatedVerificationEnable)) {
            body["AssociatedVerificationEnable"] = request.associatedVerificationEnable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.barrierCommand)) {
            body["BarrierCommand"] = request.barrierCommand!;
        }
        if (!TeaUtils.Client.isUnset(request.checkEnabled)) {
            body["CheckEnabled"] = request.checkEnabled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commandType)) {
            body["CommandType"] = request.commandType!;
        }
        if (!TeaUtils.Client.isUnset(request.doubleVerificationGroupEnabled)) {
            body["DoubleVerificationGroupEnabled"] = request.doubleVerificationGroupEnabled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gateCtlStatus)) {
            body["GateCtlStatus"] = request.gateCtlStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityNumber)) {
            body["IdentityNumber"] = request.identityNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isProxy)) {
            body["IsProxy"] = request.isProxy!;
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.miFareCard)) {
            bodyFlat["MiFareCard"] = request.miFareCard!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rebootDevice)) {
            body["RebootDevice"] = request.rebootDevice ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.singleInterval)) {
            body["SingleInterval"] = request.singleInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.superPassword)) {
            body["SuperPassword"] = request.superPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upgradeFileURL)) {
            body["UpgradeFileURL"] = request.upgradeFileURL ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ControlAiotDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ControlAiotDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func controlAiotDevice(_ request: ControlAiotDeviceRequest) async throws -> ControlAiotDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await controlAiotDeviceWithOptions(request as! ControlAiotDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAIInstanceWithOptions(_ tmpReq: CreateAIInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAIInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAIInstanceShrinkRequest = CreateAIInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataSourceTimes)) {
            request.dataSourceTimesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataSourceTimes, "DataSourceTimes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.scheduleCycleDates)) {
            request.scheduleCycleDatesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scheduleCycleDates, "ScheduleCycleDates", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.scheduleTimes)) {
            request.scheduleTimesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scheduleTimes, "ScheduleTimes", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmId)) {
            body["AlgorithmId"] = request.algorithmId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.algorithmName)) {
            body["AlgorithmName"] = request.algorithmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.computeType)) {
            body["ComputeType"] = request.computeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerType)) {
            body["ContainerType"] = request.containerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSource)) {
            body["DataSource"] = request.dataSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceTimesShrink)) {
            body["DataSourceTimes"] = request.dataSourceTimesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            body["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fps)) {
            body["Fps"] = request.fps!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleCycleDatesShrink)) {
            body["ScheduleCycleDates"] = request.scheduleCycleDatesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTimesShrink)) {
            body["ScheduleTimes"] = request.scheduleTimesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleType)) {
            body["ScheduleType"] = request.scheduleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spf)) {
            body["Spf"] = request.spf!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAIInstance",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAIInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAIInstance(_ request: CreateAIInstanceRequest) async throws -> CreateAIInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAIInstanceWithOptions(request as! CreateAIInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createComputeInstanceWithOptions(_ tmpReq: CreateComputeInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateComputeInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateComputeInstanceShrinkRequest = CreateComputeInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.algorithms)) {
            request.algorithmsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.algorithms, "Algorithms", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.devices)) {
            request.devicesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.devices, "Devices", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acuUsed)) {
            body["AcuUsed"] = request.acuUsed!;
        }
        if (!TeaUtils.Client.isUnset(request.algorithmType)) {
            body["AlgorithmType"] = request.algorithmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.algorithmsShrink)) {
            body["Algorithms"] = request.algorithmsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.computePictureType)) {
            body["ComputePictureType"] = request.computePictureType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.computePictureValue)) {
            body["ComputePictureValue"] = request.computePictureValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceType)) {
            body["DatasourceType"] = request.datasourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devicesShrink)) {
            body["Devices"] = request.devicesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isFrameExtraction)) {
            body["IsFrameExtraction"] = request.isFrameExtraction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isPolling)) {
            body["IsPolling"] = request.isPolling!;
        }
        if (!TeaUtils.Client.isUnset(request.overallExecutionTime)) {
            body["OverallExecutionTime"] = request.overallExecutionTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picTopic)) {
            body["PicTopic"] = request.picTopic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picType)) {
            body["PicType"] = request.picType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pollingConfigs)) {
            body["PollingConfigs"] = request.pollingConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleCycleDate)) {
            body["ScheduleCycleDate"] = request.scheduleCycleDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleDay)) {
            body["ScheduleDay"] = request.scheduleDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleDaySize)) {
            body["ScheduleDaySize"] = request.scheduleDaySize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTimes)) {
            body["ScheduleTimes"] = request.scheduleTimes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleType)) {
            body["ScheduleType"] = request.scheduleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sliceExecutionTime)) {
            body["SliceExecutionTime"] = request.sliceExecutionTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageUsed)) {
            body["StorageUsed"] = request.storageUsed ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateComputeInstance",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateComputeInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createComputeInstance(_ request: CreateComputeInstanceRequest) async throws -> CreateComputeInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createComputeInstanceWithOptions(request as! CreateComputeInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCorpWithOptions(_ request: CreateCorpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCorpResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmType)) {
            body["AlgorithmType"] = request.algorithmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            body["CorpName"] = request.corpName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconPath)) {
            body["IconPath"] = request.iconPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentCorpId)) {
            body["ParentCorpId"] = request.parentCorpId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCorp",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCorpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCorp(_ request: CreateCorpRequest) async throws -> CreateCorpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCorpWithOptions(request as! CreateCorpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCorpGroupWithOptions(_ request: CreateCorpGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCorpGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCorpGroup",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCorpGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCorpGroup(_ request: CreateCorpGroupRequest) async throws -> CreateCorpGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCorpGroupWithOptions(request as! CreateCorpGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeviceWithOptions(_ request: CreateDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activateCode)) {
            body["ActivateCode"] = request.activateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.audioEnable)) {
            body["AudioEnable"] = request.audioEnable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            body["CityCode"] = request.cityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceAddress)) {
            body["DeviceAddress"] = request.deviceAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceDirection)) {
            body["DeviceDirection"] = request.deviceDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceModel)) {
            body["DeviceModel"] = request.deviceModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceRate)) {
            body["DeviceRate"] = request.deviceRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceResolution)) {
            body["DeviceResolution"] = request.deviceResolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceSite)) {
            body["DeviceSite"] = request.deviceSite ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceSn)) {
            body["DeviceSn"] = request.deviceSn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encodeFormat)) {
            body["EncodeFormat"] = request.encodeFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.frameRate)) {
            body["FrameRate"] = request.frameRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.govLength)) {
            body["GovLength"] = request.govLength ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inProtocol)) {
            body["InProtocol"] = request.inProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latitude)) {
            body["Latitude"] = request.latitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.longitude)) {
            body["Longitude"] = request.longitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeEnable)) {
            body["OSDTimeEnable"] = request.OSDTimeEnable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeType)) {
            body["OSDTimeType"] = request.OSDTimeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeX)) {
            body["OSDTimeX"] = request.OSDTimeX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeY)) {
            body["OSDTimeY"] = request.OSDTimeY ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentDeviceId)) {
            body["ParentDeviceId"] = request.parentDeviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDeviceCount)) {
            body["SubDeviceCount"] = request.subDeviceCount!;
        }
        if (!TeaUtils.Client.isUnset(request.subDeviceIdList)) {
            body["SubDeviceIdList"] = request.subDeviceIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDevice",
            "version": "2020-05-15",
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
    public func createModelServiceWithOptions(_ request: CreateModelServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmCode)) {
            body["AlgorithmCode"] = request.algorithmCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.QPSRequired)) {
            body["QPSRequired"] = request.QPSRequired!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModelService",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelService(_ request: CreateModelServiceRequest) async throws -> CreateModelServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createModelServiceWithOptions(request as! CreateModelServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNewDeviceWithOptions(_ request: CreateNewDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNewDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            body["CityCode"] = request.cityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceAddress)) {
            body["DeviceAddress"] = request.deviceAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceModel)) {
            body["DeviceModel"] = request.deviceModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inProtocol)) {
            body["InProtocol"] = request.inProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latitude)) {
            body["Latitude"] = request.latitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.longitude)) {
            body["Longitude"] = request.longitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDeviceCount)) {
            body["SubDeviceCount"] = request.subDeviceCount!;
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNewDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNewDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNewDevice(_ request: CreateNewDeviceRequest) async throws -> CreateNewDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNewDeviceWithOptions(request as! CreateNewDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScanDeviceWithOptions(_ request: CreateScanDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScanDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.audioEnable)) {
            body["AudioEnable"] = request.audioEnable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            body["CityCode"] = request.cityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceAddress)) {
            body["DeviceAddress"] = request.deviceAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceDirection)) {
            body["DeviceDirection"] = request.deviceDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceModel)) {
            body["DeviceModel"] = request.deviceModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceRate)) {
            body["DeviceRate"] = request.deviceRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceResolution)) {
            body["DeviceResolution"] = request.deviceResolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceSite)) {
            body["DeviceSite"] = request.deviceSite ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceSn)) {
            body["DeviceSn"] = request.deviceSn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encodeFormat)) {
            body["EncodeFormat"] = request.encodeFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.frameRate)) {
            body["FrameRate"] = request.frameRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.govLength)) {
            body["GovLength"] = request.govLength ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inProtocol)) {
            body["InProtocol"] = request.inProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latitude)) {
            body["Latitude"] = request.latitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.longitude)) {
            body["Longitude"] = request.longitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeEnable)) {
            body["OSDTimeEnable"] = request.OSDTimeEnable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeType)) {
            body["OSDTimeType"] = request.OSDTimeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeX)) {
            body["OSDTimeX"] = request.OSDTimeX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeY)) {
            body["OSDTimeY"] = request.OSDTimeY ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDeviceCount)) {
            body["SubDeviceCount"] = request.subDeviceCount!;
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScanDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScanDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScanDevice(_ request: CreateScanDeviceRequest) async throws -> CreateScanDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createScanDeviceWithOptions(request as! CreateScanDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSearchTableWithOptions(_ request: CreateSearchTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSearchTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmId)) {
            body["AlgorithmId"] = request.algorithmId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchTableName)) {
            body["SearchTableName"] = request.searchTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            body["TargetType"] = request.targetType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSearchTable",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSearchTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSearchTable(_ request: CreateSearchTableRequest) async throws -> CreateSearchTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSearchTableWithOptions(request as! CreateSearchTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserWithOptions(_ request: CreateUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            body["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.age)) {
            body["Age"] = request.age!;
        }
        if (!TeaUtils.Client.isUnset(request.attachment)) {
            body["Attachment"] = request.attachment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceImageUrl)) {
            body["FaceImageUrl"] = request.faceImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["Gender"] = request.gender!;
        }
        if (!TeaUtils.Client.isUnset(request.idNumber)) {
            body["IdNumber"] = request.idNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNo)) {
            body["PhoneNo"] = request.phoneNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.plateNo)) {
            body["PlateNo"] = request.plateNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["UserGroupId"] = request.userGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUser",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUser(_ request: CreateUserRequest) async throws -> CreateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUserWithOptions(request as! CreateUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserGroupWithOptions(_ request: CreateUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentUserGroupId)) {
            body["ParentUserGroupId"] = request.parentUserGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.userGroupName)) {
            body["UserGroupName"] = request.userGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserGroup",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserGroup(_ request: CreateUserGroupRequest) async throws -> CreateUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUserGroupWithOptions(request as! CreateUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoComposeTaskWithOptions(_ request: CreateVideoComposeTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVideoComposeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.audioFileName)) {
            body["AudioFileName"] = request.audioFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketName)) {
            body["BucketName"] = request.bucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            body["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageFileNames)) {
            body["ImageFileNames"] = request.imageFileNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageParameters)) {
            body["ImageParameters"] = request.imageParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoFormat)) {
            body["VideoFormat"] = request.videoFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoFrameRate)) {
            body["VideoFrameRate"] = request.videoFrameRate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVideoComposeTask",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVideoComposeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoComposeTask(_ request: CreateVideoComposeTaskRequest) async throws -> CreateVideoComposeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVideoComposeTaskWithOptions(request as! CreateVideoComposeTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoSummaryTaskWithOptions(_ request: CreateVideoSummaryTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVideoSummaryTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTimeStamp)) {
            body["EndTimeStamp"] = request.endTimeStamp!;
        }
        if (!TeaUtils.Client.isUnset(request.liveVideoSummary)) {
            body["LiveVideoSummary"] = request.liveVideoSummary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionList)) {
            body["OptionList"] = request.optionList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimeStamp)) {
            body["StartTimeStamp"] = request.startTimeStamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVideoSummaryTask",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVideoSummaryTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoSummaryTask(_ request: CreateVideoSummaryTaskRequest) async throws -> CreateVideoSummaryTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVideoSummaryTaskWithOptions(request as! CreateVideoSummaryTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWatchPolicyWithOptions(_ request: CreateWatchPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWatchPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.itemMatchType)) {
            body["ItemMatchType"] = request.itemMatchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.similarityThreshold)) {
            body["SimilarityThreshold"] = request.similarityThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            body["TargetType"] = request.targetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watchMode)) {
            body["WatchMode"] = request.watchMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watchPolicyName)) {
            body["WatchPolicyName"] = request.watchPolicyName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWatchPolicy",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWatchPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWatchPolicy(_ request: CreateWatchPolicyRequest) async throws -> CreateWatchPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWatchPolicyWithOptions(request as! CreateWatchPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWatchTaskWithOptions(_ request: CreateWatchTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWatchTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceList)) {
            body["DeviceList"] = request.deviceList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageReceiver)) {
            body["MessageReceiver"] = request.messageReceiver ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleCycleDates)) {
            body["ScheduleCycleDates"] = request.scheduleCycleDates ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTimes)) {
            body["ScheduleTimes"] = request.scheduleTimes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleType)) {
            body["ScheduleType"] = request.scheduleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watchPolicyIds)) {
            body["WatchPolicyIds"] = request.watchPolicyIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWatchTask",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWatchTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWatchTask(_ request: CreateWatchTaskRequest) async throws -> CreateWatchTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWatchTaskWithOptions(request as! CreateWatchTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAIInstanceWithOptions(_ tmpReq: DeleteAIInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAIInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteAIInstanceShrinkRequest = DeleteAIInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            body["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAIInstance",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAIInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAIInstance(_ request: DeleteAIInstanceRequest) async throws -> DeleteAIInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAIInstanceWithOptions(request as! DeleteAIInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAiotDeviceWithOptions(_ request: DeleteAiotDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAiotDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAiotDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAiotDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAiotDevice(_ request: DeleteAiotDeviceRequest) async throws -> DeleteAiotDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAiotDeviceWithOptions(request as! DeleteAiotDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAiotPersonTableWithOptions(_ request: DeleteAiotPersonTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAiotPersonTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personTableId)) {
            body["PersonTableId"] = request.personTableId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAiotPersonTable",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAiotPersonTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAiotPersonTable(_ request: DeleteAiotPersonTableRequest) async throws -> DeleteAiotPersonTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAiotPersonTableWithOptions(request as! DeleteAiotPersonTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAiotPersonTableItemWithOptions(_ request: DeleteAiotPersonTableItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAiotPersonTableItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personTableId)) {
            body["PersonTableId"] = request.personTableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personTableItemId)) {
            body["PersonTableItemId"] = request.personTableItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAiotPersonTableItem",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAiotPersonTableItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAiotPersonTableItem(_ request: DeleteAiotPersonTableItemRequest) async throws -> DeleteAiotPersonTableItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAiotPersonTableItemWithOptions(request as! DeleteAiotPersonTableItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAiotVehicleTableItemWithOptions(_ request: DeleteAiotVehicleTableItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAiotVehicleTableItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleTableId)) {
            body["VehicleTableId"] = request.vehicleTableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleTableItemId)) {
            body["VehicleTableItemId"] = request.vehicleTableItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAiotVehicleTableItem",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAiotVehicleTableItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAiotVehicleTableItem(_ request: DeleteAiotVehicleTableItemRequest) async throws -> DeleteAiotVehicleTableItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAiotVehicleTableItemWithOptions(request as! DeleteAiotVehicleTableItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChannelWithOptions(_ request: DeleteChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceCodes)) {
            body["DeviceCodes"] = request.deviceCodes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteChannel",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChannel(_ request: DeleteChannelRequest) async throws -> DeleteChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteChannelWithOptions(request as! DeleteChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCorpGroupWithOptions(_ request: DeleteCorpGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCorpGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCorpGroup",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCorpGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCorpGroup(_ request: DeleteCorpGroupRequest) async throws -> DeleteCorpGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCorpGroupWithOptions(request as! DeleteCorpGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSourceWithOptions(_ request: DeleteDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataSource",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSource(_ request: DeleteDataSourceRequest) async throws -> DeleteDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDataSourceWithOptions(request as! DeleteDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSourcesWithOptions(_ request: DeleteDataSourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceIdList)) {
            body["DataSourceIdList"] = request.dataSourceIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataSources",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSources(_ request: DeleteDataSourcesRequest) async throws -> DeleteDataSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDataSourcesWithOptions(request as! DeleteDataSourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeviceWithOptions(_ request: DeleteDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gbId)) {
            body["GbId"] = request.gbId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDevice",
            "version": "2020-05-15",
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
    public func deleteDeviceForInstanceWithOptions(_ tmpReq: DeleteDeviceForInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDeviceForInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteDeviceForInstanceShrinkRequest = DeleteDeviceForInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.devices)) {
            request.devicesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.devices, "Devices", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmId)) {
            body["AlgorithmId"] = request.algorithmId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deleteInstanceFlag)) {
            body["DeleteInstanceFlag"] = request.deleteInstanceFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceCount)) {
            body["DeviceCount"] = request.deviceCount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devicesShrink)) {
            body["Devices"] = request.devicesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDeviceForInstance",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDeviceForInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeviceForInstance(_ request: DeleteDeviceForInstanceRequest) async throws -> DeleteDeviceForInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDeviceForInstanceWithOptions(request as! DeleteDeviceForInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDevicesWithOptions(_ request: DeleteDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceIdList)) {
            body["DeviceIdList"] = request.deviceIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDevices",
            "version": "2020-05-15",
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
    public func deleteDoubleVerificationGroupWithOptions(_ request: DeleteDoubleVerificationGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDoubleVerificationGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.doubleVerificationGroupId)) {
            body["DoubleVerificationGroupId"] = request.doubleVerificationGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDoubleVerificationGroup",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDoubleVerificationGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDoubleVerificationGroup(_ request: DeleteDoubleVerificationGroupRequest) async throws -> DeleteDoubleVerificationGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDoubleVerificationGroupWithOptions(request as! DeleteDoubleVerificationGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIPCDeviceWithOptions(_ request: DeleteIPCDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIPCDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceCodes)) {
            body["DeviceCodes"] = request.deviceCodes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIPCDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIPCDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIPCDevice(_ request: DeleteIPCDeviceRequest) async throws -> DeleteIPCDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteIPCDeviceWithOptions(request as! DeleteIPCDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelServiceWithOptions(_ request: DeleteModelServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelServiceId)) {
            body["ModelServiceId"] = request.modelServiceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModelService",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelService(_ request: DeleteModelServiceRequest) async throws -> DeleteModelServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteModelServiceWithOptions(request as! DeleteModelServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNVRDeviceWithOptions(_ request: DeleteNVRDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNVRDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceCodes)) {
            body["DeviceCodes"] = request.deviceCodes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNVRDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNVRDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNVRDevice(_ request: DeleteNVRDeviceRequest) async throws -> DeleteNVRDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNVRDeviceWithOptions(request as! DeleteNVRDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProfileWithOptions(_ request: DeleteProfileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProfileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileId)) {
            body["ProfileId"] = request.profileId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProfile",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProfileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProfile(_ request: DeleteProfileRequest) async throws -> DeleteProfileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteProfileWithOptions(request as! DeleteProfileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProfileCatalogWithOptions(_ request: DeleteProfileCatalogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProfileCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProfileCatalog",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProfileCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProfileCatalog(_ request: DeleteProfileCatalogRequest) async throws -> DeleteProfileCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteProfileCatalogWithOptions(request as! DeleteProfileCatalogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProjectWithOptions(_ request: DeleteProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectIds)) {
            query["ProjectIds"] = request.projectIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProject",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProject(_ request: DeleteProjectRequest) async throws -> DeleteProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteProjectWithOptions(request as! DeleteProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecordsWithOptions(_ request: DeleteRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmType)) {
            body["AlgorithmType"] = request.algorithmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attributeName)) {
            body["AttributeName"] = request.attributeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorType)) {
            body["OperatorType"] = request.operatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRecords",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecords(_ request: DeleteRecordsRequest) async throws -> DeleteRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRecordsWithOptions(request as! DeleteRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSearchTablesWithOptions(_ request: DeleteSearchTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSearchTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.searchTableIds)) {
            body["SearchTableIds"] = request.searchTableIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSearchTables",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSearchTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSearchTables(_ request: DeleteSearchTablesRequest) async throws -> DeleteSearchTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSearchTablesWithOptions(request as! DeleteSearchTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserWithOptions(_ request: DeleteUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUser",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUser(_ request: DeleteUserRequest) async throws -> DeleteUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserWithOptions(request as! DeleteUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserGroupWithOptions(_ request: DeleteUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserGroup",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserGroup(_ request: DeleteUserGroupRequest) async throws -> DeleteUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserGroupWithOptions(request as! DeleteUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVideoSummaryTaskWithOptions(_ request: DeleteVideoSummaryTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVideoSummaryTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVideoSummaryTask",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVideoSummaryTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVideoSummaryTask(_ request: DeleteVideoSummaryTaskRequest) async throws -> DeleteVideoSummaryTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVideoSummaryTaskWithOptions(request as! DeleteVideoSummaryTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWatchPoliciesWithOptions(_ request: DeleteWatchPoliciesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWatchPoliciesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.watchPolicyIds)) {
            body["WatchPolicyIds"] = request.watchPolicyIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWatchPolicies",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWatchPoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWatchPolicies(_ request: DeleteWatchPoliciesRequest) async throws -> DeleteWatchPoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWatchPoliciesWithOptions(request as! DeleteWatchPoliciesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWatchTasksWithOptions(_ request: DeleteWatchTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWatchTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.watchTaskIds)) {
            body["WatchTaskIds"] = request.watchTaskIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWatchTasks",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWatchTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWatchTasks(_ request: DeleteWatchTasksRequest) async throws -> DeleteWatchTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWatchTasksWithOptions(request as! DeleteWatchTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAIInstanceWithOptions(_ request: DescribeAIInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAIInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAIInstance",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAIInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAIInstance(_ request: DescribeAIInstanceRequest) async throws -> DescribeAIInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAIInstanceWithOptions(request as! DescribeAIInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAiotDevicesWithOptions(_ request: DescribeAiotDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAiotDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idList)) {
            body["IdList"] = request.idList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAiotDevices",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAiotDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAiotDevices(_ request: DescribeAiotDevicesRequest) async throws -> DescribeAiotDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAiotDevicesWithOptions(request as! DescribeAiotDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAiotPersonTableItemsWithOptions(_ request: DescribeAiotPersonTableItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAiotPersonTableItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.personTableId)) {
            body["PersonTableId"] = request.personTableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personTableItemId)) {
            body["PersonTableItemId"] = request.personTableItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAiotPersonTableItems",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAiotPersonTableItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAiotPersonTableItems(_ request: DescribeAiotPersonTableItemsRequest) async throws -> DescribeAiotPersonTableItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAiotPersonTableItemsWithOptions(request as! DescribeAiotPersonTableItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAiotPersonTablesWithOptions(_ request: DescribeAiotPersonTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAiotPersonTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personTableIdList)) {
            body["PersonTableIdList"] = request.personTableIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAiotPersonTables",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAiotPersonTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAiotPersonTables(_ request: DescribeAiotPersonTablesRequest) async throws -> DescribeAiotPersonTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAiotPersonTablesWithOptions(request as! DescribeAiotPersonTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAiotVehicleTableItemsWithOptions(_ request: DescribeAiotVehicleTableItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAiotVehicleTableItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.vehicleTableId)) {
            body["VehicleTableId"] = request.vehicleTableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleTableItemId)) {
            body["VehicleTableItemId"] = request.vehicleTableItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAiotVehicleTableItems",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAiotVehicleTableItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAiotVehicleTableItems(_ request: DescribeAiotVehicleTableItemsRequest) async throws -> DescribeAiotVehicleTableItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAiotVehicleTableItemsWithOptions(request as! DescribeAiotVehicleTableItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAiotVehicleTablesWithOptions(_ request: DescribeAiotVehicleTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAiotVehicleTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleTableIdList)) {
            body["VehicleTableIdList"] = request.vehicleTableIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAiotVehicleTables",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAiotVehicleTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAiotVehicleTables(_ request: DescribeAiotVehicleTablesRequest) async throws -> DescribeAiotVehicleTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAiotVehicleTablesWithOptions(request as! DescribeAiotVehicleTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCameraForInstanceWithOptions(_ request: DescribeCameraForInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCameraForInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
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
            "action": "DescribeCameraForInstance",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCameraForInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCameraForInstance(_ request: DescribeCameraForInstanceRequest) async throws -> DescribeCameraForInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCameraForInstanceWithOptions(request as! DescribeCameraForInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelsWithOptions(_ request: DescribeChannelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeChannelsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceFilter)) {
            body["DeviceFilter"] = request.deviceFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceStatus)) {
            body["DeviceStatus"] = request.deviceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nvrId)) {
            body["NvrId"] = request.nvrId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.showUnConfig)) {
            body["ShowUnConfig"] = request.showUnConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeChannels",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeChannelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannels(_ request: DescribeChannelsRequest) async throws -> DescribeChannelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeChannelsWithOptions(request as! DescribeChannelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataSourcesWithOptions(_ request: DescribeDataSourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDataSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceCategory)) {
            body["DataSourceCategory"] = request.dataSourceCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceFilter)) {
            body["DataSourceFilter"] = request.dataSourceFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceIdList)) {
            body["DataSourceIdList"] = request.dataSourceIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.streamStatus)) {
            body["StreamStatus"] = request.streamStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDataSources",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDataSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataSources(_ request: DescribeDataSourcesRequest) async throws -> DescribeDataSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDataSourcesWithOptions(request as! DescribeDataSourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDevicesWithOptions(_ request: DescribeDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceIdList)) {
            body["DeviceIdList"] = request.deviceIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDevices",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDevices(_ request: DescribeDevicesRequest) async throws -> DescribeDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDevicesWithOptions(request as! DescribeDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpcsWithOptions(_ request: DescribeIpcsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIpcsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceFilter)) {
            body["DeviceFilter"] = request.deviceFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceIdList)) {
            body["DeviceIdList"] = request.deviceIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceStatus)) {
            body["DeviceStatus"] = request.deviceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nvrIdList)) {
            body["NvrIdList"] = request.nvrIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentDeviceType)) {
            body["ParentDeviceType"] = request.parentDeviceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIpcs",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIpcsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpcs(_ request: DescribeIpcsRequest) async throws -> DescribeIpcsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIpcsWithOptions(request as! DescribeIpcsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeModelServiceWithOptions(_ request: DescribeModelServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeModelServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelServiceId)) {
            body["ModelServiceId"] = request.modelServiceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeModelService",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeModelServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeModelService(_ request: DescribeModelServiceRequest) async throws -> DescribeModelServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeModelServiceWithOptions(request as! DescribeModelServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeModelServiceListWithOptions(_ request: DescribeModelServiceListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeModelServiceListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmCode)) {
            body["AlgorithmCode"] = request.algorithmCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeDeleted)) {
            body["IncludeDeleted"] = request.includeDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.modelServiceName)) {
            body["ModelServiceName"] = request.modelServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeModelServiceList",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeModelServiceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeModelServiceList(_ request: DescribeModelServiceListRequest) async throws -> DescribeModelServiceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeModelServiceListWithOptions(request as! DescribeModelServiceListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNvrDevicesWithOptions(_ request: DescribeNvrDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNvrDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceFilter)) {
            body["DeviceFilter"] = request.deviceFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nvrDeviceIdList)) {
            body["NvrDeviceIdList"] = request.nvrDeviceIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNvrDevices",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNvrDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNvrDevices(_ request: DescribeNvrDevicesRequest) async throws -> DescribeNvrDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNvrDevicesWithOptions(request as! DescribeNvrDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNvrsWithOptions(_ request: DescribeNvrsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNvrsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceFilter)) {
            body["DeviceFilter"] = request.deviceFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nvrDeviceIdList)) {
            body["NvrDeviceIdList"] = request.nvrDeviceIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNvrs",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNvrsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNvrs(_ request: DescribeNvrsRequest) async throws -> DescribeNvrsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNvrsWithOptions(request as! DescribeNvrsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSearchItemsWithOptions(_ request: DescribeSearchItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSearchItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchItemIds)) {
            body["SearchItemIds"] = request.searchItemIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchTableId)) {
            body["SearchTableId"] = request.searchTableId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSearchItems",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSearchItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSearchItems(_ request: DescribeSearchItemsRequest) async throws -> DescribeSearchItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSearchItemsWithOptions(request as! DescribeSearchItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSearchTablesWithOptions(_ request: DescribeSearchTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSearchTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchTableIds)) {
            body["SearchTableIds"] = request.searchTableIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSearchTables",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSearchTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSearchTables(_ request: DescribeSearchTablesRequest) async throws -> DescribeSearchTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSearchTablesWithOptions(request as! DescribeSearchTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWatchItemsWithOptions(_ request: DescribeWatchItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWatchItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.watchItemIds)) {
            body["WatchItemIds"] = request.watchItemIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watchPolicyId)) {
            body["WatchPolicyId"] = request.watchPolicyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWatchItems",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWatchItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWatchItems(_ request: DescribeWatchItemsRequest) async throws -> DescribeWatchItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeWatchItemsWithOptions(request as! DescribeWatchItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWatchPoliciesWithOptions(_ request: DescribeWatchPoliciesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWatchPoliciesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.watchPolicyIds)) {
            body["WatchPolicyIds"] = request.watchPolicyIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWatchPolicies",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWatchPoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWatchPolicies(_ request: DescribeWatchPoliciesRequest) async throws -> DescribeWatchPoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeWatchPoliciesWithOptions(request as! DescribeWatchPoliciesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWatchTasksWithOptions(_ request: DescribeWatchTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWatchTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.watchTaskIds)) {
            body["WatchTaskIds"] = request.watchTaskIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWatchTasks",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWatchTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWatchTasks(_ request: DescribeWatchTasksRequest) async throws -> DescribeWatchTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeWatchTasksWithOptions(request as! DescribeWatchTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describesDoubleVerificationGroupsWithOptions(_ request: DescribesDoubleVerificationGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribesDoubleVerificationGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.doubleVerificationGroupIds)) {
            body["DoubleVerificationGroupIds"] = request.doubleVerificationGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribesDoubleVerificationGroups",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribesDoubleVerificationGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describesDoubleVerificationGroups(_ request: DescribesDoubleVerificationGroupsRequest) async throws -> DescribesDoubleVerificationGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describesDoubleVerificationGroupsWithOptions(request as! DescribesDoubleVerificationGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAiotStorageInfoWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetAiotStorageInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAiotStorageInfo",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAiotStorageInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAiotStorageInfo() async throws -> GetAiotStorageInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAiotStorageInfoWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBodyOptionsWithOptions(_ request: GetBodyOptionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBodyOptionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBodyOptions",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBodyOptionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBodyOptions(_ request: GetBodyOptionsRequest) async throws -> GetBodyOptionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBodyOptionsWithOptions(request as! GetBodyOptionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogListWithOptions(_ request: GetCatalogListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCatalogListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            query["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            query["IsvSubId"] = request.isvSubId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCatalogList",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCatalogListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogList(_ request: GetCatalogListRequest) async throws -> GetCatalogListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCatalogListWithOptions(request as! GetCatalogListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCityCodeWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetCityCodeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCityCode",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCityCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCityCode() async throws -> GetCityCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCityCodeWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataSourceStatsWithOptions(_ request: GetDataSourceStatsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataSourceStatsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataSourceStats",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataSourceStatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataSourceStats(_ request: GetDataSourceStatsRequest) async throws -> GetDataSourceStatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataSourceStatsWithOptions(request as! GetDataSourceStatsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceCaptureStrategyWithOptions(_ request: GetDeviceCaptureStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceCaptureStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceCode)) {
            body["DeviceCode"] = request.deviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceCaptureStrategy",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceCaptureStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceCaptureStrategy(_ request: GetDeviceCaptureStrategyRequest) async throws -> GetDeviceCaptureStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceCaptureStrategyWithOptions(request as! GetDeviceCaptureStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceConfigWithOptions(_ request: GetDeviceConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceSn)) {
            body["DeviceSn"] = request.deviceSn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceTimeStamp)) {
            body["DeviceTimeStamp"] = request.deviceTimeStamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceConfig",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
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
    public func getDeviceLiveUrlWithOptions(_ request: GetDeviceLiveUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceLiveUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gbId)) {
            body["GbId"] = request.gbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outProtocol)) {
            body["OutProtocol"] = request.outProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            body["StreamType"] = request.streamType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceLiveUrl",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceLiveUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceLiveUrl(_ request: GetDeviceLiveUrlRequest) async throws -> GetDeviceLiveUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceLiveUrlWithOptions(request as! GetDeviceLiveUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDevicePictureWithOptions(_ request: GetDevicePictureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDevicePictureResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDevicePicture",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDevicePictureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDevicePicture(_ request: GetDevicePictureRequest) async throws -> GetDevicePictureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDevicePictureWithOptions(request as! GetDevicePictureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceStatsWithOptions(_ request: GetDeviceStatsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceStatsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceStatus)) {
            body["DeviceStatus"] = request.deviceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceStats",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceStatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceStats(_ request: GetDeviceStatsRequest) async throws -> GetDeviceStatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceStatsWithOptions(request as! GetDeviceStatsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceVideoUrlWithOptions(_ request: GetDeviceVideoUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceVideoUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.gbId)) {
            body["GbId"] = request.gbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outProtocol)) {
            body["OutProtocol"] = request.outProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            body["StorageType"] = request.storageType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceVideoUrl",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceVideoUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceVideoUrl(_ request: GetDeviceVideoUrlRequest) async throws -> GetDeviceVideoUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDeviceVideoUrlWithOptions(request as! GetDeviceVideoUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFaceModelResultWithOptions(_ request: GetFaceModelResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFaceModelResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pictureContent)) {
            body["PictureContent"] = request.pictureContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pictureId)) {
            body["PictureId"] = request.pictureId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pictureUrl)) {
            body["PictureUrl"] = request.pictureUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFaceModelResult",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFaceModelResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFaceModelResult(_ request: GetFaceModelResultRequest) async throws -> GetFaceModelResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFaceModelResultWithOptions(request as! GetFaceModelResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFaceOptionsWithOptions(_ request: GetFaceOptionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFaceOptionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFaceOptions",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFaceOptionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFaceOptions(_ request: GetFaceOptionsRequest) async throws -> GetFaceOptionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFaceOptionsWithOptions(request as! GetFaceOptionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInventoryWithOptions(_ request: GetInventoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInventoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            body["CommodityCode"] = request.commodityCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInventory",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInventoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInventory(_ request: GetInventoryRequest) async throws -> GetInventoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInventoryWithOptions(request as! GetInventoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMonitorListWithOptions(_ request: GetMonitorListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMonitorListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
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
            "action": "GetMonitorList",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMonitorListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMonitorList(_ request: GetMonitorListRequest) async throws -> GetMonitorListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMonitorListWithOptions(request as! GetMonitorListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMonitorResultWithOptions(_ request: GetMonitorResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMonitorResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmVendor)) {
            body["AlgorithmVendor"] = request.algorithmVendor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.minRecordId)) {
            body["MinRecordId"] = request.minRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMonitorResult",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMonitorResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMonitorResult(_ request: GetMonitorResultRequest) async throws -> GetMonitorResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMonitorResultWithOptions(request as! GetMonitorResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPersonDetailWithOptions(_ request: GetPersonDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPersonDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmType)) {
            body["AlgorithmType"] = request.algorithmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personID)) {
            body["PersonID"] = request.personID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPersonDetail",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPersonDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPersonDetail(_ request: GetPersonDetailRequest) async throws -> GetPersonDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPersonDetailWithOptions(request as! GetPersonDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPersonListWithOptions(_ tmpReq: GetPersonListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPersonListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetPersonListShrinkRequest = GetPersonListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.corpIdList)) {
            request.corpIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.corpIdList, "CorpIdList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.personIdList)) {
            request.personIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.personIdList, "PersonIdList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpIdListShrink)) {
            body["CorpIdList"] = request.corpIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceMatchingRateThreshold)) {
            body["FaceMatchingRateThreshold"] = request.faceMatchingRateThreshold ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceUrl)) {
            body["FaceUrl"] = request.faceUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.personIdListShrink)) {
            body["PersonIdList"] = request.personIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPersonList",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPersonListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPersonList(_ request: GetPersonListRequest) async throws -> GetPersonListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPersonListWithOptions(request as! GetPersonListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPictureUrlWithOptions(_ request: GetPictureUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPictureUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            body["ExpireTime"] = request.expireTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originUrl)) {
            body["OriginUrl"] = request.originUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["Protocol"] = request.protocol_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPictureUrl",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPictureUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPictureUrl(_ request: GetPictureUrlRequest) async throws -> GetPictureUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPictureUrlWithOptions(request as! GetPictureUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProfileDetailWithOptions(_ request: GetProfileDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProfileDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileId)) {
            body["ProfileId"] = request.profileId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProfileDetail",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProfileDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProfileDetail(_ request: GetProfileDetailRequest) async throws -> GetProfileDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProfileDetailWithOptions(request as! GetProfileDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProfileListWithOptions(_ tmpReq: GetProfileListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProfileListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetProfileListShrinkRequest = GetProfileListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.personIdList)) {
            request.personIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.personIdList, "PersonIdList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.profileIdList)) {
            request.profileIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.profileIdList, "ProfileIdList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId!;
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceImageId)) {
            body["FaceImageId"] = request.faceImageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceUrl)) {
            body["FaceUrl"] = request.faceUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["Gender"] = request.gender!;
        }
        if (!TeaUtils.Client.isUnset(request.idNumber)) {
            body["IdNumber"] = request.idNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.liveAddress)) {
            body["LiveAddress"] = request.liveAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchingRateThreshold)) {
            body["MatchingRateThreshold"] = request.matchingRateThreshold ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.personIdListShrink)) {
            body["PersonIdList"] = request.personIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNo)) {
            body["PhoneNo"] = request.phoneNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.plateNo)) {
            body["PlateNo"] = request.plateNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileIdListShrink)) {
            body["ProfileIdList"] = request.profileIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneType)) {
            body["SceneType"] = request.sceneType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProfileList",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProfileListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProfileList(_ request: GetProfileListRequest) async throws -> GetProfileListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProfileListWithOptions(request as! GetProfileListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScanSubDevicesWithOptions(_ request: GetScanSubDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScanSubDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScanSubDevices",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScanSubDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScanSubDevices(_ request: GetScanSubDevicesRequest) async throws -> GetScanSubDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getScanSubDevicesWithOptions(request as! GetScanSubDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserDetailWithOptions(_ request: GetUserDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needFaceDetail)) {
            body["NeedFaceDetail"] = request.needFaceDetail!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserDetail",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserDetail(_ request: GetUserDetailRequest) async throws -> GetUserDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserDetailWithOptions(request as! GetUserDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoComposeResultWithOptions(_ request: GetVideoComposeResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoComposeResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskRequestId)) {
            body["TaskRequestId"] = request.taskRequestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVideoComposeResult",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoComposeResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoComposeResult(_ request: GetVideoComposeResultRequest) async throws -> GetVideoComposeResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVideoComposeResultWithOptions(request as! GetVideoComposeResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoSummaryTaskResultWithOptions(_ request: GetVideoSummaryTaskResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoSummaryTaskResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVideoSummaryTaskResult",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoSummaryTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoSummaryTaskResult(_ request: GetVideoSummaryTaskResultRequest) async throws -> GetVideoSummaryTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVideoSummaryTaskResultWithOptions(request as! GetVideoSummaryTaskResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeMotorModelWithOptions(_ request: InvokeMotorModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvokeMotorModelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picId)) {
            body["PicId"] = request.picId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picPath)) {
            body["PicPath"] = request.picPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picUrl)) {
            body["PicUrl"] = request.picUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvokeMotorModel",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvokeMotorModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeMotorModel(_ request: InvokeMotorModelRequest) async throws -> InvokeMotorModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await invokeMotorModelWithOptions(request as! InvokeMotorModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAccessNumberWithOptions(_ request: ListAccessNumberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAccessNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAccessNumber",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAccessNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAccessNumber(_ request: ListAccessNumberRequest) async throws -> ListAccessNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAccessNumberWithOptions(request as! ListAccessNumberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlgorithmNamesByDeviceIdsWithOptions(_ request: ListAlgorithmNamesByDeviceIdsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlgorithmNamesByDeviceIdsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlgorithmNamesByDeviceIds",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlgorithmNamesByDeviceIdsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlgorithmNamesByDeviceIds(_ request: ListAlgorithmNamesByDeviceIdsRequest) async throws -> ListAlgorithmNamesByDeviceIdsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAlgorithmNamesByDeviceIdsWithOptions(request as! ListAlgorithmNamesByDeviceIdsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBodyAlgorithmResultsWithOptions(_ request: ListBodyAlgorithmResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBodyAlgorithmResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmType)) {
            body["AlgorithmType"] = request.algorithmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.capStyle)) {
            body["CapStyle"] = request.capStyle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBodyAlgorithmResults",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBodyAlgorithmResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBodyAlgorithmResults(_ request: ListBodyAlgorithmResultsRequest) async throws -> ListBodyAlgorithmResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listBodyAlgorithmResultsWithOptions(request as! ListBodyAlgorithmResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCorpGroupMetricsWithOptions(_ request: ListCorpGroupMetricsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCorpGroupMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceGroup)) {
            body["DeviceGroup"] = request.deviceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagCode)) {
            body["TagCode"] = request.tagCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroup)) {
            body["UserGroup"] = request.userGroup ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCorpGroupMetrics",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCorpGroupMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCorpGroupMetrics(_ request: ListCorpGroupMetricsRequest) async throws -> ListCorpGroupMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCorpGroupMetricsWithOptions(request as! ListCorpGroupMetricsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCorpGroupsWithOptions(_ request: ListCorpGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCorpGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
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
            "action": "ListCorpGroups",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCorpGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCorpGroups(_ request: ListCorpGroupsRequest) async throws -> ListCorpGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCorpGroupsWithOptions(request as! ListCorpGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCorpMetricsWithOptions(_ request: ListCorpMetricsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCorpMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceGroupList)) {
            body["DeviceGroupList"] = request.deviceGroupList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceIdList)) {
            body["DeviceIdList"] = request.deviceIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagCode)) {
            body["TagCode"] = request.tagCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupList)) {
            body["UserGroupList"] = request.userGroupList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCorpMetrics",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCorpMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCorpMetrics(_ request: ListCorpMetricsRequest) async throws -> ListCorpMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCorpMetricsWithOptions(request as! ListCorpMetricsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCorpsWithOptions(_ request: ListCorpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCorpsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            body["CorpName"] = request.corpName ?? "";
        }
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
            "action": "ListCorps",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCorpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCorps(_ request: ListCorpsRequest) async throws -> ListCorpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCorpsWithOptions(request as! ListCorpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceGroupsWithOptions(_ request: ListDeviceGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeviceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceCodeList)) {
            body["DeviceCodeList"] = request.deviceCodeList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.group)) {
            body["Group"] = request.group ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isPage)) {
            body["IsPage"] = request.isPage!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeviceGroups",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeviceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceGroups(_ request: ListDeviceGroupsRequest) async throws -> ListDeviceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDeviceGroupsWithOptions(request as! ListDeviceGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDevicesWithOptions(_ request: ListDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gbId)) {
            body["GbId"] = request.gbId ?? "";
        }
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
            "action": "ListDevices",
            "version": "2020-05-15",
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
    public func listEventAlgorithmDetailsWithOptions(_ request: ListEventAlgorithmDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventAlgorithmDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            body["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventValue)) {
            body["EventValue"] = request.eventValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendValue)) {
            body["ExtendValue"] = request.extendValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.recordId)) {
            body["RecordId"] = request.recordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventAlgorithmDetails",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventAlgorithmDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventAlgorithmDetails(_ request: ListEventAlgorithmDetailsRequest) async throws -> ListEventAlgorithmDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventAlgorithmDetailsWithOptions(request as! ListEventAlgorithmDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventAlgorithmResultsWithOptions(_ request: ListEventAlgorithmResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventAlgorithmResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            body["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendValue)) {
            body["ExtendValue"] = request.extendValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventAlgorithmResults",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventAlgorithmResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventAlgorithmResults(_ request: ListEventAlgorithmResultsRequest) async throws -> ListEventAlgorithmResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventAlgorithmResultsWithOptions(request as! ListEventAlgorithmResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFaceAlgorithmResultsWithOptions(_ request: ListFaceAlgorithmResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFaceAlgorithmResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmType)) {
            body["AlgorithmType"] = request.algorithmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFaceAlgorithmResults",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFaceAlgorithmResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFaceAlgorithmResults(_ request: ListFaceAlgorithmResultsRequest) async throws -> ListFaceAlgorithmResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFaceAlgorithmResultsWithOptions(request as! ListFaceAlgorithmResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithOptions(_ request: ListInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstances",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstances(_ request: ListInstancesRequest) async throws -> ListInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstancesWithOptions(request as! ListInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMetricsWithOptions(_ request: ListMetricsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregateType)) {
            body["AggregateType"] = request.aggregateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagCode)) {
            body["TagCode"] = request.tagCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMetrics",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMetrics(_ request: ListMetricsRequest) async throws -> ListMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMetricsWithOptions(request as! ListMetricsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMotorAlgorithmResultsWithOptions(_ request: ListMotorAlgorithmResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMotorAlgorithmResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmType)) {
            body["AlgorithmType"] = request.algorithmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.plateNumber)) {
            body["PlateNumber"] = request.plateNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMotorAlgorithmResults",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMotorAlgorithmResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMotorAlgorithmResults(_ request: ListMotorAlgorithmResultsRequest) async throws -> ListMotorAlgorithmResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMotorAlgorithmResultsWithOptions(request as! ListMotorAlgorithmResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNVRChannelDeviceWithOptions(_ request: ListNVRChannelDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNVRChannelDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceCode)) {
            body["DeviceCode"] = request.deviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isPage)) {
            body["IsPage"] = request.isPage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNVRChannelDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNVRChannelDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNVRChannelDevice(_ request: ListNVRChannelDeviceRequest) async throws -> ListNVRChannelDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNVRChannelDeviceWithOptions(request as! ListNVRChannelDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNVRDeviceWithOptions(_ request: ListNVRDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNVRDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpIdList)) {
            body["CorpIdList"] = request.corpIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceCode)) {
            body["DeviceCode"] = request.deviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isPage)) {
            body["IsPage"] = request.isPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNVRDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNVRDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNVRDevice(_ request: ListNVRDeviceRequest) async throws -> ListNVRDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNVRDeviceWithOptions(request as! ListNVRDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersonTraceWithOptions(_ request: ListPersonTraceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPersonTraceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personId)) {
            body["PersonId"] = request.personId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPersonTrace",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPersonTraceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersonTrace(_ request: ListPersonTraceRequest) async throws -> ListPersonTraceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPersonTraceWithOptions(request as! ListPersonTraceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersonTraceDetailsWithOptions(_ request: ListPersonTraceDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPersonTraceDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.personId)) {
            body["PersonId"] = request.personId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subId)) {
            body["SubId"] = request.subId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPersonTraceDetails",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPersonTraceDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersonTraceDetails(_ request: ListPersonTraceDetailsRequest) async throws -> ListPersonTraceDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPersonTraceDetailsWithOptions(request as! ListPersonTraceDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersonVisitCountWithOptions(_ request: ListPersonVisitCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPersonVisitCountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregateType)) {
            body["AggregateType"] = request.aggregateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countType)) {
            body["CountType"] = request.countType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxVal)) {
            body["MaxVal"] = request.maxVal!;
        }
        if (!TeaUtils.Client.isUnset(request.minVal)) {
            body["MinVal"] = request.minVal!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagCode)) {
            body["TagCode"] = request.tagCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeAggregateType)) {
            body["TimeAggregateType"] = request.timeAggregateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPersonVisitCount",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPersonVisitCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersonVisitCount(_ request: ListPersonVisitCountRequest) async throws -> ListPersonVisitCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPersonVisitCountWithOptions(request as! ListPersonVisitCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersonsWithOptions(_ request: ListPersonsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPersonsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmType)) {
            body["AlgorithmType"] = request.algorithmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            body["PageNo"] = request.pageNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPersons",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPersonsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPersons(_ request: ListPersonsRequest) async throws -> ListPersonsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPersonsWithOptions(request as! ListPersonsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroupsWithOptions(_ request: ListUserGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            query["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            query["IsvSubId"] = request.isvSubId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserGroups",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroups(_ request: ListUserGroupsRequest) async throws -> ListUserGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserGroupsWithOptions(request as! ListUserGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ tmpReq: ListUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListUsersShrinkRequest = ListUsersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.personList)) {
            request.personListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.personList, "PersonList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userList)) {
            request.userListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userList, "UserList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            body["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.age)) {
            body["Age"] = request.age!;
        }
        if (!TeaUtils.Client.isUnset(request.attachment)) {
            body["Attachment"] = request.attachment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceImageUrl)) {
            body["FaceImageUrl"] = request.faceImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["Gender"] = request.gender!;
        }
        if (!TeaUtils.Client.isUnset(request.idNumber)) {
            body["IdNumber"] = request.idNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchingRateThreshold)) {
            body["MatchingRateThreshold"] = request.matchingRateThreshold ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.personListShrink)) {
            body["PersonList"] = request.personListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNo)) {
            body["PhoneNo"] = request.phoneNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.plateNo)) {
            body["PlateNo"] = request.plateNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["UserGroupId"] = request.userGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.userListShrink)) {
            body["UserList"] = request.userListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsers(_ request: ListUsersRequest) async throws -> ListUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUsersWithOptions(request as! ListUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDeviceWithOptions(_ request: ModifyDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.audioEnable)) {
            body["AudioEnable"] = request.audioEnable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceAddress)) {
            body["DeviceAddress"] = request.deviceAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceDirection)) {
            body["DeviceDirection"] = request.deviceDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceIp)) {
            body["DeviceIp"] = request.deviceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceModel)) {
            body["DeviceModel"] = request.deviceModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceRate)) {
            body["DeviceRate"] = request.deviceRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceResolution)) {
            body["DeviceResolution"] = request.deviceResolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceSite)) {
            body["DeviceSite"] = request.deviceSite ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceSubType)) {
            body["DeviceSubType"] = request.deviceSubType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encodeFormat)) {
            body["EncodeFormat"] = request.encodeFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.frameRate)) {
            body["FrameRate"] = request.frameRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.govLength)) {
            body["GovLength"] = request.govLength ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latitude)) {
            body["Latitude"] = request.latitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.longitude)) {
            body["Longitude"] = request.longitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeEnable)) {
            body["OSDTimeEnable"] = request.OSDTimeEnable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeType)) {
            body["OSDTimeType"] = request.OSDTimeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeX)) {
            body["OSDTimeX"] = request.OSDTimeX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSDTimeY)) {
            body["OSDTimeY"] = request.OSDTimeY ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDevice(_ request: ModifyDeviceRequest) async throws -> ModifyDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDeviceWithOptions(request as! ModifyDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func peekNvrWithOptions(_ request: PeekNvrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PeekNvrResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PeekNvr",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PeekNvrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func peekNvr(_ request: PeekNvrRequest) async throws -> PeekNvrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await peekNvrWithOptions(request as! PeekNvrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func raiseDevicesStorageWithOptions(_ request: RaiseDevicesStorageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RaiseDevicesStorageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.json)) {
            body["Json"] = request.json ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RaiseDevicesStorage",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RaiseDevicesStorageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func raiseDevicesStorage(_ request: RaiseDevicesStorageRequest) async throws -> RaiseDevicesStorageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await raiseDevicesStorageWithOptions(request as! RaiseDevicesStorageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeFaceQualityWithOptions(_ request: RecognizeFaceQualityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeFaceQualityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picContent)) {
            body["PicContent"] = request.picContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picFormat)) {
            body["PicFormat"] = request.picFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picUrl)) {
            body["PicUrl"] = request.picUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeFaceQuality",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeFaceQualityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeFaceQuality(_ request: RecognizeFaceQualityRequest) async throws -> RecognizeFaceQualityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeFaceQualityWithOptions(request as! RecognizeFaceQualityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeImageWithOptions(_ request: RecognizeImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picContent)) {
            body["PicContent"] = request.picContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picFormat)) {
            body["PicFormat"] = request.picFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picUrl)) {
            body["PicUrl"] = request.picUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeImage",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeImage(_ request: RecognizeImageRequest) async throws -> RecognizeImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeImageWithOptions(request as! RecognizeImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerDeviceWithOptions(_ request: RegisterDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceSn)) {
            body["DeviceSn"] = request.deviceSn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceTimeStamp)) {
            body["DeviceTimeStamp"] = request.deviceTimeStamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverId)) {
            body["ServerId"] = request.serverId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
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
    public func removeCameraForInstanceWithOptions(_ tmpReq: RemoveCameraForInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveCameraForInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveCameraForInstanceShrinkRequest = RemoveCameraForInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cameraIds)) {
            request.cameraIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cameraIds, "CameraIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cameraIdsShrink)) {
            body["CameraIds"] = request.cameraIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveCameraForInstance",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveCameraForInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeCameraForInstance(_ request: RemoveCameraForInstanceRequest) async throws -> RemoveCameraForInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeCameraForInstanceWithOptions(request as! RemoveCameraForInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSearchItemsWithOptions(_ request: RemoveSearchItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveSearchItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.searchItemIds)) {
            body["SearchItemIds"] = request.searchItemIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchTableId)) {
            body["SearchTableId"] = request.searchTableId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveSearchItems",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveSearchItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSearchItems(_ request: RemoveSearchItemsRequest) async throws -> RemoveSearchItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeSearchItemsWithOptions(request as! RemoveSearchItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeWatchItemsWithOptions(_ request: RemoveWatchItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveWatchItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.watchItemIds)) {
            body["WatchItemIds"] = request.watchItemIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watchPolicyId)) {
            body["WatchPolicyId"] = request.watchPolicyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveWatchItems",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveWatchItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeWatchItems(_ request: RemoveWatchItemsRequest) async throws -> RemoveWatchItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeWatchItemsWithOptions(request as! RemoveWatchItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveVideoSummaryTaskVideoWithOptions(_ request: SaveVideoSummaryTaskVideoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveVideoSummaryTaskVideoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saveVideo)) {
            body["SaveVideo"] = request.saveVideo!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveVideoSummaryTaskVideo",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveVideoSummaryTaskVideoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveVideoSummaryTaskVideo(_ request: SaveVideoSummaryTaskVideoRequest) async throws -> SaveVideoSummaryTaskVideoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveVideoSummaryTaskVideoWithOptions(request as! SaveVideoSummaryTaskVideoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scanSubDeviceWithOptions(_ request: ScanSubDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScanSubDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScanSubDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScanSubDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scanSubDevice(_ request: ScanSubDeviceRequest) async throws -> ScanSubDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await scanSubDeviceWithOptions(request as! ScanSubDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchBodyWithOptions(_ tmpReq: SearchBodyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchBodyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchBodyShrinkRequest = SearchBodyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.optionList)) {
            request.optionListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.optionList, "OptionList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTimeStamp)) {
            body["EndTimeStamp"] = request.endTimeStamp!;
        }
        if (!TeaUtils.Client.isUnset(request.gbId)) {
            body["GbId"] = request.gbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionListShrink)) {
            body["OptionList"] = request.optionListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            body["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTimeStamp)) {
            body["StartTimeStamp"] = request.startTimeStamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchBody",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchBodyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchBody(_ request: SearchBodyRequest) async throws -> SearchBodyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchBodyWithOptions(request as! SearchBodyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchFaceWithOptions(_ tmpReq: SearchFaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchFaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchFaceShrinkRequest = SearchFaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.optionList)) {
            request.optionListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.optionList, "OptionList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTimeStamp)) {
            body["EndTimeStamp"] = request.endTimeStamp!;
        }
        if (!TeaUtils.Client.isUnset(request.gbId)) {
            body["GbId"] = request.gbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionListShrink)) {
            body["OptionList"] = request.optionListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            body["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTimeStamp)) {
            body["StartTimeStamp"] = request.startTimeStamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchFace",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchFaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchFace(_ request: SearchFaceRequest) async throws -> SearchFaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchFaceWithOptions(request as! SearchFaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchItemWithOptions(_ request: SearchItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.itemImageData)) {
            body["ItemImageData"] = request.itemImageData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemImageUrl)) {
            body["ItemImageUrl"] = request.itemImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchTableIds)) {
            body["SearchTableIds"] = request.searchTableIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.similarityThreshold)) {
            body["SimilarityThreshold"] = request.similarityThreshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchItem",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchItem(_ request: SearchItemRequest) async throws -> SearchItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchItemWithOptions(request as! SearchItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchObjectWithOptions(_ tmpReq: SearchObjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchObjectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchObjectShrinkRequest = SearchObjectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.conditions)) {
            request.conditionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.conditions, "Conditions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.deviceList)) {
            request.deviceListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deviceList, "DeviceList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.imagePath)) {
            request.imagePathShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.imagePath, "ImagePath", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmType)) {
            body["AlgorithmType"] = request.algorithmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conditionsShrink)) {
            body["Conditions"] = request.conditionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceListShrink)) {
            body["DeviceList"] = request.deviceListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.imagePathShrink)) {
            body["ImagePath"] = request.imagePathShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            body["ObjectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.picUrl)) {
            body["PicUrl"] = request.picUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchObject",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchObjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchObject(_ request: SearchObjectRequest) async throws -> SearchObjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchObjectWithOptions(request as! SearchObjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchTargetWithOptions(_ request: SearchTargetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            body["BeginTime"] = request.beginTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceList)) {
            body["DeviceList"] = request.deviceList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["ModelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            body["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.similarityThreshold)) {
            body["SimilarityThreshold"] = request.similarityThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.targetAttributes)) {
            body["TargetAttributes"] = request.targetAttributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetImageData)) {
            body["TargetImageData"] = request.targetImageData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetImageUrl)) {
            body["TargetImageUrl"] = request.targetImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            body["TargetType"] = request.targetType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchTarget",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchTarget(_ request: SearchTargetRequest) async throws -> SearchTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchTargetWithOptions(request as! SearchTargetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAiotStorageInfoWithOptions(_ tmpReq: SetAiotStorageInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetAiotStorageInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetAiotStorageInfoShrinkRequest = SetAiotStorageInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.eventAlarmMq)) {
            request.eventAlarmMqShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventAlarmMq, "EventAlarmMq", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.eventAlarmPictureStorage)) {
            request.eventAlarmPictureStorageShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventAlarmPictureStorage, "EventAlarmPictureStorage", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventAlarmMqShrink)) {
            body["EventAlarmMq"] = request.eventAlarmMqShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventAlarmPictureStorageShrink)) {
            body["EventAlarmPictureStorage"] = request.eventAlarmPictureStorageShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetAiotStorageInfo",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetAiotStorageInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAiotStorageInfo(_ request: SetAiotStorageInfoRequest) async throws -> SetAiotStorageInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setAiotStorageInfoWithOptions(request as! SetAiotStorageInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setStreamModeWithOptions(_ request: SetStreamModeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetStreamModeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceIdList)) {
            body["DeviceIdList"] = request.deviceIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamMode)) {
            body["StreamMode"] = request.streamMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetStreamMode",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetStreamModeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setStreamMode(_ request: SetStreamModeRequest) async throws -> SetStreamModeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setStreamModeWithOptions(request as! SetStreamModeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startModelServiceWithOptions(_ request: StartModelServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartModelServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelServiceId)) {
            body["ModelServiceId"] = request.modelServiceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartModelService",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartModelServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startModelService(_ request: StartModelServiceRequest) async throws -> StartModelServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startModelServiceWithOptions(request as! StartModelServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startStreamsWithOptions(_ request: StartStreamsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartStreamsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceIdList)) {
            body["DeviceIdList"] = request.deviceIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartStreams",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartStreamsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startStreams(_ request: StartStreamsRequest) async throws -> StartStreamsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startStreamsWithOptions(request as! StartStreamsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopModelServiceWithOptions(_ request: StopModelServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopModelServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelServiceId)) {
            body["ModelServiceId"] = request.modelServiceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopModelService",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopModelServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopModelService(_ request: StopModelServiceRequest) async throws -> StopModelServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopModelServiceWithOptions(request as! StopModelServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMonitorWithOptions(_ request: StopMonitorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmVendor)) {
            body["AlgorithmVendor"] = request.algorithmVendor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopMonitor",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMonitor(_ request: StopMonitorRequest) async throws -> StopMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopMonitorWithOptions(request as! StopMonitorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopStreamsWithOptions(_ request: StopStreamsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopStreamsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceIdList)) {
            body["DeviceIdList"] = request.deviceIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopStreams",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopStreamsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopStreams(_ request: StopStreamsRequest) async throws -> StopStreamsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopStreamsWithOptions(request as! StopStreamsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncDeviceTimeWithOptions(_ request: SyncDeviceTimeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncDeviceTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceSn)) {
            body["DeviceSn"] = request.deviceSn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceTimeStamp)) {
            body["DeviceTimeStamp"] = request.deviceTimeStamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncDeviceTime",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncDeviceTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncDeviceTime(_ request: SyncDeviceTimeRequest) async throws -> SyncDeviceTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncDeviceTimeWithOptions(request as! SyncDeviceTimeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tryCreateAIInstanceWithOptions(_ tmpReq: TryCreateAIInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TryCreateAIInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TryCreateAIInstanceShrinkRequest = TryCreateAIInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataSourceTimes)) {
            request.dataSourceTimesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataSourceTimes, "DataSourceTimes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.scheduleCycleDates)) {
            request.scheduleCycleDatesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scheduleCycleDates, "ScheduleCycleDates", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.scheduleTimes)) {
            request.scheduleTimesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scheduleTimes, "ScheduleTimes", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmId)) {
            body["AlgorithmId"] = request.algorithmId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cameraNumber)) {
            body["CameraNumber"] = request.cameraNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.computeType)) {
            body["ComputeType"] = request.computeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSource)) {
            body["DataSource"] = request.dataSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceTimesShrink)) {
            body["DataSourceTimes"] = request.dataSourceTimesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            body["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fps)) {
            body["Fps"] = request.fps!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleCycleDatesShrink)) {
            body["ScheduleCycleDates"] = request.scheduleCycleDatesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTimesShrink)) {
            body["ScheduleTimes"] = request.scheduleTimesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleType)) {
            body["ScheduleType"] = request.scheduleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spf)) {
            body["Spf"] = request.spf!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TryCreateAIInstance",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TryCreateAIInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tryCreateAIInstance(_ request: TryCreateAIInstanceRequest) async throws -> TryCreateAIInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tryCreateAIInstanceWithOptions(request as! TryCreateAIInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindCorpGroupWithOptions(_ request: UnbindCorpGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindCorpGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpGroupId)) {
            body["CorpGroupId"] = request.corpGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindCorpGroup",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindCorpGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindCorpGroup(_ request: UnbindCorpGroupRequest) async throws -> UnbindCorpGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindCorpGroupWithOptions(request as! UnbindCorpGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindDevicesWithOptions(_ request: UnbindDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDeviceIdList)) {
            body["SubDeviceIdList"] = request.subDeviceIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindDevices",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindDevices(_ request: UnbindDevicesRequest) async throws -> UnbindDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindDevicesWithOptions(request as! UnbindDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindPersonWithOptions(_ request: UnbindPersonRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindPersonResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileId)) {
            body["ProfileId"] = request.profileId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindPerson",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindPersonResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindPerson(_ request: UnbindPersonRequest) async throws -> UnbindPersonResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindPersonWithOptions(request as! UnbindPersonRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindUserWithOptions(_ request: UnbindUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindUser",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindUser(_ request: UnbindUserRequest) async throws -> UnbindUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindUserWithOptions(request as! UnbindUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAiotDeviceWithOptions(_ tmpReq: UpdateAiotDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAiotDeviceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAiotDeviceShrinkRequest = UpdateAiotDeviceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.aiotDevice)) {
            request.aiotDeviceShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.aiotDevice, "AiotDevice", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aiotDeviceShrink)) {
            body["AiotDevice"] = request.aiotDeviceShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAiotDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAiotDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAiotDevice(_ request: UpdateAiotDeviceRequest) async throws -> UpdateAiotDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAiotDeviceWithOptions(request as! UpdateAiotDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAiotPersonTableWithOptions(_ request: UpdateAiotPersonTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAiotPersonTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.personTable)) {
            bodyFlat["PersonTable"] = request.personTable!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAiotPersonTable",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAiotPersonTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAiotPersonTable(_ request: UpdateAiotPersonTableRequest) async throws -> UpdateAiotPersonTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAiotPersonTableWithOptions(request as! UpdateAiotPersonTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAiotPersonTableItemWithOptions(_ request: UpdateAiotPersonTableItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAiotPersonTableItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personTableId)) {
            body["PersonTableId"] = request.personTableId ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.personTableItem)) {
            bodyFlat["PersonTableItem"] = request.personTableItem!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAiotPersonTableItem",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAiotPersonTableItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAiotPersonTableItem(_ request: UpdateAiotPersonTableItemRequest) async throws -> UpdateAiotPersonTableItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAiotPersonTableItemWithOptions(request as! UpdateAiotPersonTableItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAiotVehicleTableItemWithOptions(_ tmpReq: UpdateAiotVehicleTableItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAiotVehicleTableItemResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAiotVehicleTableItemShrinkRequest = UpdateAiotVehicleTableItemShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.vehicleTableItem)) {
            request.vehicleTableItemShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.vehicleTableItem, "VehicleTableItem", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleTableId)) {
            body["VehicleTableId"] = request.vehicleTableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleTableItemShrink)) {
            body["VehicleTableItem"] = request.vehicleTableItemShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAiotVehicleTableItem",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAiotVehicleTableItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAiotVehicleTableItem(_ request: UpdateAiotVehicleTableItemRequest) async throws -> UpdateAiotVehicleTableItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAiotVehicleTableItemWithOptions(request as! UpdateAiotVehicleTableItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCorpWithOptions(_ request: UpdateCorpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCorpResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            body["CorpName"] = request.corpName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconPath)) {
            body["IconPath"] = request.iconPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentCorpId)) {
            body["ParentCorpId"] = request.parentCorpId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCorp",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCorpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCorp(_ request: UpdateCorpRequest) async throws -> UpdateCorpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCorpWithOptions(request as! UpdateCorpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSourceWithOptions(_ request: UpdateDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceName)) {
            body["DataSourceName"] = request.dataSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataSource",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSource(_ request: UpdateDataSourceRequest) async throws -> UpdateDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataSourceWithOptions(request as! UpdateDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeviceWithOptions(_ request: UpdateDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bitRate)) {
            body["BitRate"] = request.bitRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceAddress)) {
            body["DeviceAddress"] = request.deviceAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceDirection)) {
            body["DeviceDirection"] = request.deviceDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceResolution)) {
            body["DeviceResolution"] = request.deviceResolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceSite)) {
            body["DeviceSite"] = request.deviceSite ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gbId)) {
            body["GbId"] = request.gbId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDevice",
            "version": "2020-05-15",
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
    public func updateDeviceCaptureStrategyWithOptions(_ request: UpdateDeviceCaptureStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeviceCaptureStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceCode)) {
            body["DeviceCode"] = request.deviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mondayCaptureStrategy)) {
            body["MondayCaptureStrategy"] = request.mondayCaptureStrategy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDeviceCaptureStrategy",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDeviceCaptureStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeviceCaptureStrategy(_ request: UpdateDeviceCaptureStrategyRequest) async throws -> UpdateDeviceCaptureStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDeviceCaptureStrategyWithOptions(request as! UpdateDeviceCaptureStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDevicesStorageWithOptions(_ tmpReq: UpdateDevicesStorageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDevicesStorageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateDevicesStorageShrinkRequest = UpdateDevicesStorageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateStorageRequests)) {
            request.updateStorageRequestsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateStorageRequests, "UpdateStorageRequests", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateStorageRequestsShrink)) {
            body["UpdateStorageRequests"] = request.updateStorageRequestsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDevicesStorage",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDevicesStorageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDevicesStorage(_ request: UpdateDevicesStorageRequest) async throws -> UpdateDevicesStorageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDevicesStorageWithOptions(request as! UpdateDevicesStorageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDoubleVerificationGroupWithOptions(_ request: UpdateDoubleVerificationGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDoubleVerificationGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.doubleVerificationGroup)) {
            bodyFlat["DoubleVerificationGroup"] = request.doubleVerificationGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDoubleVerificationGroup",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDoubleVerificationGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDoubleVerificationGroup(_ request: UpdateDoubleVerificationGroupRequest) async throws -> UpdateDoubleVerificationGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDoubleVerificationGroupWithOptions(request as! UpdateDoubleVerificationGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelServiceWithOptions(_ request: UpdateModelServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateModelServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelServiceId)) {
            body["ModelServiceId"] = request.modelServiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelServiceName)) {
            body["ModelServiceName"] = request.modelServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qpsRequired)) {
            body["QpsRequired"] = request.qpsRequired!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateModelService",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateModelServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelService(_ request: UpdateModelServiceRequest) async throws -> UpdateModelServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateModelServiceWithOptions(request as! UpdateModelServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMonitorWithOptions(_ request: UpdateMonitorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithmVendor)) {
            body["AlgorithmVendor"] = request.algorithmVendor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attributeName)) {
            body["AttributeName"] = request.attributeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attributeOperateType)) {
            body["AttributeOperateType"] = request.attributeOperateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attributeValueList)) {
            body["AttributeValueList"] = request.attributeValueList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceList)) {
            body["DeviceList"] = request.deviceList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceOperateType)) {
            body["DeviceOperateType"] = request.deviceOperateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifierAppSecret)) {
            body["NotifierAppSecret"] = request.notifierAppSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifierExtendValues)) {
            body["NotifierExtendValues"] = request.notifierExtendValues ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifierTimeOut)) {
            body["NotifierTimeOut"] = request.notifierTimeOut!;
        }
        if (!TeaUtils.Client.isUnset(request.notifierType)) {
            body["NotifierType"] = request.notifierType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifierUrl)) {
            body["NotifierUrl"] = request.notifierUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picList)) {
            body["PicList"] = request.picList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picOperateType)) {
            body["PicOperateType"] = request.picOperateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleExpression)) {
            body["RuleExpression"] = request.ruleExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            body["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMonitor",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMonitor(_ request: UpdateMonitorRequest) async throws -> UpdateMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMonitorWithOptions(request as! UpdateMonitorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProfileWithOptions(_ request: UpdateProfileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProfileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId!;
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceUrl)) {
            body["FaceUrl"] = request.faceUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["Gender"] = request.gender!;
        }
        if (!TeaUtils.Client.isUnset(request.idNumber)) {
            body["IdNumber"] = request.idNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.liveAddress)) {
            body["LiveAddress"] = request.liveAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNo)) {
            body["PhoneNo"] = request.phoneNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.plateNo)) {
            body["PlateNo"] = request.plateNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileId)) {
            body["ProfileId"] = request.profileId!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneType)) {
            body["SceneType"] = request.sceneType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProfile",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProfileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProfile(_ request: UpdateProfileRequest) async throws -> UpdateProfileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateProfileWithOptions(request as! UpdateProfileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProfileCatalogWithOptions(_ request: UpdateProfileCatalogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProfileCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId!;
        }
        if (!TeaUtils.Client.isUnset(request.catalogName)) {
            body["CatalogName"] = request.catalogName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProfileCatalog",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProfileCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProfileCatalog(_ request: UpdateProfileCatalogRequest) async throws -> UpdateProfileCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateProfileCatalogWithOptions(request as! UpdateProfileCatalogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSearchTableWithOptions(_ request: UpdateSearchTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSearchTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.searchTableId)) {
            body["SearchTableId"] = request.searchTableId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchTableName)) {
            body["SearchTableName"] = request.searchTableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSearchTable",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSearchTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSearchTable(_ request: UpdateSearchTableRequest) async throws -> UpdateSearchTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSearchTableWithOptions(request as! UpdateSearchTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserWithOptions(_ request: UpdateUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            body["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.age)) {
            body["Age"] = request.age!;
        }
        if (!TeaUtils.Client.isUnset(request.attachment)) {
            body["Attachment"] = request.attachment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceImageContent)) {
            body["FaceImageContent"] = request.faceImageContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceImageUrl)) {
            body["FaceImageUrl"] = request.faceImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["Gender"] = request.gender!;
        }
        if (!TeaUtils.Client.isUnset(request.idNumber)) {
            body["IdNumber"] = request.idNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNo)) {
            body["PhoneNo"] = request.phoneNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.plateNo)) {
            body["PlateNo"] = request.plateNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["UserGroupId"] = request.userGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId!;
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUser",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUser(_ request: UpdateUserRequest) async throws -> UpdateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserWithOptions(request as! UpdateUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGroupWithOptions(_ request: UpdateUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvSubId)) {
            body["IsvSubId"] = request.isvSubId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["UserGroupId"] = request.userGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.userGroupName)) {
            body["UserGroupName"] = request.userGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserGroup",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGroup(_ request: UpdateUserGroupRequest) async throws -> UpdateUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserGroupWithOptions(request as! UpdateUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWatchPolicyWithOptions(_ request: UpdateWatchPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWatchPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.itemMatchType)) {
            body["ItemMatchType"] = request.itemMatchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.similarityThreshold)) {
            body["SimilarityThreshold"] = request.similarityThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            body["TargetType"] = request.targetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watchMode)) {
            body["WatchMode"] = request.watchMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watchPolicyId)) {
            body["WatchPolicyId"] = request.watchPolicyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watchPolicyName)) {
            body["WatchPolicyName"] = request.watchPolicyName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWatchPolicy",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWatchPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWatchPolicy(_ request: UpdateWatchPolicyRequest) async throws -> UpdateWatchPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWatchPolicyWithOptions(request as! UpdateWatchPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWatchTaskWithOptions(_ request: UpdateWatchTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWatchTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceList)) {
            body["DeviceList"] = request.deviceList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageReceiver)) {
            body["MessageReceiver"] = request.messageReceiver ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleCycleDates)) {
            body["ScheduleCycleDates"] = request.scheduleCycleDates ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTimes)) {
            body["ScheduleTimes"] = request.scheduleTimes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleType)) {
            body["ScheduleType"] = request.scheduleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watchPolicyIds)) {
            body["WatchPolicyIds"] = request.watchPolicyIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watchTaskId)) {
            body["WatchTaskId"] = request.watchTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWatchTask",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWatchTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWatchTask(_ request: UpdateWatchTaskRequest) async throws -> UpdateWatchTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWatchTaskWithOptions(request as! UpdateWatchTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadFileWithOptions(_ request: UploadFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadFileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            body["CorpId"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileAliasName)) {
            body["FileAliasName"] = request.fileAliasName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileContent)) {
            body["FileContent"] = request.fileContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            body["FileType"] = request.fileType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.MD5)) {
            body["MD5"] = request.MD5 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadFile",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadFile(_ request: UploadFileRequest) async throws -> UploadFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadFileWithOptions(request as! UploadFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadImageWithOptions(_ request: UploadImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadImage",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadImage(_ request: UploadImageRequest) async throws -> UploadImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadImageWithOptions(request as! UploadImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyDeviceWithOptions(_ request: VerifyDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceAddress)) {
            body["DeviceAddress"] = request.deviceAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nvrExisted)) {
            body["NvrExisted"] = request.nvrExisted!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyDevice",
            "version": "2020-05-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyDevice(_ request: VerifyDeviceRequest) async throws -> VerifyDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyDeviceWithOptions(request as! VerifyDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
