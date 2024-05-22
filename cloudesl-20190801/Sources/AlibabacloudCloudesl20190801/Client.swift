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
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActivateApDevice",
            "version": "2019-08-01",
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
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddApDevice",
            "version": "2019-08-01",
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
    public func addEslDeviceWithOptions(_ request: AddEslDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddEslDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddEslDevice",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddEslDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addEslDevice(_ request: AddEslDeviceRequest) async throws -> AddEslDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addEslDeviceWithOptions(request as! AddEslDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserWithOptions(_ request: AddUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUser",
            "version": "2019-08-01",
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
    public func assignUserWithOptions(_ request: AssignUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssignUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
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
            "version": "2019-08-01",
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
        if (!TeaUtils.Client.isUnset(request.itemInfo)) {
            body["ItemInfo"] = request.itemInfo ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchInsertItems",
            "version": "2019-08-01",
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
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindEslDevice",
            "version": "2019-08-01",
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
    public func bindEslDeviceShelfWithOptions(_ request: BindEslDeviceShelfRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindEslDeviceShelfResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shelfCode)) {
            body["ShelfCode"] = request.shelfCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindEslDeviceShelf",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindEslDeviceShelfResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindEslDeviceShelf(_ request: BindEslDeviceShelfRequest) async throws -> BindEslDeviceShelfResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindEslDeviceShelfWithOptions(request as! BindEslDeviceShelfRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmLogisticsWithOptions(_ request: ConfirmLogisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmLogisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logisticsDocuments)) {
            body["LogisticsDocuments"] = request.logisticsDocuments ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poNumber)) {
            body["PoNumber"] = request.poNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prNumber)) {
            body["PrNumber"] = request.prNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmLogistics",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmLogisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmLogistics(_ request: ConfirmLogisticsRequest) async throws -> ConfirmLogisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmLogisticsWithOptions(request as! ConfirmLogisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStoreWithOptions(_ request: CreateStoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.brand)) {
            body["Brand"] = request.brand ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comments)) {
            body["Comments"] = request.comments ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.companyId)) {
            body["CompanyId"] = request.companyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groups)) {
            body["Groups"] = request.groups ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            body["OutId"] = request.outId ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStore",
            "version": "2019-08-01",
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
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApDevice",
            "version": "2019-08-01",
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
    public func deleteEslDeviceWithOptions(_ request: DeleteEslDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEslDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEslDevice",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEslDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEslDevice(_ request: DeleteEslDeviceRequest) async throws -> DeleteEslDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEslDeviceWithOptions(request as! DeleteEslDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteItem",
            "version": "2019-08-01",
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
    public func deleteItemBySkuIdWithOptions(_ request: DeleteItemBySkuIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteItemBySkuIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
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
            "action": "DeleteItemBySkuId",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteItemBySkuIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteItemBySkuId(_ request: DeleteItemBySkuIdRequest) async throws -> DeleteItemBySkuIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteItemBySkuIdWithOptions(request as! DeleteItemBySkuIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStoreWithOptions(_ request: DeleteStoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStore",
            "version": "2019-08-01",
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
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUser",
            "version": "2019-08-01",
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
    public func describeAlarmsWithOptions(_ request: DescribeAlarmsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAlarmsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmId)) {
            body["AlarmId"] = request.alarmId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alarmStatus)) {
            body["AlarmStatus"] = request.alarmStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alarmType)) {
            body["AlarmType"] = request.alarmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorType)) {
            body["ErrorType"] = request.errorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromAlarmTime)) {
            body["FromAlarmTime"] = request.fromAlarmTime ?? "";
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
        if (!TeaUtils.Client.isUnset(request.toAlarmTime)) {
            body["ToAlarmTime"] = request.toAlarmTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAlarms",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAlarmsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAlarms(_ request: DescribeAlarmsRequest) async throws -> DescribeAlarmsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAlarmsWithOptions(request as! DescribeAlarmsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApDevicesWithOptions(_ request: DescribeApDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activated)) {
            body["Activated"] = request.activated!;
        }
        if (!TeaUtils.Client.isUnset(request.apMac)) {
            body["ApMac"] = request.apMac ?? "";
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
            "action": "DescribeApDevices",
            "version": "2019-08-01",
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
    public func describeEslDevicesWithOptions(_ request: DescribeEslDevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEslDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beBind)) {
            body["BeBind"] = request.beBind!;
        }
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eslStatus)) {
            body["EslStatus"] = request.eslStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromBatteryLevel)) {
            body["FromBatteryLevel"] = request.fromBatteryLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mac)) {
            body["Mac"] = request.mac ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.shelfCode)) {
            body["ShelfCode"] = request.shelfCode ?? "";
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
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEslDevices",
            "version": "2019-08-01",
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
    public func describeItemsWithOptions(_ request: DescribeItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bePromotion)) {
            body["BePromotion"] = request.bePromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            body["ItemId"] = request.itemId!;
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
            "version": "2019-08-01",
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
    public func describeLogisticsWithOptions(_ request: DescribeLogisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLogisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLogistics",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLogisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLogistics(_ request: DescribeLogisticsRequest) async throws -> DescribeLogisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLogisticsWithOptions(request as! DescribeLogisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePayOrdersWithOptions(_ request: DescribePayOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePayOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromDate)) {
            body["FromDate"] = request.fromDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.toDate)) {
            body["ToDate"] = request.toDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePayOrders",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePayOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePayOrders(_ request: DescribePayOrdersRequest) async throws -> DescribePayOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePayOrdersWithOptions(request as! DescribePayOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePlanogramRailsWithOptions(_ request: DescribePlanogramRailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePlanogramRailsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.layer)) {
            body["Layer"] = request.layer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.railCode)) {
            body["RailCode"] = request.railCode ?? "";
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
            "action": "DescribePlanogramRails",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePlanogramRailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePlanogramRails(_ request: DescribePlanogramRailsRequest) async throws -> DescribePlanogramRailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePlanogramRailsWithOptions(request as! DescribePlanogramRailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeStoresWithOptions(_ request: DescribeStoresRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeStoresResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.brand)) {
            body["Brand"] = request.brand ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.companyId)) {
            body["CompanyId"] = request.companyId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.toDate)) {
            body["ToDate"] = request.toDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeStores",
            "version": "2019-08-01",
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
    public func describeUserLogWithOptions(_ request: DescribeUserLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserLogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromDate)) {
            body["FromDate"] = request.fromDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            body["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.itemTitle)) {
            body["ItemTitle"] = request.itemTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateStatus)) {
            body["OperateStatus"] = request.operateStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            body["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateUserId)) {
            body["OperateUserId"] = request.operateUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.reverse)) {
            body["Reverse"] = request.reverse!;
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
            "action": "DescribeUserLog",
            "version": "2019-08-01",
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
            "version": "2019-08-01",
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
    public func getCompanyWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetCompanyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCompany",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCompanyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCompany() async throws -> GetCompanyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCompanyWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserWithOptions(_ request: GetUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUser",
            "version": "2019-08-01",
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
    public func mapPlanogramRailWithOptions(_ request: MapPlanogramRailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MapPlanogramRailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.layer)) {
            body["Layer"] = request.layer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.railCode)) {
            body["RailCode"] = request.railCode ?? "";
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
            "action": "MapPlanogramRail",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MapPlanogramRailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mapPlanogramRail(_ request: MapPlanogramRailRequest) async throws -> MapPlanogramRailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mapPlanogramRailWithOptions(request as! MapPlanogramRailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshTaobaoItemWithOptions(_ request: RefreshTaobaoItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshTaobaoItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outerId)) {
            body["OuterId"] = request.outerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skuId)) {
            body["SkuId"] = request.skuId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taobaoItemId)) {
            body["TaobaoItemId"] = request.taobaoItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshTaobaoItem",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshTaobaoItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshTaobaoItem(_ request: RefreshTaobaoItemRequest) async throws -> RefreshTaobaoItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refreshTaobaoItemWithOptions(request as! RefreshTaobaoItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unassignUserWithOptions(_ request: UnassignUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnassignUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnassignUser",
            "version": "2019-08-01",
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
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemBarCode)) {
            body["ItemBarCode"] = request.itemBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindEslDevice",
            "version": "2019-08-01",
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
    public func unbindEslDeviceShelfWithOptions(_ request: UnbindEslDeviceShelfRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindEslDeviceShelfResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindEslDeviceShelf",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindEslDeviceShelfResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindEslDeviceShelf(_ request: UnbindEslDeviceShelfRequest) async throws -> UnbindEslDeviceShelfResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindEslDeviceShelfWithOptions(request as! UnbindEslDeviceShelfRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unmapPlanogramRailWithOptions(_ request: UnmapPlanogramRailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnmapPlanogramRailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.railCode)) {
            body["RailCode"] = request.railCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeId)) {
            body["StoreId"] = request.storeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnmapPlanogramRail",
            "version": "2019-08-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnmapPlanogramRailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unmapPlanogramRail(_ request: UnmapPlanogramRailRequest) async throws -> UnmapPlanogramRailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unmapPlanogramRailWithOptions(request as! UnmapPlanogramRailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEslDeviceLightWithOptions(_ request: UpdateEslDeviceLightRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEslDeviceLightResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eslBarCode)) {
            body["EslBarCode"] = request.eslBarCode ?? "";
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
            "version": "2019-08-01",
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
        if (!TeaUtils.Client.isUnset(request.brand)) {
            body["Brand"] = request.brand ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comments)) {
            body["Comments"] = request.comments ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groups)) {
            body["Groups"] = request.groups ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            body["OutId"] = request.outId ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStore",
            "version": "2019-08-01",
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
}
