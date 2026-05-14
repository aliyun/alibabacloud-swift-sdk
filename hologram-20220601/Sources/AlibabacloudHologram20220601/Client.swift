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
        self._endpoint = try getEndpoint("hologram", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            body["newResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tag/changeResourceGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroup(_ request: ChangeResourceGroupRequest) async throws -> ChangeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await changeResourceGroupWithOptions(request as! ChangeResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabaseWithOptions(_ instanceId: String, _ request: CreateDatabaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["databaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permissionModel)) {
            body["permissionModel"] = request.permissionModel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatabase",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/createDatabase",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabase(_ instanceId: String, _ request: CreateDatabaseRequest) async throws -> CreateDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDatabaseWithOptions(instanceId as! String, request as! CreateDatabaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExternalDatabaseWithOptions(_ instanceId: String, _ request: CreateExternalDatabaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExternalDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            body["comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["databaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultUserMapping)) {
            body["defaultUserMapping"] = request.defaultUserMapping ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalConfig)) {
            body["externalConfig"] = request.externalConfig ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.metastoreType)) {
            body["metastoreType"] = request.metastoreType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExternalDatabase",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/createExternalDatabase",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExternalDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExternalDatabase(_ instanceId: String, _ request: CreateExternalDatabaseRequest) async throws -> CreateExternalDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createExternalDatabaseWithOptions(instanceId as! String, request as! CreateExternalDatabaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHoloWarehouseWithOptions(_ instanceId: String, _ request: CreateHoloWarehouseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHoloWarehouseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterCount)) {
            body["clusterCount"] = request.clusterCount!;
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["cpu"] = request.cpu ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHoloWarehouse",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/createHoloWarehouse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHoloWarehouseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHoloWarehouse(_ instanceId: String, _ request: CreateHoloWarehouseRequest) async throws -> CreateHoloWarehouseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createHoloWarehouseWithOptions(instanceId as! String, request as! CreateHoloWarehouseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceWithOptions(_ request: CreateInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            body["autoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["autoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["chargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.coldStorageSize)) {
            body["coldStorageSize"] = request.coldStorageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.enableServerlessComputing)) {
            body["enableServerlessComputing"] = request.enableServerlessComputing!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayCount)) {
            body["gatewayCount"] = request.gatewayCount!;
        }
        if (!TeaUtils.Client.isUnset(request.initialDatabases)) {
            body["initialDatabases"] = request.initialDatabases ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["instanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leaderInstanceId)) {
            body["leaderInstanceId"] = request.leaderInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            body["pricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageSize)) {
            body["storageSize"] = request.storageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            body["storageType"] = request.storageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            body["vSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["vpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            body["zoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstance",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstance(_ request: CreateInstanceRequest) async throws -> CreateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createInstanceWithOptions(request as! CreateInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelServiceWithOptions(_ instanceId: String, _ request: CreateModelServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiKey)) {
            body["apiKey"] = request.apiKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.gpu)) {
            body["gpu"] = request.gpu!;
        }
        if (!TeaUtils.Client.isUnset(request.gpuMemory)) {
            body["gpuMemory"] = request.gpuMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            body["memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.modelParams)) {
            body["modelParams"] = request.modelParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelServiceName)) {
            body["modelServiceName"] = request.modelServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelType)) {
            body["modelType"] = request.modelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.provider)) {
            body["provider"] = request.provider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCount)) {
            body["serviceCount"] = request.serviceCount!;
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["taskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModelService",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/createModelService",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelService(_ instanceId: String, _ request: CreateModelServiceRequest) async throws -> CreateModelServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createModelServiceWithOptions(instanceId as! String, request as! CreateModelServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserWithOptions(_ instanceId: String, _ request: CreateUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.superUser)) {
            body["superUser"] = request.superUser!;
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["userName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUser",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/createUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUser(_ instanceId: String, _ request: CreateUserRequest) async throws -> CreateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createUserWithOptions(instanceId as! String, request as! CreateUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWarehouseWithOptions(_ instanceId: String, _ request: CreateWarehouseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWarehouseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["cpu"] = request.cpu ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warehouseName)) {
            body["warehouseName"] = request.warehouseName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWarehouse",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/warehouse/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWarehouseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWarehouse(_ instanceId: String, _ request: CreateWarehouseRequest) async throws -> CreateWarehouseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWarehouseWithOptions(instanceId as! String, request as! CreateWarehouseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWarehouseScheduleTaskWithOptions(_ instanceId: String, _ request: CreateWarehouseScheduleTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWarehouseScheduleTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticCu)) {
            body["elasticCu"] = request.elasticCu!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warehouseId)) {
            body["warehouseId"] = request.warehouseId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWarehouseScheduleTask",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/createWarehouseScheduleTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWarehouseScheduleTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWarehouseScheduleTask(_ instanceId: String, _ request: CreateWarehouseScheduleTaskRequest) async throws -> CreateWarehouseScheduleTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWarehouseScheduleTaskWithOptions(instanceId as! String, request as! CreateWarehouseScheduleTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHoloWarehouseWithOptions(_ instanceId: String, _ request: DeleteHoloWarehouseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHoloWarehouseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHoloWarehouse",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/deleteHoloWarehouse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHoloWarehouseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHoloWarehouse(_ instanceId: String, _ request: DeleteHoloWarehouseRequest) async throws -> DeleteHoloWarehouseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteHoloWarehouseWithOptions(instanceId as! String, request as! DeleteHoloWarehouseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceWithOptions(_ instanceId: String, _ request: DeleteInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstance",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstance(_ instanceId: String, _ request: DeleteInstanceRequest) async throws -> DeleteInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteInstanceWithOptions(instanceId as! String, request as! DeleteInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelResourceWithOptions(_ instanceId: String, _ request: DeleteModelResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aiInstanceId)) {
            query["aiInstanceId"] = request.aiInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModelResource",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/deleteModelResource",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelResource(_ instanceId: String, _ request: DeleteModelResourceRequest) async throws -> DeleteModelResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteModelResourceWithOptions(instanceId as! String, request as! DeleteModelResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelServiceWithOptions(_ instanceId: String, _ request: DeleteModelServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelServiceName)) {
            query["modelServiceName"] = request.modelServiceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModelService",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/deleteModelService",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelService(_ instanceId: String, _ request: DeleteModelServiceRequest) async throws -> DeleteModelServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteModelServiceWithOptions(instanceId as! String, request as! DeleteModelServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWarehouseScheduleTaskWithOptions(_ instanceId: String, _ request: DeleteWarehouseScheduleTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWarehouseScheduleTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warehouseId)) {
            body["warehouseId"] = request.warehouseId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWarehouseScheduleTask",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/deleteWarehouseScheduleTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWarehouseScheduleTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWarehouseScheduleTask(_ instanceId: String, _ request: DeleteWarehouseScheduleTaskRequest) async throws -> DeleteWarehouseScheduleTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWarehouseScheduleTaskWithOptions(instanceId as! String, request as! DeleteWarehouseScheduleTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableHiveAccessWithOptions(_ instanceId: String, _ request: DisableHiveAccessRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableHiveAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableHiveAccess",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/disableHiveAccess",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableHiveAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableHiveAccess(_ instanceId: String, _ request: DisableHiveAccessRequest) async throws -> DisableHiveAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableHiveAccessWithOptions(instanceId as! String, request as! DisableHiveAccessRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSSLWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableSSLResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableSSL",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/disableSSL",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableSSLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSSL(_ instanceId: String) async throws -> DisableSSLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableSSLWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableWarehouseAutoScaleWithOptions(_ instanceId: String, _ request: DisableWarehouseAutoScaleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableWarehouseAutoScaleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableWarehouseAutoScale",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/disableWarehouseAutoScale",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableWarehouseAutoScaleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableWarehouseAutoScale(_ instanceId: String, _ request: DisableWarehouseAutoScaleRequest) async throws -> DisableWarehouseAutoScaleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableWarehouseAutoScaleWithOptions(instanceId as! String, request as! DisableWarehouseAutoScaleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dropUserWithOptions(_ instanceId: String, _ request: DropUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DropUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.superUser)) {
            body["superUser"] = request.superUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["userName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DropUser",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/dropUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DropUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dropUser(_ instanceId: String, _ request: DropUserRequest) async throws -> DropUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await dropUserWithOptions(instanceId as! String, request as! DropUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableHiveAccessWithOptions(_ instanceId: String, _ request: EnableHiveAccessRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableHiveAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableHiveAccess",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/enableHiveAccess",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableHiveAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableHiveAccess(_ instanceId: String, _ request: EnableHiveAccessRequest) async throws -> EnableHiveAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableHiveAccessWithOptions(instanceId as! String, request as! EnableHiveAccessRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSSLWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableSSLResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableSSL",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/enableSSL",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableSSLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSSL(_ instanceId: String) async throws -> EnableSSLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableSSLWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableWarehouseAutoScaleWithOptions(_ instanceId: String, _ request: EnableWarehouseAutoScaleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableWarehouseAutoScaleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxClusterCount)) {
            body["maxClusterCount"] = request.maxClusterCount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableWarehouseAutoScale",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/enableWarehouseAutoScale",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableWarehouseAutoScaleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableWarehouseAutoScale(_ instanceId: String, _ request: EnableWarehouseAutoScaleRequest) async throws -> EnableWarehouseAutoScaleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableWarehouseAutoScaleWithOptions(instanceId as! String, request as! EnableWarehouseAutoScaleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCertificateAttributeWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCertificateAttributeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCertificateAttribute",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/certificateAttribute",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCertificateAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCertificateAttribute(_ instanceId: String) async throws -> GetCertificateAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCertificateAttributeWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstance",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstance(_ instanceId: String) async throws -> GetInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceModelWithOptions(_ instanceId: String, _ request: GetInstanceModelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceModelResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceModel",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/getInstanceModel",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceModel(_ instanceId: String, _ request: GetInstanceModelRequest) async throws -> GetInstanceModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceModelWithOptions(instanceId as! String, request as! GetInstanceModelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRootCertificateWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRootCertificateResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRootCertificate",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/rootCertificate",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRootCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRootCertificate(_ instanceId: String) async throws -> GetRootCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRootCertificateWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWarehouseDetailWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWarehouseDetailResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWarehouseDetail",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/getWarehouseDetail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWarehouseDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWarehouseDetail(_ instanceId: String) async throws -> GetWarehouseDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWarehouseDetailWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantDatabasePermissionWithOptions(_ instanceId: String, _ request: GrantDatabasePermissionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantDatabasePermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["databaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privileges)) {
            body["privileges"] = request.privileges ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["userName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantDatabasePermission",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/grantDatabasePermission",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantDatabasePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantDatabasePermission(_ instanceId: String, _ request: GrantDatabasePermissionRequest) async throws -> GrantDatabasePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await grantDatabasePermissionWithOptions(instanceId as! String, request as! GrantDatabasePermissionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantSchemaPermissionWithOptions(_ instanceId: String, _ request: GrantSchemaPermissionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantSchemaPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["databaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privileges)) {
            body["privileges"] = request.privileges ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            body["schemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["userName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantSchemaPermission",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/grantSchemaPermission",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantSchemaPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantSchemaPermission(_ instanceId: String, _ request: GrantSchemaPermissionRequest) async throws -> GrantSchemaPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await grantSchemaPermissionWithOptions(instanceId as! String, request as! GrantSchemaPermissionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantTablePermissionWithOptions(_ instanceId: String, _ request: GrantTablePermissionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantTablePermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allTable)) {
            body["allTable"] = request.allTable!;
        }
        if (!TeaUtils.Client.isUnset(request.columnNames)) {
            body["columnNames"] = request.columnNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["databaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privileges)) {
            body["privileges"] = request.privileges ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            body["schemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["tableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["userName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantTablePermission",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/grantTablePermission",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantTablePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantTablePermission(_ instanceId: String, _ request: GrantTablePermissionRequest) async throws -> GrantTablePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await grantTablePermissionWithOptions(instanceId as! String, request as! GrantTablePermissionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBackupDataWithOptions(_ request: ListBackupDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBackupDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupType)) {
            query["backupType"] = request.backupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["instanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBackupData",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/backups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBackupDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBackupData(_ request: ListBackupDataRequest) async throws -> ListBackupDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listBackupDataWithOptions(request as! ListBackupDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabasesWithOptions(_ instanceId: String, _ request: ListDatabasesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.external)) {
            query["external"] = request.external!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatabases",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/listDatabases",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabases(_ instanceId: String, _ request: ListDatabasesRequest) async throws -> ListDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDatabasesWithOptions(instanceId as! String, request as! ListDatabasesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceModelWithOptions(_ request: ListInstanceModelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceModelResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceModel",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/rpc/listInstanceModel",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceModel(_ request: ListInstanceModelRequest) async throws -> ListInstanceModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstanceModelWithOptions(request as! ListInstanceModelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithOptions(_ request: ListInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cmsInstanceType)) {
            body["cmsInstanceType"] = request.cmsInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstances",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstances(_ request: ListInstancesRequest) async throws -> ListInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstancesWithOptions(request as! ListInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelCatalogWithOptions(_ instanceId: String, _ request: ListModelCatalogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModelCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListModelCatalog",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/listModelCatalog",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModelCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelCatalog(_ instanceId: String, _ request: ListModelCatalogRequest) async throws -> ListModelCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listModelCatalogWithOptions(instanceId as! String, request as! ListModelCatalogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWarehouseScheduleEventWithOptions(_ instanceId: String, _ request: ListWarehouseScheduleEventRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWarehouseScheduleEventResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticType)) {
            body["elasticType"] = request.elasticType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWarehouseScheduleEvent",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/listWarehouseScheduleEvent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWarehouseScheduleEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWarehouseScheduleEvent(_ instanceId: String, _ request: ListWarehouseScheduleEventRequest) async throws -> ListWarehouseScheduleEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWarehouseScheduleEventWithOptions(instanceId as! String, request as! ListWarehouseScheduleEventRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWarehouseScheduleTaskWithOptions(_ instanceId: String, _ request: ListWarehouseScheduleTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWarehouseScheduleTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWarehouseScheduleTask",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/listWarehouseScheduleTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWarehouseScheduleTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWarehouseScheduleTask(_ instanceId: String, _ request: ListWarehouseScheduleTaskRequest) async throws -> ListWarehouseScheduleTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWarehouseScheduleTaskWithOptions(instanceId as! String, request as! ListWarehouseScheduleTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWarehousesWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWarehousesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWarehouses",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/listWarehouses",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWarehousesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWarehouses(_ instanceId: String) async throws -> ListWarehousesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWarehousesWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebalanceHoloWarehouseWithOptions(_ instanceId: String, _ request: RebalanceHoloWarehouseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RebalanceHoloWarehouseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebalanceHoloWarehouse",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/rebalanceHoloWarehouse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebalanceHoloWarehouseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebalanceHoloWarehouse(_ instanceId: String, _ request: RebalanceHoloWarehouseRequest) async throws -> RebalanceHoloWarehouseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rebalanceHoloWarehouseWithOptions(instanceId as! String, request as! RebalanceHoloWarehouseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renameHoloWarehouseWithOptions(_ instanceId: String, _ request: RenameHoloWarehouseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenameHoloWarehouseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newWarehouseName)) {
            body["newWarehouseName"] = request.newWarehouseName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenameHoloWarehouse",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/renameHoloWarehouse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenameHoloWarehouseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renameHoloWarehouse(_ instanceId: String, _ request: RenameHoloWarehouseRequest) async throws -> RenameHoloWarehouseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renameHoloWarehouseWithOptions(instanceId as! String, request as! RenameHoloWarehouseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewInstanceWithOptions(_ instanceId: String, _ request: RenewInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["autoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["duration"] = request.duration!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewInstance",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/renew",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewInstance(_ instanceId: String, _ request: RenewInstanceRequest) async throws -> RenewInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renewInstanceWithOptions(instanceId as! String, request as! RenewInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewSSLCertificateWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewSSLCertificateResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewSSLCertificate",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/renewSSLCertificate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewSSLCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewSSLCertificate(_ instanceId: String) async throws -> RenewSSLCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renewSSLCertificateWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartHoloWarehouseWithOptions(_ instanceId: String, _ request: RestartHoloWarehouseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartHoloWarehouseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartHoloWarehouse",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/restartHoloWarehouse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartHoloWarehouseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartHoloWarehouse(_ instanceId: String, _ request: RestartHoloWarehouseRequest) async throws -> RestartHoloWarehouseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartHoloWarehouseWithOptions(instanceId as! String, request as! RestartHoloWarehouseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartInstanceWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartInstance",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/restart",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartInstance(_ instanceId: String) async throws -> RestartInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartInstanceWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeHoloWarehouseWithOptions(_ instanceId: String, _ request: ResumeHoloWarehouseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeHoloWarehouseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeHoloWarehouse",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/resumeHoloWarehouse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeHoloWarehouseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeHoloWarehouse(_ instanceId: String, _ request: ResumeHoloWarehouseRequest) async throws -> ResumeHoloWarehouseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resumeHoloWarehouseWithOptions(instanceId as! String, request as! ResumeHoloWarehouseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeInstanceWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeInstance",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/resume",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeInstance(_ instanceId: String) async throws -> ResumeInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resumeInstanceWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeDatabasePermissionWithOptions(_ instanceId: String, _ request: RevokeDatabasePermissionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeDatabasePermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["databaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privileges)) {
            body["privileges"] = request.privileges ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["userName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeDatabasePermission",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/revokeDatabasePermission",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeDatabasePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeDatabasePermission(_ instanceId: String, _ request: RevokeDatabasePermissionRequest) async throws -> RevokeDatabasePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokeDatabasePermissionWithOptions(instanceId as! String, request as! RevokeDatabasePermissionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeSchemaPermissionWithOptions(_ instanceId: String, _ request: RevokeSchemaPermissionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeSchemaPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["databaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privileges)) {
            body["privileges"] = request.privileges ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            body["schemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["userName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeSchemaPermission",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/revokeSchemaPermission",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeSchemaPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeSchemaPermission(_ instanceId: String, _ request: RevokeSchemaPermissionRequest) async throws -> RevokeSchemaPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokeSchemaPermissionWithOptions(instanceId as! String, request as! RevokeSchemaPermissionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeTablePermissionWithOptions(_ instanceId: String, _ request: RevokeTablePermissionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeTablePermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allTable)) {
            body["allTable"] = request.allTable!;
        }
        if (!TeaUtils.Client.isUnset(request.columnNames)) {
            body["columnNames"] = request.columnNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["databaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privileges)) {
            body["privileges"] = request.privileges ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            body["schemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["tableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["userName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeTablePermission",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/revokeTablePermission",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeTablePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeTablePermission(_ instanceId: String, _ request: RevokeTablePermissionRequest) async throws -> RevokeTablePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokeTablePermissionWithOptions(instanceId as! String, request as! RevokeTablePermissionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleHoloWarehouseWithOptions(_ instanceId: String, _ request: ScaleHoloWarehouseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ScaleHoloWarehouseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterCount)) {
            body["clusterCount"] = request.clusterCount!;
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScaleHoloWarehouse",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/scaleHoloWarehouse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScaleHoloWarehouseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleHoloWarehouse(_ instanceId: String, _ request: ScaleHoloWarehouseRequest) async throws -> ScaleHoloWarehouseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await scaleHoloWarehouseWithOptions(instanceId as! String, request as! ScaleHoloWarehouseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleInstanceWithOptions(_ instanceId: String, _ request: ScaleInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ScaleInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coldStorageSize)) {
            body["coldStorageSize"] = request.coldStorageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.enableServerlessComputing)) {
            body["enableServerlessComputing"] = request.enableServerlessComputing!;
        }
        if (!TeaUtils.Client.isUnset(request.gatewayCount)) {
            body["gatewayCount"] = request.gatewayCount!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleType)) {
            body["scaleType"] = request.scaleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageSize)) {
            body["storageSize"] = request.storageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScaleInstance",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/scale",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScaleInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scaleInstance(_ instanceId: String, _ request: ScaleInstanceRequest) async throws -> ScaleInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await scaleInstanceWithOptions(instanceId as! String, request as! ScaleInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopInstanceWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopInstance",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopInstance(_ instanceId: String) async throws -> StopInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopInstanceWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendHoloWarehouseWithOptions(_ instanceId: String, _ request: SuspendHoloWarehouseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendHoloWarehouseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendHoloWarehouse",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/suspendHoloWarehouse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendHoloWarehouseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendHoloWarehouse(_ instanceId: String, _ request: SuspendHoloWarehouseRequest) async throws -> SuspendHoloWarehouseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await suspendHoloWarehouseWithOptions(instanceId as! String, request as! SuspendHoloWarehouseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceNameWithOptions(_ instanceId: String, _ request: UpdateInstanceNameRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceNameResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["instanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceName",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/instanceName",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceName(_ instanceId: String, _ request: UpdateInstanceNameRequest) async throws -> UpdateInstanceNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateInstanceNameWithOptions(instanceId as! String, request as! UpdateInstanceNameRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceNetworkTypeWithOptions(_ instanceId: String, _ request: UpdateInstanceNetworkTypeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceNetworkTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anyTunnelToSingleTunnel)) {
            body["anyTunnelToSingleTunnel"] = request.anyTunnelToSingleTunnel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkTypes)) {
            body["networkTypes"] = request.networkTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            body["vSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["vpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcOwnerId)) {
            body["vpcOwnerId"] = request.vpcOwnerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcRegionId)) {
            body["vpcRegionId"] = request.vpcRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceNetworkType",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/network",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceNetworkTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceNetworkType(_ instanceId: String, _ request: UpdateInstanceNetworkTypeRequest) async throws -> UpdateInstanceNetworkTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateInstanceNetworkTypeWithOptions(instanceId as! String, request as! UpdateInstanceNetworkTypeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelServiceWithOptions(_ instanceId: String, _ request: UpdateModelServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateModelServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.gpu)) {
            body["gpu"] = request.gpu!;
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            body["memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.modelServiceName)) {
            body["modelServiceName"] = request.modelServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelType)) {
            body["modelType"] = request.modelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCount)) {
            body["serviceCount"] = request.serviceCount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateModelService",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/updateModelService",
            "method": "PATCH",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateModelServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelService(_ instanceId: String, _ request: UpdateModelServiceRequest) async throws -> UpdateModelServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateModelServiceWithOptions(instanceId as! String, request as! UpdateModelServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWarehouseScheduleTaskWithOptions(_ instanceId: String, _ request: UpdateWarehouseScheduleTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWarehouseScheduleTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticCu)) {
            body["elasticCu"] = request.elasticCu!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warehouseId)) {
            body["warehouseId"] = request.warehouseId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWarehouseScheduleTask",
            "version": "2022-06-01",
            "protocol": "HTTPS",
            "pathname": "/api/v1/instances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/updateWarehouseScheduleTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWarehouseScheduleTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWarehouseScheduleTask(_ instanceId: String, _ request: UpdateWarehouseScheduleTaskRequest) async throws -> UpdateWarehouseScheduleTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWarehouseScheduleTaskWithOptions(instanceId as! String, request as! UpdateWarehouseScheduleTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
