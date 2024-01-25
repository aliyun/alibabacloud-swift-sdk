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
            "ap-northeast-1": "cloudesl.aliyuncs.com",
            "ap-northeast-2-pop": "cloudesl.aliyuncs.com",
            "ap-south-1": "cloudesl.aliyuncs.com",
            "ap-southeast-1": "cloudesl.aliyuncs.com",
            "ap-southeast-2": "cloudesl.aliyuncs.com",
            "ap-southeast-3": "cloudesl.aliyuncs.com",
            "ap-southeast-5": "cloudesl.aliyuncs.com",
            "cn-beijing": "cloudesl.aliyuncs.com",
            "cn-beijing-finance-1": "cloudesl.aliyuncs.com",
            "cn-beijing-finance-pop": "cloudesl.aliyuncs.com",
            "cn-beijing-gov-1": "cloudesl.aliyuncs.com",
            "cn-beijing-nu16-b01": "cloudesl.aliyuncs.com",
            "cn-chengdu": "cloudesl.aliyuncs.com",
            "cn-edge-1": "cloudesl.aliyuncs.com",
            "cn-fujian": "cloudesl.aliyuncs.com",
            "cn-haidian-cm12-c01": "cloudesl.aliyuncs.com",
            "cn-hangzhou-bj-b01": "cloudesl.aliyuncs.com",
            "cn-hangzhou-finance": "cloudesl.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "cloudesl.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "cloudesl.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "cloudesl.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "cloudesl.aliyuncs.com",
            "cn-hangzhou-test-306": "cloudesl.aliyuncs.com",
            "cn-hongkong": "cloudesl.aliyuncs.com",
            "cn-hongkong-finance-pop": "cloudesl.aliyuncs.com",
            "cn-huhehaote": "cloudesl.aliyuncs.com",
            "cn-north-2-gov-1": "cloudesl.aliyuncs.com",
            "cn-qingdao": "cloudesl.aliyuncs.com",
            "cn-qingdao-nebula": "cloudesl.aliyuncs.com",
            "cn-shanghai": "cloudesl.aliyuncs.com",
            "cn-shanghai-et15-b01": "cloudesl.aliyuncs.com",
            "cn-shanghai-et2-b01": "cloudesl.aliyuncs.com",
            "cn-shanghai-finance-1": "cloudesl.aliyuncs.com",
            "cn-shanghai-inner": "cloudesl.aliyuncs.com",
            "cn-shanghai-internal-test-1": "cloudesl.aliyuncs.com",
            "cn-shenzhen": "cloudesl.aliyuncs.com",
            "cn-shenzhen-finance-1": "cloudesl.aliyuncs.com",
            "cn-shenzhen-inner": "cloudesl.aliyuncs.com",
            "cn-shenzhen-st4-d01": "cloudesl.aliyuncs.com",
            "cn-shenzhen-su18-b01": "cloudesl.aliyuncs.com",
            "cn-wuhan": "cloudesl.aliyuncs.com",
            "cn-yushanfang": "cloudesl.aliyuncs.com",
            "cn-zhangbei-na61-b01": "cloudesl.aliyuncs.com",
            "cn-zhangjiakou": "cloudesl.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "cloudesl.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "cloudesl.aliyuncs.com",
            "eu-central-1": "cloudesl.aliyuncs.com",
            "eu-west-1": "cloudesl.aliyuncs.com",
            "eu-west-1-oxs": "cloudesl.aliyuncs.com",
            "me-east-1": "cloudesl.aliyuncs.com",
            "rus-west-1-pop": "cloudesl.aliyuncs.com",
            "us-east-1": "cloudesl.aliyuncs.com",
            "us-west-1": "cloudesl.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("cloudesl", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func activateApDeviceWithOptions(_ request: ActivateApDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ActivateApDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            body["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActivateApDevice",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActivateApDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activateApDevice(_ request: ActivateApDeviceRequest) async throws -> ActivateApDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await activateApDeviceWithOptions(request as! ActivateApDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addApDeviceWithOptions(_ request: AddApDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddApDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            body["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            body["SerialNumber"] = request.serialNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddApDevice",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddApDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addApDevice(_ request: AddApDeviceRequest) async throws -> AddApDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addApDeviceWithOptions(request as! AddApDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addCompanyTemplateWithOptions(_ request: AddCompanyTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddCompanyTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eslSize)) {
            body["EslSize"] = request.eslSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ifDefault)) {
            body["IfDefault"] = request.ifDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.ifMember)) {
            body["IfMember"] = request.ifMember!;
        }
        if (!TeaUtils.Client.isUnset(request.ifOutOfInventory)) {
            body["IfOutOfInventory"] = request.ifOutOfInventory!;
        }
        if (!TeaUtils.Client.isUnset(request.ifPromotion)) {
            body["IfPromotion"] = request.ifPromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.ifSourceCode)) {
            body["IfSourceCode"] = request.ifSourceCode!;
        }
        if (!TeaUtils.Client.isUnset(request.layout)) {
            body["Layout"] = request.layout!;
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["Scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateSceneId)) {
            body["TemplateSceneId"] = request.templateSceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            body["TemplateType"] = request.templateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            body["TemplateVersion"] = request.templateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddCompanyTemplate",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddCompanyTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addCompanyTemplate(_ request: AddCompanyTemplateRequest) async throws -> AddCompanyTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addCompanyTemplateWithOptions(request as! AddCompanyTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserWithOptions(_ request: AddUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUser",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUser(_ request: AddUserRequest) async throws -> AddUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addUserWithOptions(request as! AddUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyCompanyTemplateVersionToStoresWithOptions(_ request: ApplyCompanyTemplateVersionToStoresRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyCompanyTemplateVersionToStoresResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.stores)) {
            body["Stores"] = request.stores ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            body["TemplateVersion"] = request.templateVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyCompanyTemplateVersionToStores",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyCompanyTemplateVersionToStoresResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyCompanyTemplateVersionToStores(_ request: ApplyCompanyTemplateVersionToStoresRequest) async throws -> ApplyCompanyTemplateVersionToStoresResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyCompanyTemplateVersionToStoresWithOptions(request as! ApplyCompanyTemplateVersionToStoresRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignUserWithOptions(_ request: AssignUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssignUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stores)) {
            body["Stores"] = request.stores ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            body["UserType"] = request.userType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssignUser",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssignUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assignUser(_ request: AssignUserRequest) async throws -> AssignUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assignUserWithOptions(request as! AssignUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchInsertItemsWithOptions(_ request: BatchInsertItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchInsertItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemInfo)) {
            body["ItemInfo"] = request.itemInfo ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncByItemId)) {
            body["SyncByItemId"] = request.syncByItemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchInsertItems",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchInsertItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchInsertItems(_ request: BatchInsertItemsRequest) async throws -> BatchInsertItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchInsertItemsWithOptions(request as! BatchInsertItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindEslDeviceWithOptions(_ request: BindEslDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindEslDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.column)) {
            body["Column"] = request.column ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerId)) {
            body["ContainerId"] = request.containerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerName)) {
            body["ContainerName"] = request.containerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layer)) {
            body["Layer"] = request.layer!;
        }
        if (!TeaUtils.Client.isUnset(request.layoutId)) {
            body["LayoutId"] = request.layoutId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layoutName)) {
            body["LayoutName"] = request.layoutName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shelf)) {
            body["Shelf"] = request.shelf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindEslDevice",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindEslDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindEslDevice(_ request: BindEslDeviceRequest) async throws -> BindEslDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindEslDeviceWithOptions(request as! BindEslDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStoreWithOptions(_ request: CreateStoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoUnbindDays)) {
            body["AutoUnbindDays"] = request.autoUnbindDays!;
        }
        if (!TeaUtils.Client.isUnset(request.autoUnbindOfflineEsl)) {
            body["AutoUnbindOfflineEsl"] = request.autoUnbindOfflineEsl!;
        }
        if (!TeaUtils.Client.isUnset(request.barCodeEncode)) {
            body["BarCodeEncode"] = request.barCodeEncode!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["ParentId"] = request.parentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeName)) {
            body["StoreName"] = request.storeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            body["TimeZone"] = request.timeZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userStoreCode)) {
            body["UserStoreCode"] = request.userStoreCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStore",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStore(_ request: CreateStoreRequest) async throws -> CreateStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStoreWithOptions(request as! CreateStoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApDeviceWithOptions(_ request: DeleteApDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            body["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApDevice",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApDevice(_ request: DeleteApDeviceRequest) async throws -> DeleteApDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApDeviceWithOptions(request as! DeleteApDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCompanyTemplateWithOptions(_ request: DeleteCompanyTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCompanyTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCompanyTemplate",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCompanyTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCompanyTemplate(_ request: DeleteCompanyTemplateRequest) async throws -> DeleteCompanyTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCompanyTemplateWithOptions(request as! DeleteCompanyTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteItemWithOptions(_ request: DeleteItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unbindEslDevice)) {
            body["UnbindEslDevice"] = request.unbindEslDevice!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteItem",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteItem(_ request: DeleteItemRequest) async throws -> DeleteItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteItemWithOptions(request as! DeleteItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStoreWithOptions(_ request: DeleteStoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStore",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStore(_ request: DeleteStoreRequest) async throws -> DeleteStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteStoreWithOptions(request as! DeleteStoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserWithOptions(_ request: DeleteUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUser",
            "version": "2020-02-01",
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
    public func describeApDevicesWithOptions(_ request: DescribeApDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            body["ApMac"] = request.apMac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beActivate)) {
            body["BeActivate"] = request.beActivate!;
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
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
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApDevices",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApDevices(_ request: DescribeApDevicesRequest) async throws -> DescribeApDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApDevicesWithOptions(request as! DescribeApDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableEslModelsWithOptions(_ request: DescribeAvailableEslModelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAvailableEslModelsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["ModelId"] = request.modelId ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAvailableEslModels",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAvailableEslModelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAvailableEslModels(_ request: DescribeAvailableEslModelsRequest) async throws -> DescribeAvailableEslModelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAvailableEslModelsWithOptions(request as! DescribeAvailableEslModelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBindersWithOptions(_ request: DescribeBindersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBindersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemTitle)) {
            body["ItemTitle"] = request.itemTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBinders",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBindersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBinders(_ request: DescribeBindersRequest) async throws -> DescribeBindersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBindersWithOptions(request as! DescribeBindersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCompanyTemplateVersionsWithOptions(_ request: DescribeCompanyTemplateVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCompanyTemplateVersionsResponse {
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
            "action": "DescribeCompanyTemplateVersions",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCompanyTemplateVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCompanyTemplateVersions(_ request: DescribeCompanyTemplateVersionsRequest) async throws -> DescribeCompanyTemplateVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCompanyTemplateVersionsWithOptions(request as! DescribeCompanyTemplateVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEslDeviceWithOptions(_ request: DescribeEslDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEslDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromDate)) {
            body["FromDate"] = request.fromDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toDate)) {
            body["ToDate"] = request.toDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEslDevice",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEslDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEslDevice(_ request: DescribeEslDeviceRequest) async throws -> DescribeEslDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEslDeviceWithOptions(request as! DescribeEslDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEslDevicesWithOptions(_ request: DescribeEslDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEslDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eslStatus)) {
            body["EslStatus"] = request.eslStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromBatteryLevel)) {
            body["FromBatteryLevel"] = request.fromBatteryLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toBatteryLevel)) {
            body["ToBatteryLevel"] = request.toBatteryLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.typeEncode)) {
            body["TypeEncode"] = request.typeEncode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEslDevices",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEslDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEslDevices(_ request: DescribeEslDevicesRequest) async throws -> DescribeEslDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEslDevicesWithOptions(request as! DescribeEslDevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEslModelByTemplateVersionWithOptions(_ request: DescribeEslModelByTemplateVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEslModelByTemplateVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            body["TemplateVersion"] = request.templateVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEslModelByTemplateVersion",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEslModelByTemplateVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEslModelByTemplateVersion(_ request: DescribeEslModelByTemplateVersionRequest) async throws -> DescribeEslModelByTemplateVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEslModelByTemplateVersionWithOptions(request as! DescribeEslModelByTemplateVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeItemsWithOptions(_ request: DescribeItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bePromotion)) {
            body["BePromotion"] = request.bePromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            body["ItemId"] = request.itemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemTitle)) {
            body["ItemTitle"] = request.itemTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.skuId)) {
            body["SkuId"] = request.skuId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeItems",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeItems(_ request: DescribeItemsRequest) async throws -> DescribeItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeItemsWithOptions(request as! DescribeItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStoreByTemplateVersionWithOptions(_ request: DescribeStoreByTemplateVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStoreByTemplateVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            body["TemplateVersion"] = request.templateVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStoreByTemplateVersion",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeStoreByTemplateVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStoreByTemplateVersion(_ request: DescribeStoreByTemplateVersionRequest) async throws -> DescribeStoreByTemplateVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeStoreByTemplateVersionWithOptions(request as! DescribeStoreByTemplateVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStoreConfigWithOptions(_ request: DescribeStoreConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStoreConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStoreConfig",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeStoreConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStoreConfig(_ request: DescribeStoreConfigRequest) async throws -> DescribeStoreConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeStoreConfigWithOptions(request as! DescribeStoreConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStoresWithOptions(_ request: DescribeStoresRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStoresResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromDate)) {
            body["FromDate"] = request.fromDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeName)) {
            body["StoreName"] = request.storeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            body["TemplateVersion"] = request.templateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toDate)) {
            body["ToDate"] = request.toDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userStoreCode)) {
            body["UserStoreCode"] = request.userStoreCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStores",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeStoresResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStores(_ request: DescribeStoresRequest) async throws -> DescribeStoresResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeStoresWithOptions(request as! DescribeStoresRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTemplateByModelWithOptions(_ request: DescribeTemplateByModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTemplateByModelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eslSize)) {
            body["EslSize"] = request.eslSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            body["TemplateVersion"] = request.templateVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTemplateByModel",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTemplateByModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTemplateByModel(_ request: DescribeTemplateByModelRequest) async throws -> DescribeTemplateByModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTemplateByModelWithOptions(request as! DescribeTemplateByModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserLogWithOptions(_ request: DescribeUserLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserLogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromDate)) {
            body["FromDate"] = request.fromDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemShortTitle)) {
            body["ItemShortTitle"] = request.itemShortTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logId)) {
            body["LogId"] = request.logId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationStatus)) {
            body["OperationStatus"] = request.operationStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            body["OperationType"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toDate)) {
            body["ToDate"] = request.toDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserLog",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserLog(_ request: DescribeUserLogRequest) async throws -> DescribeUserLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserLogWithOptions(request as! DescribeUserLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsersWithOptions(_ request: DescribeUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            body["UserType"] = request.userType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUsers",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsers(_ request: DescribeUsersRequest) async throws -> DescribeUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUsersWithOptions(request as! DescribeUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserWithOptions(_ request: GetUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUser",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUser(_ request: GetUserRequest) async throws -> GetUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserWithOptions(request as! GetUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTemplateListByGroupIdWithOptions(_ request: QueryTemplateListByGroupIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTemplateListByGroupIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            body["GroupId"] = request.groupId ?? "";
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
            "action": "QueryTemplateListByGroupId",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTemplateListByGroupIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTemplateListByGroupId(_ request: QueryTemplateListByGroupIdRequest) async throws -> QueryTemplateListByGroupIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTemplateListByGroupIdWithOptions(request as! QueryTemplateListByGroupIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncAddMaterialWithOptions(_ request: SyncAddMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncAddMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncAddMaterial",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncAddMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncAddMaterial(_ request: SyncAddMaterialRequest) async throws -> SyncAddMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncAddMaterialWithOptions(request as! SyncAddMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassignUserWithOptions(_ request: UnassignUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnassignUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnassignUser",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnassignUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassignUser(_ request: UnassignUserRequest) async throws -> UnassignUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unassignUserWithOptions(request as! UnassignUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindEslDeviceWithOptions(_ request: UnbindEslDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindEslDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.column)) {
            body["Column"] = request.column ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerName)) {
            body["ContainerName"] = request.containerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layer)) {
            body["Layer"] = request.layer!;
        }
        if (!TeaUtils.Client.isUnset(request.shelf)) {
            body["Shelf"] = request.shelf ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindEslDevice",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindEslDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindEslDevice(_ request: UnbindEslDeviceRequest) async throws -> UnbindEslDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindEslDeviceWithOptions(request as! UnbindEslDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEslDeviceLightWithOptions(_ request: UpdateEslDeviceLightRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEslDeviceLightResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.frequency)) {
            body["Frequency"] = request.frequency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ledColor)) {
            body["LedColor"] = request.ledColor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lightUpTime)) {
            body["LightUpTime"] = request.lightUpTime!;
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEslDeviceLight",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEslDeviceLightResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEslDeviceLight(_ request: UpdateEslDeviceLightRequest) async throws -> UpdateEslDeviceLightResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateEslDeviceLightWithOptions(request as! UpdateEslDeviceLightRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStoreWithOptions(_ request: UpdateStoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoUnbindDays)) {
            body["AutoUnbindDays"] = request.autoUnbindDays!;
        }
        if (!TeaUtils.Client.isUnset(request.autoUnbindOfflineEsl)) {
            body["AutoUnbindOfflineEsl"] = request.autoUnbindOfflineEsl!;
        }
        if (!TeaUtils.Client.isUnset(request.barCodeEncode)) {
            body["BarCodeEncode"] = request.barCodeEncode!;
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeName)) {
            body["StoreName"] = request.storeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateVersion)) {
            body["TemplateVersion"] = request.templateVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timezone)) {
            body["Timezone"] = request.timezone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userStoreCode)) {
            body["UserStoreCode"] = request.userStoreCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStore",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStore(_ request: UpdateStoreRequest) async throws -> UpdateStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateStoreWithOptions(request as! UpdateStoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStoreConfigWithOptions(_ request: UpdateStoreConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStoreConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableNotification)) {
            body["EnableNotification"] = request.enableNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationSilentTimes)) {
            body["NotificationSilentTimes"] = request.notificationSilentTimes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationWebHook)) {
            body["NotificationWebHook"] = request.notificationWebHook ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscribeContents)) {
            body["SubscribeContents"] = request.subscribeContents ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStoreConfig",
            "version": "2020-02-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStoreConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStoreConfig(_ request: UpdateStoreConfigRequest) async throws -> UpdateStoreConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateStoreConfigWithOptions(request as! UpdateStoreConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
