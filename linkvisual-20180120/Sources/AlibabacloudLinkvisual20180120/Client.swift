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
            "ap-northeast-1": "linkvisual.aliyuncs.com",
            "ap-northeast-2-pop": "linkvisual.aliyuncs.com",
            "ap-south-1": "linkvisual.aliyuncs.com",
            "ap-southeast-1": "linkvisual.aliyuncs.com",
            "ap-southeast-2": "linkvisual.aliyuncs.com",
            "ap-southeast-3": "linkvisual.aliyuncs.com",
            "ap-southeast-5": "linkvisual.aliyuncs.com",
            "cn-beijing": "linkvisual.aliyuncs.com",
            "cn-beijing-finance-1": "linkvisual.aliyuncs.com",
            "cn-beijing-finance-pop": "linkvisual.aliyuncs.com",
            "cn-beijing-gov-1": "linkvisual.aliyuncs.com",
            "cn-beijing-nu16-b01": "linkvisual.aliyuncs.com",
            "cn-chengdu": "linkvisual.aliyuncs.com",
            "cn-edge-1": "linkvisual.aliyuncs.com",
            "cn-fujian": "linkvisual.aliyuncs.com",
            "cn-haidian-cm12-c01": "linkvisual.aliyuncs.com",
            "cn-hangzhou-bj-b01": "linkvisual.aliyuncs.com",
            "cn-hangzhou-finance": "linkvisual.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "linkvisual.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "linkvisual.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "linkvisual.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "linkvisual.aliyuncs.com",
            "cn-hangzhou-test-306": "linkvisual.aliyuncs.com",
            "cn-hongkong": "linkvisual.aliyuncs.com",
            "cn-hongkong-finance-pop": "linkvisual.aliyuncs.com",
            "cn-huhehaote": "linkvisual.aliyuncs.com",
            "cn-north-2-gov-1": "linkvisual.aliyuncs.com",
            "cn-qingdao": "linkvisual.aliyuncs.com",
            "cn-qingdao-nebula": "linkvisual.aliyuncs.com",
            "cn-shanghai-et15-b01": "linkvisual.aliyuncs.com",
            "cn-shanghai-et2-b01": "linkvisual.aliyuncs.com",
            "cn-shanghai-finance-1": "linkvisual.aliyuncs.com",
            "cn-shanghai-inner": "linkvisual.aliyuncs.com",
            "cn-shanghai-internal-test-1": "linkvisual.aliyuncs.com",
            "cn-shenzhen": "linkvisual.aliyuncs.com",
            "cn-shenzhen-finance-1": "linkvisual.aliyuncs.com",
            "cn-shenzhen-inner": "linkvisual.aliyuncs.com",
            "cn-shenzhen-st4-d01": "linkvisual.aliyuncs.com",
            "cn-shenzhen-su18-b01": "linkvisual.aliyuncs.com",
            "cn-wuhan": "linkvisual.aliyuncs.com",
            "cn-yushanfang": "linkvisual.aliyuncs.com",
            "cn-zhangbei-na61-b01": "linkvisual.aliyuncs.com",
            "cn-zhangjiakou": "linkvisual.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "linkvisual.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "linkvisual.aliyuncs.com",
            "eu-central-1": "linkvisual.aliyuncs.com",
            "eu-west-1": "linkvisual.aliyuncs.com",
            "eu-west-1-oxs": "linkvisual.aliyuncs.com",
            "me-east-1": "linkvisual.aliyuncs.com",
            "rus-west-1-pop": "linkvisual.aliyuncs.com",
            "us-east-1": "linkvisual.aliyuncs.com",
            "us-west-1": "linkvisual.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("linkvisual", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addEventRecordPlanDeviceWithOptions(_ request: AddEventRecordPlanDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddEventRecordPlanDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddEventRecordPlanDevice",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddEventRecordPlanDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addEventRecordPlanDevice(_ request: AddEventRecordPlanDeviceRequest) async throws -> AddEventRecordPlanDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addEventRecordPlanDeviceWithOptions(request as! AddEventRecordPlanDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceDeviceGroupWithOptions(_ request: AddFaceDeviceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddFaceDeviceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceGroupName)) {
            query["DeviceGroupName"] = request.deviceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddFaceDeviceGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddFaceDeviceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceDeviceGroup(_ request: AddFaceDeviceGroupRequest) async throws -> AddFaceDeviceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addFaceDeviceGroupWithOptions(request as! AddFaceDeviceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceDeviceToDeviceGroupWithOptions(_ request: AddFaceDeviceToDeviceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddFaceDeviceToDeviceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceGroupId)) {
            query["DeviceGroupId"] = request.deviceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddFaceDeviceToDeviceGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddFaceDeviceToDeviceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceDeviceToDeviceGroup(_ request: AddFaceDeviceToDeviceGroupRequest) async throws -> AddFaceDeviceToDeviceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addFaceDeviceToDeviceGroupWithOptions(request as! AddFaceDeviceToDeviceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceUserWithOptions(_ request: AddFaceUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddFaceUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customUserId)) {
            query["CustomUserId"] = request.customUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.facePicUrl)) {
            query["FacePicUrl"] = request.facePicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddFaceUser",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddFaceUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceUser(_ request: AddFaceUserRequest) async throws -> AddFaceUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addFaceUserWithOptions(request as! AddFaceUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceUserGroupWithOptions(_ request: AddFaceUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddFaceUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupName)) {
            query["UserGroupName"] = request.userGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddFaceUserGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddFaceUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceUserGroup(_ request: AddFaceUserGroupRequest) async throws -> AddFaceUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addFaceUserGroupWithOptions(request as! AddFaceUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceUserGroupAndDeviceGroupRelationWithOptions(_ request: AddFaceUserGroupAndDeviceGroupRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddFaceUserGroupAndDeviceGroupRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceGroupId)) {
            query["DeviceGroupId"] = request.deviceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relation)) {
            query["Relation"] = request.relation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddFaceUserGroupAndDeviceGroupRelation",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddFaceUserGroupAndDeviceGroupRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceUserGroupAndDeviceGroupRelation(_ request: AddFaceUserGroupAndDeviceGroupRelationRequest) async throws -> AddFaceUserGroupAndDeviceGroupRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addFaceUserGroupAndDeviceGroupRelationWithOptions(request as! AddFaceUserGroupAndDeviceGroupRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceUserPictureWithOptions(_ request: AddFaceUserPictureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddFaceUserPictureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.facePicUrl)) {
            query["FacePicUrl"] = request.facePicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddFaceUserPicture",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddFaceUserPictureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceUserPicture(_ request: AddFaceUserPictureRequest) async throws -> AddFaceUserPictureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addFaceUserPictureWithOptions(request as! AddFaceUserPictureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceUserToUserGroupWithOptions(_ request: AddFaceUserToUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddFaceUserToUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddFaceUserToUserGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddFaceUserToUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFaceUserToUserGroup(_ request: AddFaceUserToUserGroupRequest) async throws -> AddFaceUserToUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addFaceUserToUserGroupWithOptions(request as! AddFaceUserToUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRecordPlanDeviceWithOptions(_ request: AddRecordPlanDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddRecordPlanDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddRecordPlanDevice",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddRecordPlanDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRecordPlanDevice(_ request: AddRecordPlanDeviceRequest) async throws -> AddRecordPlanDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addRecordPlanDeviceWithOptions(request as! AddRecordPlanDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindPictureSearchAppWithDevicesWithOptions(_ request: BindPictureSearchAppWithDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindPictureSearchAppWithDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceIotIds)) {
            query["DeviceIotIds"] = request.deviceIotIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindPictureSearchAppWithDevices",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindPictureSearchAppWithDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindPictureSearchAppWithDevices(_ request: BindPictureSearchAppWithDevicesRequest) async throws -> BindPictureSearchAppWithDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindPictureSearchAppWithDevicesWithOptions(request as! BindPictureSearchAppWithDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkFaceUserDoExistOnDeviceWithOptions(_ request: CheckFaceUserDoExistOnDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckFaceUserDoExistOnDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckFaceUserDoExistOnDevice",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckFaceUserDoExistOnDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkFaceUserDoExistOnDevice(_ request: CheckFaceUserDoExistOnDeviceRequest) async throws -> CheckFaceUserDoExistOnDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkFaceUserDoExistOnDeviceWithOptions(request as! CheckFaceUserDoExistOnDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearFaceDeviceDBWithOptions(_ request: ClearFaceDeviceDBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ClearFaceDeviceDBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ClearFaceDeviceDB",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ClearFaceDeviceDBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearFaceDeviceDB(_ request: ClearFaceDeviceDBRequest) async throws -> ClearFaceDeviceDBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await clearFaceDeviceDBWithOptions(request as! ClearFaceDeviceDBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventRecordPlanWithOptions(_ request: CreateEventRecordPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEventRecordPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventTypes)) {
            query["EventTypes"] = request.eventTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preRecordDuration)) {
            query["PreRecordDuration"] = request.preRecordDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.recordDuration)) {
            query["RecordDuration"] = request.recordDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEventRecordPlan",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEventRecordPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventRecordPlan(_ request: CreateEventRecordPlanRequest) async throws -> CreateEventRecordPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEventRecordPlanWithOptions(request as! CreateEventRecordPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLocalFileUploadJobWithOptions(_ request: CreateLocalFileUploadJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLocalFileUploadJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeSlot)) {
            query["TimeSlot"] = request.timeSlot ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLocalFileUploadJob",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLocalFileUploadJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLocalFileUploadJob(_ request: CreateLocalFileUploadJobRequest) async throws -> CreateLocalFileUploadJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLocalFileUploadJobWithOptions(request as! CreateLocalFileUploadJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPictureSearchAppWithOptions(_ request: CreatePictureSearchAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePictureSearchAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desc)) {
            query["Desc"] = request.desc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePictureSearchApp",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePictureSearchAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPictureSearchApp(_ request: CreatePictureSearchAppRequest) async throws -> CreatePictureSearchAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPictureSearchAppWithOptions(request as! CreatePictureSearchAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPictureSearchJobWithOptions(_ request: CreatePictureSearchJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePictureSearchJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bodyThreshold)) {
            query["BodyThreshold"] = request.bodyThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pictureSearchType)) {
            query["PictureSearchType"] = request.pictureSearchType!;
        }
        if (!TeaUtils.Client.isUnset(request.searchPicUrl)) {
            query["SearchPicUrl"] = request.searchPicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            query["Threshold"] = request.threshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePictureSearchJob",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePictureSearchJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPictureSearchJob(_ request: CreatePictureSearchJobRequest) async throws -> CreatePictureSearchJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPictureSearchJobWithOptions(request as! CreatePictureSearchJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecordPlanWithOptions(_ request: CreateRecordPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRecordPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRecordPlan",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRecordPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRecordPlan(_ request: CreateRecordPlanRequest) async throws -> CreateRecordPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRecordPlanWithOptions(request as! CreateRecordPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTimeTemplateWithOptions(_ request: CreateTimeTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTimeTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allDay)) {
            query["AllDay"] = request.allDay!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeSections)) {
            query["TimeSections"] = request.timeSections ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTimeTemplate",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTimeTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTimeTemplate(_ request: CreateTimeTemplateRequest) async throws -> CreateTimeTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTimeTemplateWithOptions(request as! CreateTimeTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventRecordPlanWithOptions(_ request: DeleteEventRecordPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEventRecordPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEventRecordPlan",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEventRecordPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventRecordPlan(_ request: DeleteEventRecordPlanRequest) async throws -> DeleteEventRecordPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEventRecordPlanWithOptions(request as! DeleteEventRecordPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventRecordPlanDeviceWithOptions(_ request: DeleteEventRecordPlanDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEventRecordPlanDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEventRecordPlanDevice",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEventRecordPlanDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventRecordPlanDevice(_ request: DeleteEventRecordPlanDeviceRequest) async throws -> DeleteEventRecordPlanDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEventRecordPlanDeviceWithOptions(request as! DeleteEventRecordPlanDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceDeviceGroupWithOptions(_ request: DeleteFaceDeviceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFaceDeviceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceGroupId)) {
            query["DeviceGroupId"] = request.deviceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFaceDeviceGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFaceDeviceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceDeviceGroup(_ request: DeleteFaceDeviceGroupRequest) async throws -> DeleteFaceDeviceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFaceDeviceGroupWithOptions(request as! DeleteFaceDeviceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceUserWithOptions(_ request: DeleteFaceUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFaceUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFaceUser",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFaceUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceUser(_ request: DeleteFaceUserRequest) async throws -> DeleteFaceUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFaceUserWithOptions(request as! DeleteFaceUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceUserGroupWithOptions(_ request: DeleteFaceUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFaceUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFaceUserGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFaceUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceUserGroup(_ request: DeleteFaceUserGroupRequest) async throws -> DeleteFaceUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFaceUserGroupWithOptions(request as! DeleteFaceUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceUserGroupAndDeviceGroupRelationWithOptions(_ request: DeleteFaceUserGroupAndDeviceGroupRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFaceUserGroupAndDeviceGroupRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.controlId)) {
            query["ControlId"] = request.controlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFaceUserGroupAndDeviceGroupRelation",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFaceUserGroupAndDeviceGroupRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceUserGroupAndDeviceGroupRelation(_ request: DeleteFaceUserGroupAndDeviceGroupRelationRequest) async throws -> DeleteFaceUserGroupAndDeviceGroupRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFaceUserGroupAndDeviceGroupRelationWithOptions(request as! DeleteFaceUserGroupAndDeviceGroupRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceUserPictureWithOptions(_ request: DeleteFaceUserPictureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFaceUserPictureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.facePicMd5)) {
            query["FacePicMd5"] = request.facePicMd5 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFaceUserPicture",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFaceUserPictureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceUserPicture(_ request: DeleteFaceUserPictureRequest) async throws -> DeleteFaceUserPictureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFaceUserPictureWithOptions(request as! DeleteFaceUserPictureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLocalFileUploadJobWithOptions(_ request: DeleteLocalFileUploadJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLocalFileUploadJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLocalFileUploadJob",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLocalFileUploadJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLocalFileUploadJob(_ request: DeleteLocalFileUploadJobRequest) async throws -> DeleteLocalFileUploadJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLocalFileUploadJobWithOptions(request as! DeleteLocalFileUploadJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecordWithOptions(_ request: DeleteRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileNameList)) {
            query["FileNameList"] = request.fileNameList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRecord",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecord(_ request: DeleteRecordRequest) async throws -> DeleteRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRecordWithOptions(request as! DeleteRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecordPlanWithOptions(_ request: DeleteRecordPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRecordPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRecordPlan",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRecordPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecordPlan(_ request: DeleteRecordPlanRequest) async throws -> DeleteRecordPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRecordPlanWithOptions(request as! DeleteRecordPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecordPlanDeviceWithOptions(_ request: DeleteRecordPlanDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRecordPlanDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRecordPlanDevice",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRecordPlanDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRecordPlanDevice(_ request: DeleteRecordPlanDeviceRequest) async throws -> DeleteRecordPlanDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRecordPlanDeviceWithOptions(request as! DeleteRecordPlanDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTimeTemplateWithOptions(_ request: DeleteTimeTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTimeTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTimeTemplate",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTimeTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTimeTemplate(_ request: DeleteTimeTemplateRequest) async throws -> DeleteTimeTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTimeTemplateWithOptions(request as! DeleteTimeTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectUserFaceByUrlWithOptions(_ request: DetectUserFaceByUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectUserFaceByUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.facePicUrl)) {
            query["FacePicUrl"] = request.facePicUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectUserFaceByUrl",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectUserFaceByUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectUserFaceByUrl(_ request: DetectUserFaceByUrlRequest) async throws -> DetectUserFaceByUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectUserFaceByUrlWithOptions(request as! DetectUserFaceByUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPictureSearchJobStatusWithOptions(_ request: GetPictureSearchJobStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPictureSearchJobStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPictureSearchJobStatus",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPictureSearchJobStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPictureSearchJobStatus(_ request: GetPictureSearchJobStatusRequest) async throws -> GetPictureSearchJobStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPictureSearchJobStatusWithOptions(request as! GetPictureSearchJobStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pictureSearchPictureWithOptions(_ request: PictureSearchPictureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PictureSearchPictureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containPicUrl)) {
            query["ContainPicUrl"] = request.containPicUrl!;
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pictureSearchType)) {
            query["PictureSearchType"] = request.pictureSearchType!;
        }
        if (!TeaUtils.Client.isUnset(request.searchPicUrl)) {
            query["SearchPicUrl"] = request.searchPicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            query["Threshold"] = request.threshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PictureSearchPicture",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PictureSearchPictureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pictureSearchPicture(_ request: PictureSearchPictureRequest) async throws -> PictureSearchPictureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pictureSearchPictureWithOptions(request as! PictureSearchPictureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCarProcessEventsWithOptions(_ request: QueryCarProcessEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCarProcessEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionType)) {
            query["ActionType"] = request.actionType!;
        }
        if (!TeaUtils.Client.isUnset(request.areaIndex)) {
            query["AreaIndex"] = request.areaIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.plateNo)) {
            query["PlateNo"] = request.plateNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDeviceName)) {
            query["SubDeviceName"] = request.subDeviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subIotId)) {
            query["SubIotId"] = request.subIotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subProductKey)) {
            query["SubProductKey"] = request.subProductKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCarProcessEvents",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCarProcessEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCarProcessEvents(_ request: QueryCarProcessEventsRequest) async throws -> QueryCarProcessEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCarProcessEventsWithOptions(request as! QueryCarProcessEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceEventWithOptions(_ request: QueryDeviceEventRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDeviceEventResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            query["EventType"] = request.eventType!;
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDeviceEvent",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDeviceEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceEvent(_ request: QueryDeviceEventRequest) async throws -> QueryDeviceEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDeviceEventWithOptions(request as! QueryDeviceEventRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceEventPictureWithOptions(_ request: QueryDeviceEventPictureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDeviceEventPictureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDeviceEventPicture",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDeviceEventPictureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceEventPicture(_ request: QueryDeviceEventPictureRequest) async throws -> QueryDeviceEventPictureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDeviceEventPictureWithOptions(request as! QueryDeviceEventPictureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceEventRecordWithOptions(_ request: QueryDeviceEventRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDeviceEventRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDeviceEventRecord",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDeviceEventRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceEventRecord(_ request: QueryDeviceEventRecordRequest) async throws -> QueryDeviceEventRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDeviceEventRecordWithOptions(request as! QueryDeviceEventRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicePictureByListWithOptions(_ request: QueryDevicePictureByListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDevicePictureByListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            query["ExpireTime"] = request.expireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pictureIdList)) {
            query["PictureIdList"] = request.pictureIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pictureType)) {
            query["PictureType"] = request.pictureType!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thumbWidth)) {
            query["ThumbWidth"] = request.thumbWidth!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDevicePictureByList",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDevicePictureByListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicePictureByList(_ request: QueryDevicePictureByListRequest) async throws -> QueryDevicePictureByListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDevicePictureByListWithOptions(request as! QueryDevicePictureByListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicePictureFileWithOptions(_ request: QueryDevicePictureFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDevicePictureFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.captureId)) {
            query["CaptureId"] = request.captureId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            query["ExpireTime"] = request.expireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pictureType)) {
            query["PictureType"] = request.pictureType!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thumbWidth)) {
            query["ThumbWidth"] = request.thumbWidth!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDevicePictureFile",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDevicePictureFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicePictureFile(_ request: QueryDevicePictureFileRequest) async throws -> QueryDevicePictureFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDevicePictureFileWithOptions(request as! QueryDevicePictureFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicePictureLifeCycleWithOptions(_ request: QueryDevicePictureLifeCycleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDevicePictureLifeCycleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDevicePictureLifeCycle",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDevicePictureLifeCycleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicePictureLifeCycle(_ request: QueryDevicePictureLifeCycleRequest) async throws -> QueryDevicePictureLifeCycleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDevicePictureLifeCycleWithOptions(request as! QueryDevicePictureLifeCycleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceRecordLifeCycleWithOptions(_ request: QueryDeviceRecordLifeCycleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDeviceRecordLifeCycleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceList)) {
            query["DeviceList"] = request.deviceList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDeviceRecordLifeCycle",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDeviceRecordLifeCycleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceRecordLifeCycle(_ request: QueryDeviceRecordLifeCycleRequest) async throws -> QueryDeviceRecordLifeCycleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDeviceRecordLifeCycleWithOptions(request as! QueryDeviceRecordLifeCycleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceVodUrlWithOptions(_ request: QueryDeviceVodUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDeviceVodUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptType)) {
            query["EncryptType"] = request.encryptType!;
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playUnLimited)) {
            query["PlayUnLimited"] = request.playUnLimited!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheme)) {
            query["Scheme"] = request.scheme ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seekTime)) {
            query["SeekTime"] = request.seekTime!;
        }
        if (!TeaUtils.Client.isUnset(request.shouldEncrypt)) {
            query["ShouldEncrypt"] = request.shouldEncrypt!;
        }
        if (!TeaUtils.Client.isUnset(request.urlValidDuration)) {
            query["UrlValidDuration"] = request.urlValidDuration!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDeviceVodUrl",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDeviceVodUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceVodUrl(_ request: QueryDeviceVodUrlRequest) async throws -> QueryDeviceVodUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDeviceVodUrlWithOptions(request as! QueryDeviceVodUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceVodUrlByTimeWithOptions(_ request: QueryDeviceVodUrlByTimeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDeviceVodUrlByTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptType)) {
            query["EncryptType"] = request.encryptType!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playUnLimited)) {
            query["PlayUnLimited"] = request.playUnLimited!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheme)) {
            query["Scheme"] = request.scheme ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seekTime)) {
            query["SeekTime"] = request.seekTime!;
        }
        if (!TeaUtils.Client.isUnset(request.shouldEncrypt)) {
            query["ShouldEncrypt"] = request.shouldEncrypt!;
        }
        if (!TeaUtils.Client.isUnset(request.urlValidDuration)) {
            query["UrlValidDuration"] = request.urlValidDuration!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDeviceVodUrlByTime",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDeviceVodUrlByTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeviceVodUrlByTime(_ request: QueryDeviceVodUrlByTimeRequest) async throws -> QueryDeviceVodUrlByTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDeviceVodUrlByTimeWithOptions(request as! QueryDeviceVodUrlByTimeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEventRecordPlanDetailWithOptions(_ request: QueryEventRecordPlanDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEventRecordPlanDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEventRecordPlanDetail",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEventRecordPlanDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEventRecordPlanDetail(_ request: QueryEventRecordPlanDetailRequest) async throws -> QueryEventRecordPlanDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEventRecordPlanDetailWithOptions(request as! QueryEventRecordPlanDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEventRecordPlanDeviceByDeviceWithOptions(_ request: QueryEventRecordPlanDeviceByDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEventRecordPlanDeviceByDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEventRecordPlanDeviceByDevice",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEventRecordPlanDeviceByDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEventRecordPlanDeviceByDevice(_ request: QueryEventRecordPlanDeviceByDeviceRequest) async throws -> QueryEventRecordPlanDeviceByDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEventRecordPlanDeviceByDeviceWithOptions(request as! QueryEventRecordPlanDeviceByDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEventRecordPlanDeviceByPlanWithOptions(_ request: QueryEventRecordPlanDeviceByPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEventRecordPlanDeviceByPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEventRecordPlanDeviceByPlan",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEventRecordPlanDeviceByPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEventRecordPlanDeviceByPlan(_ request: QueryEventRecordPlanDeviceByPlanRequest) async throws -> QueryEventRecordPlanDeviceByPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEventRecordPlanDeviceByPlanWithOptions(request as! QueryEventRecordPlanDeviceByPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEventRecordPlansWithOptions(_ request: QueryEventRecordPlansRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEventRecordPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEventRecordPlans",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEventRecordPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEventRecordPlans(_ request: QueryEventRecordPlansRequest) async throws -> QueryEventRecordPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEventRecordPlansWithOptions(request as! QueryEventRecordPlansRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceAllDeviceGroupWithOptions(_ request: QueryFaceAllDeviceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceAllDeviceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceAllDeviceGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceAllDeviceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceAllDeviceGroup(_ request: QueryFaceAllDeviceGroupRequest) async throws -> QueryFaceAllDeviceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceAllDeviceGroupWithOptions(request as! QueryFaceAllDeviceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceAllUserGroupWithOptions(_ request: QueryFaceAllUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceAllUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceAllUserGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceAllUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceAllUserGroup(_ request: QueryFaceAllUserGroupRequest) async throws -> QueryFaceAllUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceAllUserGroupWithOptions(request as! QueryFaceAllUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceAllUserGroupAndDeviceGroupRelationWithOptions(_ request: QueryFaceAllUserGroupAndDeviceGroupRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceAllUserGroupAndDeviceGroupRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceAllUserGroupAndDeviceGroupRelation",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceAllUserGroupAndDeviceGroupRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceAllUserGroupAndDeviceGroupRelation(_ request: QueryFaceAllUserGroupAndDeviceGroupRelationRequest) async throws -> QueryFaceAllUserGroupAndDeviceGroupRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceAllUserGroupAndDeviceGroupRelationWithOptions(request as! QueryFaceAllUserGroupAndDeviceGroupRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceAllUserIdsByGroupIdWithOptions(_ request: QueryFaceAllUserIdsByGroupIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceAllUserIdsByGroupIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceAllUserIdsByGroupId",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceAllUserIdsByGroupIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceAllUserIdsByGroupId(_ request: QueryFaceAllUserIdsByGroupIdRequest) async throws -> QueryFaceAllUserIdsByGroupIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceAllUserIdsByGroupIdWithOptions(request as! QueryFaceAllUserIdsByGroupIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceCustomUserIdByUserIdWithOptions(_ request: QueryFaceCustomUserIdByUserIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceCustomUserIdByUserIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceCustomUserIdByUserId",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceCustomUserIdByUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceCustomUserIdByUserId(_ request: QueryFaceCustomUserIdByUserIdRequest) async throws -> QueryFaceCustomUserIdByUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceCustomUserIdByUserIdWithOptions(request as! QueryFaceCustomUserIdByUserIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceDeviceGroupsByDeviceWithOptions(_ request: QueryFaceDeviceGroupsByDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceDeviceGroupsByDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceDeviceGroupsByDevice",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceDeviceGroupsByDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceDeviceGroupsByDevice(_ request: QueryFaceDeviceGroupsByDeviceRequest) async throws -> QueryFaceDeviceGroupsByDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceDeviceGroupsByDeviceWithOptions(request as! QueryFaceDeviceGroupsByDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserWithOptions(_ request: QueryFaceUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceUser",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUser(_ request: QueryFaceUserRequest) async throws -> QueryFaceUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceUserWithOptions(request as! QueryFaceUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserBatchWithOptions(_ request: QueryFaceUserBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceUserBatchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdList)) {
            query["UserIdList"] = request.userIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceUserBatch",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceUserBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserBatch(_ request: QueryFaceUserBatchRequest) async throws -> QueryFaceUserBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceUserBatchWithOptions(request as! QueryFaceUserBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserByNameWithOptions(_ request: QueryFaceUserByNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceUserByNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceUserByName",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceUserByNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserByName(_ request: QueryFaceUserByNameRequest) async throws -> QueryFaceUserByNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceUserByNameWithOptions(request as! QueryFaceUserByNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserGroupWithOptions(_ request: QueryFaceUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceUserGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserGroup(_ request: QueryFaceUserGroupRequest) async throws -> QueryFaceUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceUserGroupWithOptions(request as! QueryFaceUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserGroupAndDeviceGroupRelationWithOptions(_ request: QueryFaceUserGroupAndDeviceGroupRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceUserGroupAndDeviceGroupRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.controlId)) {
            query["ControlId"] = request.controlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceUserGroupAndDeviceGroupRelation",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceUserGroupAndDeviceGroupRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserGroupAndDeviceGroupRelation(_ request: QueryFaceUserGroupAndDeviceGroupRelationRequest) async throws -> QueryFaceUserGroupAndDeviceGroupRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceUserGroupAndDeviceGroupRelationWithOptions(request as! QueryFaceUserGroupAndDeviceGroupRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserIdByCustomUserIdWithOptions(_ request: QueryFaceUserIdByCustomUserIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFaceUserIdByCustomUserIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customUserId)) {
            query["CustomUserId"] = request.customUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFaceUserIdByCustomUserId",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFaceUserIdByCustomUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFaceUserIdByCustomUserId(_ request: QueryFaceUserIdByCustomUserIdRequest) async throws -> QueryFaceUserIdByCustomUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFaceUserIdByCustomUserIdWithOptions(request as! QueryFaceUserIdByCustomUserIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLiveStreamingWithOptions(_ request: QueryLiveStreamingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLiveStreamingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cacheDuration)) {
            query["CacheDuration"] = request.cacheDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptType)) {
            query["EncryptType"] = request.encryptType!;
        }
        if (!TeaUtils.Client.isUnset(request.forceIFrame)) {
            query["ForceIFrame"] = request.forceIFrame!;
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playUnLimited)) {
            query["PlayUnLimited"] = request.playUnLimited!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheme)) {
            query["Scheme"] = request.scheme ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shouldEncrypt)) {
            query["ShouldEncrypt"] = request.shouldEncrypt!;
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        if (!TeaUtils.Client.isUnset(request.urlValidDuration)) {
            query["UrlValidDuration"] = request.urlValidDuration!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLiveStreaming",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLiveStreamingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLiveStreaming(_ request: QueryLiveStreamingRequest) async throws -> QueryLiveStreamingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryLiveStreamingWithOptions(request as! QueryLiveStreamingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLocalFileUploadJobWithOptions(_ request: QueryLocalFileUploadJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLocalFileUploadJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLocalFileUploadJob",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLocalFileUploadJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLocalFileUploadJob(_ request: QueryLocalFileUploadJobRequest) async throws -> QueryLocalFileUploadJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryLocalFileUploadJobWithOptions(request as! QueryLocalFileUploadJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMonthRecordWithOptions(_ request: QueryMonthRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMonthRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.month)) {
            query["Month"] = request.month ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMonthRecord",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMonthRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMonthRecord(_ request: QueryMonthRecordRequest) async throws -> QueryMonthRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMonthRecordWithOptions(request as! QueryMonthRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureFilesWithOptions(_ request: QueryPictureFilesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPictureFilesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pictureSource)) {
            query["PictureSource"] = request.pictureSource!;
        }
        if (!TeaUtils.Client.isUnset(request.pictureType)) {
            query["PictureType"] = request.pictureType!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPictureFiles",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPictureFilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureFiles(_ request: QueryPictureFilesRequest) async throws -> QueryPictureFilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPictureFilesWithOptions(request as! QueryPictureFilesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureSearchAiboxesWithOptions(_ request: QueryPictureSearchAiboxesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPictureSearchAiboxesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPictureSearchAiboxes",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPictureSearchAiboxesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureSearchAiboxes(_ request: QueryPictureSearchAiboxesRequest) async throws -> QueryPictureSearchAiboxesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPictureSearchAiboxesWithOptions(request as! QueryPictureSearchAiboxesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureSearchAppsWithOptions(_ request: QueryPictureSearchAppsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPictureSearchAppsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPictureSearchApps",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPictureSearchAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureSearchApps(_ request: QueryPictureSearchAppsRequest) async throws -> QueryPictureSearchAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPictureSearchAppsWithOptions(request as! QueryPictureSearchAppsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureSearchDevicesWithOptions(_ request: QueryPictureSearchDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPictureSearchDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPictureSearchDevices",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPictureSearchDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureSearchDevices(_ request: QueryPictureSearchDevicesRequest) async throws -> QueryPictureSearchDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPictureSearchDevicesWithOptions(request as! QueryPictureSearchDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureSearchJobWithOptions(_ request: QueryPictureSearchJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPictureSearchJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.jobStatus)) {
            query["JobStatus"] = request.jobStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPictureSearchJob",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPictureSearchJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureSearchJob(_ request: QueryPictureSearchJobRequest) async throws -> QueryPictureSearchJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPictureSearchJobWithOptions(request as! QueryPictureSearchJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureSearchJobResultWithOptions(_ request: QueryPictureSearchJobResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPictureSearchJobResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPictureSearchJobResult",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPictureSearchJobResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPictureSearchJobResult(_ request: QueryPictureSearchJobResultRequest) async throws -> QueryPictureSearchJobResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPictureSearchJobResultWithOptions(request as! QueryPictureSearchJobResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordWithOptions(_ request: QueryRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needSnapshot)) {
            query["NeedSnapshot"] = request.needSnapshot!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordType)) {
            query["RecordType"] = request.recordType!;
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecord",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecord(_ request: QueryRecordRequest) async throws -> QueryRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordWithOptions(request as! QueryRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordByRecordIdWithOptions(_ request: QueryRecordByRecordIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordByRecordIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordId)) {
            query["RecordId"] = request.recordId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecordByRecordId",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordByRecordIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordByRecordId(_ request: QueryRecordByRecordIdRequest) async throws -> QueryRecordByRecordIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordByRecordIdWithOptions(request as! QueryRecordByRecordIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordDownloadUrlWithOptions(_ request: QueryRecordDownloadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecordDownloadUrl",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordDownloadUrl(_ request: QueryRecordDownloadUrlRequest) async throws -> QueryRecordDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordDownloadUrlWithOptions(request as! QueryRecordDownloadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordPlanDetailWithOptions(_ request: QueryRecordPlanDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordPlanDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecordPlanDetail",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordPlanDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordPlanDetail(_ request: QueryRecordPlanDetailRequest) async throws -> QueryRecordPlanDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordPlanDetailWithOptions(request as! QueryRecordPlanDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordPlanDeviceByDeviceWithOptions(_ request: QueryRecordPlanDeviceByDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordPlanDeviceByDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecordPlanDeviceByDevice",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordPlanDeviceByDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordPlanDeviceByDevice(_ request: QueryRecordPlanDeviceByDeviceRequest) async throws -> QueryRecordPlanDeviceByDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordPlanDeviceByDeviceWithOptions(request as! QueryRecordPlanDeviceByDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordPlanDeviceByPlanWithOptions(_ request: QueryRecordPlanDeviceByPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordPlanDeviceByPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecordPlanDeviceByPlan",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordPlanDeviceByPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordPlanDeviceByPlan(_ request: QueryRecordPlanDeviceByPlanRequest) async throws -> QueryRecordPlanDeviceByPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordPlanDeviceByPlanWithOptions(request as! QueryRecordPlanDeviceByPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordPlansWithOptions(_ request: QueryRecordPlansRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecordPlans",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordPlans(_ request: QueryRecordPlansRequest) async throws -> QueryRecordPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordPlansWithOptions(request as! QueryRecordPlansRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordUrlWithOptions(_ request: QueryRecordUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seekTime)) {
            query["SeekTime"] = request.seekTime!;
        }
        if (!TeaUtils.Client.isUnset(request.urlValidDuration)) {
            query["UrlValidDuration"] = request.urlValidDuration!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecordUrl",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordUrl(_ request: QueryRecordUrlRequest) async throws -> QueryRecordUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordUrlWithOptions(request as! QueryRecordUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordUrlByTimeWithOptions(_ request: QueryRecordUrlByTimeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordUrlByTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        if (!TeaUtils.Client.isUnset(request.urlValidDuration)) {
            query["UrlValidDuration"] = request.urlValidDuration!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecordUrlByTime",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordUrlByTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordUrlByTime(_ request: QueryRecordUrlByTimeRequest) async throws -> QueryRecordUrlByTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordUrlByTimeWithOptions(request as! QueryRecordUrlByTimeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTimeTemplateWithOptions(_ request: QueryTimeTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTimeTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTimeTemplate",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTimeTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTimeTemplate(_ request: QueryTimeTemplateRequest) async throws -> QueryTimeTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTimeTemplateWithOptions(request as! QueryTimeTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTimeTemplateDetailWithOptions(_ request: QueryTimeTemplateDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTimeTemplateDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTimeTemplateDetail",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTimeTemplateDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTimeTemplateDetail(_ request: QueryTimeTemplateDetailRequest) async throws -> QueryTimeTemplateDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTimeTemplateDetailWithOptions(request as! QueryTimeTemplateDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVoiceIntercomWithOptions(_ request: QueryVoiceIntercomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryVoiceIntercomResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryVoiceIntercom",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryVoiceIntercomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVoiceIntercom(_ request: QueryVoiceIntercomRequest) async throws -> QueryVoiceIntercomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryVoiceIntercomWithOptions(request as! QueryVoiceIntercomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeFaceDeviceFromDeviceGroupWithOptions(_ request: RemoveFaceDeviceFromDeviceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveFaceDeviceFromDeviceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceGroupId)) {
            query["DeviceGroupId"] = request.deviceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveFaceDeviceFromDeviceGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveFaceDeviceFromDeviceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeFaceDeviceFromDeviceGroup(_ request: RemoveFaceDeviceFromDeviceGroupRequest) async throws -> RemoveFaceDeviceFromDeviceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeFaceDeviceFromDeviceGroupWithOptions(request as! RemoveFaceDeviceFromDeviceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeFaceUserFromUserGroupWithOptions(_ request: RemoveFaceUserFromUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveFaceUserFromUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveFaceUserFromUserGroup",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveFaceUserFromUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeFaceUserFromUserGroup(_ request: RemoveFaceUserFromUserGroupRequest) async throws -> RemoveFaceUserFromUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeFaceUserFromUserGroupWithOptions(request as! RemoveFaceUserFromUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDevicePictureLifeCycleWithOptions(_ request: SetDevicePictureLifeCycleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDevicePictureLifeCycleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.day)) {
            query["Day"] = request.day!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDevicePictureLifeCycle",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDevicePictureLifeCycleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDevicePictureLifeCycle(_ request: SetDevicePictureLifeCycleRequest) async throws -> SetDevicePictureLifeCycleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDevicePictureLifeCycleWithOptions(request as! SetDevicePictureLifeCycleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDeviceRecordLifeCycleWithOptions(_ request: SetDeviceRecordLifeCycleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDeviceRecordLifeCycleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.day)) {
            query["Day"] = request.day!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDeviceRecordLifeCycle",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDeviceRecordLifeCycleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDeviceRecordLifeCycle(_ request: SetDeviceRecordLifeCycleRequest) async throws -> SetDeviceRecordLifeCycleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDeviceRecordLifeCycleWithOptions(request as! SetDeviceRecordLifeCycleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopLiveStreamingWithOptions(_ request: StopLiveStreamingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopLiveStreamingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopLiveStreaming",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopLiveStreamingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopLiveStreaming(_ request: StopLiveStreamingRequest) async throws -> StopLiveStreamingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopLiveStreamingWithOptions(request as! StopLiveStreamingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTriggeredRecordWithOptions(_ request: StopTriggeredRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopTriggeredRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordId)) {
            query["RecordId"] = request.recordId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopTriggeredRecord",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopTriggeredRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTriggeredRecord(_ request: StopTriggeredRecordRequest) async throws -> StopTriggeredRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopTriggeredRecordWithOptions(request as! StopTriggeredRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferDeviceInstanceWithOptions(_ request: TransferDeviceInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferDeviceInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceNameList)) {
            query["DeviceNameList"] = request.deviceNameList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceId)) {
            query["SourceInstanceId"] = request.sourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetInstanceId)) {
            query["TargetInstanceId"] = request.targetInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferDeviceInstance",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferDeviceInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferDeviceInstance(_ request: TransferDeviceInstanceRequest) async throws -> TransferDeviceInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await transferDeviceInstanceWithOptions(request as! TransferDeviceInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerCapturePictureWithOptions(_ request: TriggerCapturePictureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TriggerCapturePictureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TriggerCapturePicture",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TriggerCapturePictureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerCapturePicture(_ request: TriggerCapturePictureRequest) async throws -> TriggerCapturePictureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await triggerCapturePictureWithOptions(request as! TriggerCapturePictureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerRecordWithOptions(_ request: TriggerRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TriggerRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            query["DeviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preRecordDuration)) {
            query["PreRecordDuration"] = request.preRecordDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordDuration)) {
            query["RecordDuration"] = request.recordDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.streamType)) {
            query["StreamType"] = request.streamType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TriggerRecord",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TriggerRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerRecord(_ request: TriggerRecordRequest) async throws -> TriggerRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await triggerRecordWithOptions(request as! TriggerRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindPictureSearchAppWithDevicesWithOptions(_ request: UnbindPictureSearchAppWithDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindPictureSearchAppWithDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceIotIds)) {
            query["DeviceIotIds"] = request.deviceIotIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindPictureSearchAppWithDevices",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindPictureSearchAppWithDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindPictureSearchAppWithDevices(_ request: UnbindPictureSearchAppWithDevicesRequest) async throws -> UnbindPictureSearchAppWithDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindPictureSearchAppWithDevicesWithOptions(request as! UnbindPictureSearchAppWithDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventRecordPlanWithOptions(_ request: UpdateEventRecordPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEventRecordPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventTypes)) {
            query["EventTypes"] = request.eventTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preRecordDuration)) {
            query["PreRecordDuration"] = request.preRecordDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.recordDuration)) {
            query["RecordDuration"] = request.recordDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEventRecordPlan",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEventRecordPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventRecordPlan(_ request: UpdateEventRecordPlanRequest) async throws -> UpdateEventRecordPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateEventRecordPlanWithOptions(request as! UpdateEventRecordPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFaceUserWithOptions(_ request: UpdateFaceUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFaceUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customUserId)) {
            query["CustomUserId"] = request.customUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.facePicUrl)) {
            query["FacePicUrl"] = request.facePicUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFaceUser",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFaceUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFaceUser(_ request: UpdateFaceUserRequest) async throws -> UpdateFaceUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateFaceUserWithOptions(request as! UpdateFaceUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFaceUserGroupAndDeviceGroupRelationWithOptions(_ request: UpdateFaceUserGroupAndDeviceGroupRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFaceUserGroupAndDeviceGroupRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.controlId)) {
            query["ControlId"] = request.controlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isolationId)) {
            query["IsolationId"] = request.isolationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relation)) {
            query["Relation"] = request.relation ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFaceUserGroupAndDeviceGroupRelation",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFaceUserGroupAndDeviceGroupRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFaceUserGroupAndDeviceGroupRelation(_ request: UpdateFaceUserGroupAndDeviceGroupRelationRequest) async throws -> UpdateFaceUserGroupAndDeviceGroupRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateFaceUserGroupAndDeviceGroupRelationWithOptions(request as! UpdateFaceUserGroupAndDeviceGroupRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePictureSearchAppWithOptions(_ request: UpdatePictureSearchAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePictureSearchAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceId)) {
            query["AppInstanceId"] = request.appInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePictureSearchApp",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePictureSearchAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePictureSearchApp(_ request: UpdatePictureSearchAppRequest) async throws -> UpdatePictureSearchAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePictureSearchAppWithOptions(request as! UpdatePictureSearchAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecordPlanWithOptions(_ request: UpdateRecordPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRecordPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRecordPlan",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRecordPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRecordPlan(_ request: UpdateRecordPlanRequest) async throws -> UpdateRecordPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRecordPlanWithOptions(request as! UpdateRecordPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTimeTemplateWithOptions(_ request: UpdateTimeTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTimeTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allDay)) {
            query["AllDay"] = request.allDay!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeSections)) {
            query["TimeSections"] = request.timeSections ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTimeTemplate",
            "version": "2018-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTimeTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTimeTemplate(_ request: UpdateTimeTemplateRequest) async throws -> UpdateTimeTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTimeTemplateWithOptions(request as! UpdateTimeTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
