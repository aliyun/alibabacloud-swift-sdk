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
        self._endpoint = try getEndpoint("adp", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addEnvironmentNodesWithOptions(_ uid: String, _ request: AddEnvironmentNodesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddEnvironmentNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationDisk)) {
            body["applicationDisk"] = request.applicationDisk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.dataDisk)) {
            body["dataDisk"] = request.dataDisk ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.etcdDisk)) {
            body["etcdDisk"] = request.etcdDisk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            body["hostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["labels"] = request.labels ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.masterPrivateIPs)) {
            body["masterPrivateIPs"] = request.masterPrivateIPs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            body["memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rootPassword)) {
            body["rootPassword"] = request.rootPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemDisk)) {
            body["systemDisk"] = request.systemDisk ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taints)) {
            body["taints"] = request.taints ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tridentSystemDisk)) {
            body["tridentSystemDisk"] = request.tridentSystemDisk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tridentSystemSizeDisk)) {
            body["tridentSystemSizeDisk"] = request.tridentSystemSizeDisk!;
        }
        if (!TeaUtils.Client.isUnset(request.workerPrivateIPs)) {
            body["workerPrivateIPs"] = request.workerPrivateIPs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddEnvironmentNodes",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/nodes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddEnvironmentNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addEnvironmentNodes(_ uid: String, _ request: AddEnvironmentNodesRequest) async throws -> AddEnvironmentNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addEnvironmentNodesWithOptions(uid as! String, request as! AddEnvironmentNodesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addEnvironmentProductVersionsWithOptions(_ uid: String, _ request: AddEnvironmentProductVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddEnvironmentProductVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productVersionInfoList)) {
            body["productVersionInfoList"] = request.productVersionInfoList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUIDList)) {
            body["productVersionUIDList"] = request.productVersionUIDList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddEnvironmentProductVersions",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/product-versions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddEnvironmentProductVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addEnvironmentProductVersions(_ uid: String, _ request: AddEnvironmentProductVersionsRequest) async throws -> AddEnvironmentProductVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addEnvironmentProductVersionsWithOptions(uid as! String, request as! AddEnvironmentProductVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProductComponentVersionWithOptions(_ uid: String, _ componentVersionUID: String, _ request: AddProductComponentVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddProductComponentVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentVersionSpecUID)) {
            body["componentVersionSpecUID"] = request.componentVersionSpecUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentVersionSpecValues)) {
            body["componentVersionSpecValues"] = request.componentVersionSpecValues ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseName)) {
            body["releaseName"] = request.releaseName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddProductComponentVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/integration/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/component-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(componentVersionUID),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddProductComponentVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProductComponentVersion(_ uid: String, _ componentVersionUID: String, _ request: AddProductComponentVersionRequest) async throws -> AddProductComponentVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addProductComponentVersionWithOptions(uid as! String, componentVersionUID as! String, request as! AddProductComponentVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProductVersionConfigWithOptions(_ uid: String, _ request: AddProductVersionConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddProductVersionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentReleaseName)) {
            body["componentReleaseName"] = request.componentReleaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentVersionUID)) {
            body["componentVersionUID"] = request.componentVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentComponentReleaseName)) {
            body["parentComponentReleaseName"] = request.parentComponentReleaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentComponentVersionUID)) {
            body["parentComponentVersionUID"] = request.parentComponentVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["value"] = request.value ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.valueType)) {
            body["valueType"] = request.valueType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddProductVersionConfig",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/configs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddProductVersionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProductVersionConfig(_ uid: String, _ request: AddProductVersionConfigRequest) async throws -> AddProductVersionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addProductVersionConfigWithOptions(uid as! String, request as! AddProductVersionConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addResourceSnapshotWithOptions(_ request: AddResourceSnapshotRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddResourceSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterUID)) {
            query["clusterUID"] = request.clusterUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            query["productVersionUID"] = request.productVersionUID ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddResourceSnapshot",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resource-snapshots",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddResourceSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addResourceSnapshot(_ request: AddResourceSnapshotRequest) async throws -> AddResourceSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addResourceSnapshotWithOptions(request as! AddResourceSnapshotRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAddEnvironmentNodesWithOptions(_ uid: String, _ request: BatchAddEnvironmentNodesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchAddEnvironmentNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceList)) {
            body["instanceList"] = request.instanceList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.overwrite)) {
            body["overwrite"] = request.overwrite!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchAddEnvironmentNodes",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/batch/nodes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchAddEnvironmentNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAddEnvironmentNodes(_ uid: String, _ request: BatchAddEnvironmentNodesRequest) async throws -> BatchAddEnvironmentNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchAddEnvironmentNodesWithOptions(uid as! String, request as! BatchAddEnvironmentNodesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAddProductVersionConfigWithOptions(_ uid: String, _ request: BatchAddProductVersionConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchAddProductVersionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productVersionConfigList)) {
            body["productVersionConfigList"] = request.productVersionConfigList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchAddProductVersionConfig",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/batch/configs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchAddProductVersionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAddProductVersionConfig(_ uid: String, _ request: BatchAddProductVersionConfigRequest) async throws -> BatchAddProductVersionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchAddProductVersionConfigWithOptions(uid as! String, request as! BatchAddProductVersionConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeliverableWithOptions(_ request: CreateDeliverableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeliverableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.foundation)) {
            body["foundation"] = request.foundation!;
        }
        if (!TeaUtils.Client.isUnset(request.products)) {
            body["products"] = request.products ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDeliverable",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/delivery/deliverables",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDeliverableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeliverable(_ request: CreateDeliverableRequest) async throws -> CreateDeliverableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDeliverableWithOptions(request as! CreateDeliverableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeliveryInstanceWithOptions(_ request: CreateDeliveryInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeliveryInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterUID)) {
            body["clusterUID"] = request.clusterUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliverableConfigUID)) {
            body["deliverableConfigUID"] = request.deliverableConfigUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliverableUID)) {
            body["deliverableUID"] = request.deliverableUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envUID)) {
            body["envUID"] = request.envUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.foundation)) {
            body["foundation"] = request.foundation!;
        }
        if (!TeaUtils.Client.isUnset(request.products)) {
            body["products"] = request.products ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateUID)) {
            body["templateUID"] = request.templateUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDeliveryInstance",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/delivery/delivery-instances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDeliveryInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeliveryInstance(_ request: CreateDeliveryInstanceRequest) async throws -> CreateDeliveryInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDeliveryInstanceWithOptions(request as! CreateDeliveryInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeliveryPackageWithOptions(_ request: CreateDeliveryPackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeliveryPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deliverableUID)) {
            body["deliverableUID"] = request.deliverableUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryInstanceUID)) {
            body["deliveryInstanceUID"] = request.deliveryInstanceUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originDeliverableUID)) {
            body["originDeliverableUID"] = request.originDeliverableUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageContentType)) {
            body["packageContentType"] = request.packageContentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            body["packageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["platform"] = request.platform ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDeliveryPackage",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/delivery/delivery-packages",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDeliveryPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeliveryPackage(_ request: CreateDeliveryPackageRequest) async throws -> CreateDeliveryPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDeliveryPackageWithOptions(request as! CreateDeliveryPackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnvironmentWithOptions(_ request: CreateEnvironmentRequest, _ headers: CreateEnvironmentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEnvironmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotations)) {
            body["annotations"] = request.annotations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredAt)) {
            body["expiredAt"] = request.expiredAt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.location)) {
            body["location"] = request.location ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["platform"] = request.platform!;
        }
        if (!TeaUtils.Client.isUnset(request.platformList)) {
            body["platformList"] = request.platformList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            body["productVersionUID"] = request.productVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendorConfig)) {
            body["vendorConfig"] = request.vendorConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendorType)) {
            body["vendorType"] = request.vendorType ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.clientToken)) {
            realHeaders["ClientToken"] = TeaUtils.Client.toJSONString(headers.clientToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEnvironment",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEnvironmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnvironment(_ request: CreateEnvironmentRequest) async throws -> CreateEnvironmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateEnvironmentHeaders = CreateEnvironmentHeaders([:])
        return try await createEnvironmentWithOptions(request as! CreateEnvironmentRequest, headers as! CreateEnvironmentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnvironmentLicenseWithOptions(_ uid: String, _ request: CreateEnvironmentLicenseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEnvironmentLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.companyName)) {
            body["companyName"] = request.companyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contact)) {
            body["contact"] = request.contact ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            body["expireTime"] = request.expireTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseQuota)) {
            body["licenseQuota"] = request.licenseQuota!;
        }
        if (!TeaUtils.Client.isUnset(request.machineFingerprint)) {
            body["machineFingerprint"] = request.machineFingerprint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            body["productVersionUID"] = request.productVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEnvironmentLicense",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/licenses",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEnvironmentLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEnvironmentLicense(_ uid: String, _ request: CreateEnvironmentLicenseRequest) async throws -> CreateEnvironmentLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createEnvironmentLicenseWithOptions(uid as! String, request as! CreateEnvironmentLicenseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFoundationReferenceWithOptions(_ request: CreateFoundationReferenceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFoundationReferenceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterConfig)) {
            body["clusterConfig"] = request.clusterConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentConfigs)) {
            body["componentConfigs"] = request.componentConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.foundationReferenceConfigs)) {
            body["foundationReferenceConfigs"] = request.foundationReferenceConfigs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.foundationVersionUID)) {
            body["foundationVersionUID"] = request.foundationVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originFoundationReferenceUID)) {
            body["originFoundationReferenceUID"] = request.originFoundationReferenceUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFoundationReference",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/foundation-references",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFoundationReferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFoundationReference(_ request: CreateFoundationReferenceRequest) async throws -> CreateFoundationReferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFoundationReferenceWithOptions(request as! CreateFoundationReferenceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductWithOptions(_ request: CreateProductRequest, _ headers: CreateProductHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProductResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categories)) {
            body["categories"] = request.categories ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.foundationVersionUID)) {
            body["foundationVersionUID"] = request.foundationVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            body["productName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["vendor"] = request.vendor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withoutProductVersion)) {
            body["withoutProductVersion"] = request.withoutProductVersion!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.clientToken)) {
            realHeaders["ClientToken"] = TeaUtils.Client.toJSONString(headers.clientToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProduct",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/integration/api/v2/products",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProduct(_ request: CreateProductRequest) async throws -> CreateProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateProductHeaders = CreateProductHeaders([:])
        return try await createProductWithOptions(request as! CreateProductRequest, headers as! CreateProductHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductDeploymentWithOptions(_ request: CreateProductDeploymentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProductDeploymentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environmentUID)) {
            body["environmentUID"] = request.environmentUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            body["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oldProductVersionUID)) {
            body["oldProductVersionUID"] = request.oldProductVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageConfig)) {
            body["packageConfig"] = request.packageConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageUID)) {
            body["packageUID"] = request.packageUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            body["productVersionUID"] = request.productVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            body["timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProductDeployment",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-instances/deployments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProductDeploymentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductDeployment(_ request: CreateProductDeploymentRequest) async throws -> CreateProductDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProductDeploymentWithOptions(request as! CreateProductDeploymentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductVersionWithOptions(_ uid: String, _ request: CreateProductVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProductVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseProductVersionUID)) {
            query["baseProductVersionUID"] = request.baseProductVersionUID ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withoutBaseProductVersion)) {
            body["withoutBaseProductVersion"] = request.withoutBaseProductVersion!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProductVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/integration/api/v2/products/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/versions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProductVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductVersion(_ uid: String, _ request: CreateProductVersionRequest) async throws -> CreateProductVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProductVersionWithOptions(uid as! String, request as! CreateProductVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductVersionPackageWithOptions(_ uid: String, _ request: CreateProductVersionPackageRequest, _ headers: CreateProductVersionPackageHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProductVersionPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterEngineType)) {
            query["clusterEngineType"] = request.clusterEngineType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.foundationReferenceUID)) {
            query["foundationReferenceUID"] = request.foundationReferenceUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oldFoundationReferenceUID)) {
            query["oldFoundationReferenceUID"] = request.oldFoundationReferenceUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oldProductVersionUID)) {
            query["oldProductVersionUID"] = request.oldProductVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageContentType)) {
            query["packageContentType"] = request.packageContentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageToolType)) {
            query["packageToolType"] = request.packageToolType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            query["packageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["platform"] = request.platform ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.clientToken)) {
            realHeaders["ClientToken"] = TeaUtils.Client.toJSONString(headers.clientToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProductVersionPackage",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/hosting/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/packages",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProductVersionPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductVersionPackage(_ uid: String, _ request: CreateProductVersionPackageRequest) async throws -> CreateProductVersionPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateProductVersionPackageHeaders = CreateProductVersionPackageHeaders([:])
        return try await createProductVersionPackageWithOptions(uid as! String, request as! CreateProductVersionPackageRequest, headers as! CreateProductVersionPackageHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnvironmentWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEnvironmentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEnvironment",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEnvironmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnvironment(_ uid: String) async throws -> DeleteEnvironmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEnvironmentWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnvironmentLicenseWithOptions(_ uid: String, _ licenseUID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEnvironmentLicenseResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEnvironmentLicense",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/licenses/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(licenseUID),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEnvironmentLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnvironmentLicense(_ uid: String, _ licenseUID: String) async throws -> DeleteEnvironmentLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEnvironmentLicenseWithOptions(uid as! String, licenseUID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnvironmentNodeWithOptions(_ uid: String, _ nodeUID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEnvironmentNodeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEnvironmentNode",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/nodes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nodeUID),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEnvironmentNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnvironmentNode(_ uid: String, _ nodeUID: String) async throws -> DeleteEnvironmentNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEnvironmentNodeWithOptions(uid as! String, nodeUID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnvironmentProductVersionWithOptions(_ uid: String, _ productVersionUID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEnvironmentProductVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEnvironmentProductVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(productVersionUID),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEnvironmentProductVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEnvironmentProductVersion(_ uid: String, _ productVersionUID: String) async throws -> DeleteEnvironmentProductVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEnvironmentProductVersionWithOptions(uid as! String, productVersionUID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProductResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProduct",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/integration/api/v2/products/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProduct(_ uid: String) async throws -> DeleteProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProductWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductComponentVersionWithOptions(_ uid: String, _ relationUID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProductComponentVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProductComponentVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/relations/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(relationUID),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProductComponentVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductComponentVersion(_ uid: String, _ relationUID: String) async throws -> DeleteProductComponentVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProductComponentVersionWithOptions(uid as! String, relationUID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductInstanceConfigWithOptions(_ configUID: String, _ request: DeleteProductInstanceConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProductInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environmentUID)) {
            query["environmentUID"] = request.environmentUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            query["productVersionUID"] = request.productVersionUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProductInstanceConfig",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-instances/configs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(configUID),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProductInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductInstanceConfig(_ configUID: String, _ request: DeleteProductInstanceConfigRequest) async throws -> DeleteProductInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProductInstanceConfigWithOptions(configUID as! String, request as! DeleteProductInstanceConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductVersionWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProductVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProductVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProductVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductVersion(_ uid: String) async throws -> DeleteProductVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProductVersionWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductVersionConfigWithOptions(_ uid: String, _ configUID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProductVersionConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProductVersionConfig",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/configs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(configUID),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProductVersionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductVersionConfig(_ uid: String, _ configUID: String) async throws -> DeleteProductVersionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProductVersionConfigWithOptions(uid as! String, configUID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateProductInstanceDeploymentConfigWithOptions(_ request: GenerateProductInstanceDeploymentConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateProductInstanceDeploymentConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environmentUID)) {
            body["environmentUID"] = request.environmentUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageContentType)) {
            body["packageContentType"] = request.packageContentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageUID)) {
            body["packageUID"] = request.packageUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            body["productVersionUID"] = request.productVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUIDList)) {
            body["productVersionUIDList"] = request.productVersionUIDList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateProductInstanceDeploymentConfig",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-instances/package-configs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateProductInstanceDeploymentConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateProductInstanceDeploymentConfig(_ request: GenerateProductInstanceDeploymentConfigRequest) async throws -> GenerateProductInstanceDeploymentConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateProductInstanceDeploymentConfigWithOptions(request as! GenerateProductInstanceDeploymentConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComponentWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetComponentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetComponent",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/components/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetComponentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComponent(_ uid: String) async throws -> GetComponentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getComponentWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComponentVersionWithOptions(_ uid: String, _ versionUID: String, _ request: GetComponentVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetComponentVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.withoutChartContent)) {
            query["withoutChartContent"] = request.withoutChartContent!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetComponentVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/integration/api/v2/components/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(versionUID),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetComponentVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComponentVersion(_ uid: String, _ versionUID: String, _ request: GetComponentVersionRequest) async throws -> GetComponentVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getComponentVersionWithOptions(uid as! String, versionUID as! String, request as! GetComponentVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeliverableWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeliverableResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeliverable",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/delivery/deliverables/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeliverableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeliverable(_ uid: String) async throws -> GetDeliverableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDeliverableWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeliveryPackageWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeliveryPackageResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeliveryPackage",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/delivery/delivery-packages/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeliveryPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeliveryPackage(_ uid: String) async throws -> GetDeliveryPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDeliveryPackageWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironmentWithOptions(_ uid: String, _ tmpReq: GetEnvironmentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnvironmentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetEnvironmentShrinkRequest = GetEnvironmentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.options)) {
            request.optionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.options, "options", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.optionsShrink)) {
            query["options"] = request.optionsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnvironment",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnvironmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironment(_ uid: String, _ request: GetEnvironmentRequest) async throws -> GetEnvironmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEnvironmentWithOptions(uid as! String, request as! GetEnvironmentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironmentDeliveryInstanceWithOptions(_ request: GetEnvironmentDeliveryInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnvironmentDeliveryInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterUID)) {
            query["clusterUID"] = request.clusterUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envUID)) {
            query["envUID"] = request.envUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnvironmentDeliveryInstance",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/delivery/delivery-instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnvironmentDeliveryInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironmentDeliveryInstance(_ request: GetEnvironmentDeliveryInstanceRequest) async throws -> GetEnvironmentDeliveryInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEnvironmentDeliveryInstanceWithOptions(request as! GetEnvironmentDeliveryInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironmentLicenseWithOptions(_ uid: String, _ licenseUID: String, _ tmpReq: GetEnvironmentLicenseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnvironmentLicenseResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetEnvironmentLicenseShrinkRequest = GetEnvironmentLicenseShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.options)) {
            request.optionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.options, "options", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.optionsShrink)) {
            query["options"] = request.optionsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnvironmentLicense",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/licenses/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(licenseUID),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnvironmentLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironmentLicense(_ uid: String, _ licenseUID: String, _ request: GetEnvironmentLicenseRequest) async throws -> GetEnvironmentLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEnvironmentLicenseWithOptions(uid as! String, licenseUID as! String, request as! GetEnvironmentLicenseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironmentNodeWithOptions(_ uid: String, _ nodeUID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnvironmentNodeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnvironmentNode",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/nodes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nodeUID),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnvironmentNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnvironmentNode(_ uid: String, _ nodeUID: String) async throws -> GetEnvironmentNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEnvironmentNodeWithOptions(uid as! String, nodeUID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFoundationComponentReferenceWithOptions(_ componentReferenceUID: String, _ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFoundationComponentReferenceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFoundationComponentReference",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/foundation-references/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/components/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(componentReferenceUID),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFoundationComponentReferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFoundationComponentReference(_ componentReferenceUID: String, _ uid: String) async throws -> GetFoundationComponentReferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFoundationComponentReferenceWithOptions(componentReferenceUID as! String, uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFoundationReferenceWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFoundationReferenceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFoundationReference",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/foundation-references/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/info",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFoundationReferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFoundationReference(_ uid: String) async throws -> GetFoundationReferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFoundationReferenceWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFoundationVersionWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFoundationVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFoundationVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/foundation/versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFoundationVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFoundationVersion(_ uid: String) async throws -> GetFoundationVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFoundationVersionWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductWithOptions(_ uid: String, _ request: GetProductRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.withIconURL)) {
            query["withIconURL"] = request.withIconURL!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProduct",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/products/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProduct(_ uid: String, _ request: GetProductRequest) async throws -> GetProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProductWithOptions(uid as! String, request as! GetProductRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductComponentVersionWithOptions(_ relationUID: String, _ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProductComponentVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProductComponentVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/integration/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/relations/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(relationUID),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProductComponentVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductComponentVersion(_ relationUID: String, _ uid: String) async throws -> GetProductComponentVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProductComponentVersionWithOptions(relationUID as! String, uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductDeploymentWithOptions(_ deploymentUID: String, _ request: GetProductDeploymentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProductDeploymentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environmentUID)) {
            query["environmentUID"] = request.environmentUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            query["productVersionUID"] = request.productVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withParamConfig)) {
            query["withParamConfig"] = request.withParamConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProductDeployment",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-instances/deployments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentUID),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProductDeploymentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductDeployment(_ deploymentUID: String, _ request: GetProductDeploymentRequest) async throws -> GetProductDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProductDeploymentWithOptions(deploymentUID as! String, request as! GetProductDeploymentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductVersionWithOptions(_ uid: String, _ request: GetProductVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProductVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.withDocumentationURL)) {
            query["withDocumentationURL"] = request.withDocumentationURL!;
        }
        if (!TeaUtils.Client.isUnset(request.withExtendResourceURL)) {
            query["withExtendResourceURL"] = request.withExtendResourceURL!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProductVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProductVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductVersion(_ uid: String, _ request: GetProductVersionRequest) async throws -> GetProductVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProductVersionWithOptions(uid as! String, request as! GetProductVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductVersionDifferencesWithOptions(_ uid: String, _ versionUID: String, _ request: GetProductVersionDifferencesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProductVersionDifferencesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.preVersionUID)) {
            query["preVersionUID"] = request.preVersionUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProductVersionDifferences",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/integration/api/v2/products/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(versionUID) + "/differences",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProductVersionDifferencesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductVersionDifferences(_ uid: String, _ versionUID: String, _ request: GetProductVersionDifferencesRequest) async throws -> GetProductVersionDifferencesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProductVersionDifferencesWithOptions(uid as! String, versionUID as! String, request as! GetProductVersionDifferencesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductVersionPackageWithOptions(_ uid: String, _ request: GetProductVersionPackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProductVersionPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.foundationReferenceUID)) {
            query["foundationReferenceUID"] = request.foundationReferenceUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oldFoundationReferenceUID)) {
            query["oldFoundationReferenceUID"] = request.oldFoundationReferenceUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oldProductVersionUID)) {
            query["oldProductVersionUID"] = request.oldProductVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageContentType)) {
            query["packageContentType"] = request.packageContentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            query["packageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.packageUID)) {
            query["packageUID"] = request.packageUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withURL)) {
            query["withURL"] = request.withURL!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProductVersionPackage",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/hosting/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/packages",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProductVersionPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductVersionPackage(_ uid: String, _ request: GetProductVersionPackageRequest) async throws -> GetProductVersionPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProductVersionPackageWithOptions(uid as! String, request as! GetProductVersionPackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceSnapshotWithOptions(_ request: GetResourceSnapshotRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            query["productVersionUID"] = request.productVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceSnapshot",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resource-snapshots",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceSnapshot(_ request: GetResourceSnapshotRequest) async throws -> GetResourceSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceSnapshotWithOptions(request as! GetResourceSnapshotRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkflowStatusWithOptions(_ request: GetWorkflowStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkflowStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workflowType)) {
            query["workflowType"] = request.workflowType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.xuid)) {
            query["xuid"] = request.xuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkflowStatus",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/workflows/status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkflowStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkflowStatus(_ request: GetWorkflowStatusRequest) async throws -> GetWorkflowStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkflowStatusWithOptions(request as! GetWorkflowStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initEnvironmentResourceWithOptions(_ uid: String, _ request: InitEnvironmentResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InitEnvironmentResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessKeyID)) {
            body["accessKeyID"] = request.accessKeyID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessKeySecret)) {
            body["accessKeySecret"] = request.accessKeySecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            body["securityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitEnvironmentResource",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/resources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitEnvironmentResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initEnvironmentResource(_ uid: String, _ request: InitEnvironmentResourceRequest) async throws -> InitEnvironmentResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await initEnvironmentResourceWithOptions(uid as! String, request as! InitEnvironmentResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComponentVersionsWithOptions(_ uid: String, _ tmpReq: ListComponentVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListComponentVersionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListComponentVersionsShrinkRequest = ListComponentVersionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.platforms)) {
            request.platformsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.platforms, "platforms", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.platformsShrink)) {
            query["platforms"] = request.platformsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListComponentVersions",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/components/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListComponentVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComponentVersions(_ uid: String, _ request: ListComponentVersionsRequest) async throws -> ListComponentVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listComponentVersionsWithOptions(uid as! String, request as! ListComponentVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComponentsWithOptions(_ request: ListComponentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListComponentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzy)) {
            query["fuzzy"] = request.fuzzy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.public_)) {
            query["public"] = request.public_!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListComponents",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/components",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListComponentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComponents(_ request: ListComponentsRequest) async throws -> ListComponentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listComponentsWithOptions(request as! ListComponentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeliveryInstanceChangeRecordsWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeliveryInstanceChangeRecordsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeliveryInstanceChangeRecords",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/delivery/delivery-instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/delivery-records",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeliveryInstanceChangeRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeliveryInstanceChangeRecords(_ uid: String) async throws -> ListDeliveryInstanceChangeRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDeliveryInstanceChangeRecordsWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeliveryPackageWithOptions(_ request: ListDeliveryPackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeliveryPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deliverableUID)) {
            query["deliverableUID"] = request.deliverableUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["platform"] = request.platform ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeliveryPackage",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/delivery/delivery-packages",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeliveryPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeliveryPackage(_ request: ListDeliveryPackageRequest) async throws -> ListDeliveryPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDeliveryPackageWithOptions(request as! ListDeliveryPackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnvironmentLicensesWithOptions(_ uid: String, _ request: ListEnvironmentLicensesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnvironmentLicensesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnvironmentLicenses",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/licenses",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEnvironmentLicensesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnvironmentLicenses(_ uid: String, _ request: ListEnvironmentLicensesRequest) async throws -> ListEnvironmentLicensesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEnvironmentLicensesWithOptions(uid as! String, request as! ListEnvironmentLicensesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnvironmentNodesWithOptions(_ uid: String, _ request: ListEnvironmentNodesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnvironmentNodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnvironmentNodes",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/nodes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEnvironmentNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnvironmentNodes(_ uid: String, _ request: ListEnvironmentNodesRequest) async throws -> ListEnvironmentNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEnvironmentNodesWithOptions(uid as! String, request as! ListEnvironmentNodesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnvironmentTunnelsWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnvironmentTunnelsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnvironmentTunnels",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/tunnels",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEnvironmentTunnelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnvironmentTunnels(_ uid: String) async throws -> ListEnvironmentTunnelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEnvironmentTunnelsWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnvironmentsWithOptions(_ request: ListEnvironmentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnvironmentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterUID)) {
            query["clusterUID"] = request.clusterUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpoint)) {
            query["endpoint"] = request.endpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.foundationType)) {
            query["foundationType"] = request.foundationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzy)) {
            query["fuzzy"] = request.fuzzy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceStatus)) {
            query["instanceStatus"] = request.instanceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendorType)) {
            query["vendorType"] = request.vendorType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnvironments",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEnvironmentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnvironments(_ request: ListEnvironmentsRequest) async throws -> ListEnvironmentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEnvironmentsWithOptions(request as! ListEnvironmentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFoundationComponentVersionsWithOptions(_ uid: String, _ request: ListFoundationComponentVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFoundationComponentVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.onlyEnabled)) {
            query["onlyEnabled"] = request.onlyEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.parentComponentRelationUID)) {
            query["parentComponentRelationUID"] = request.parentComponentRelationUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFoundationComponentVersions",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/foundation/versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/component-versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFoundationComponentVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFoundationComponentVersions(_ uid: String, _ request: ListFoundationComponentVersionsRequest) async throws -> ListFoundationComponentVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFoundationComponentVersionsWithOptions(uid as! String, request as! ListFoundationComponentVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFoundationReferenceComponentsWithOptions(_ request: ListFoundationReferenceComponentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFoundationReferenceComponentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.foundationReferenceUID)) {
            query["foundationReferenceUID"] = request.foundationReferenceUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.foundationVersionUID)) {
            query["foundationVersionUID"] = request.foundationVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onlyEnabled)) {
            query["onlyEnabled"] = request.onlyEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.parentComponentReferenceUID)) {
            query["parentComponentReferenceUID"] = request.parentComponentReferenceUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            query["productVersionUID"] = request.productVersionUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFoundationReferenceComponents",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/foundation-references/component-versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFoundationReferenceComponentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFoundationReferenceComponents(_ request: ListFoundationReferenceComponentsRequest) async throws -> ListFoundationReferenceComponentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFoundationReferenceComponentsWithOptions(request as! ListFoundationReferenceComponentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFoundationVersionsWithOptions(_ request: ListFoundationVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFoundationVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.onlyDefault)) {
            query["onlyDefault"] = request.onlyDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortDirect)) {
            query["sortDirect"] = request.sortDirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortKey)) {
            query["sortKey"] = request.sortKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFoundationVersions",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/foundation/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFoundationVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFoundationVersions(_ request: ListFoundationVersionsRequest) async throws -> ListFoundationVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFoundationVersionsWithOptions(request as! ListFoundationVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductComponentVersionsWithOptions(_ uid: String, _ request: ListProductComponentVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductComponentVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseName)) {
            query["releaseName"] = request.releaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortDirect)) {
            query["sortDirect"] = request.sortDirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortKey)) {
            query["sortKey"] = request.sortKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductComponentVersions",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/component-versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductComponentVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductComponentVersions(_ uid: String, _ request: ListProductComponentVersionsRequest) async throws -> ListProductComponentVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductComponentVersionsWithOptions(uid as! String, request as! ListProductComponentVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductDeploymentsWithOptions(_ request: ListProductDeploymentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductDeploymentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environmentUID)) {
            query["environmentUID"] = request.environmentUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            query["productVersionUID"] = request.productVersionUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductDeployments",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-instances/deployments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductDeploymentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductDeployments(_ request: ListProductDeploymentsRequest) async throws -> ListProductDeploymentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductDeploymentsWithOptions(request as! ListProductDeploymentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductEnvironmentsWithOptions(_ uid: String, _ tmpReq: ListProductEnvironmentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductEnvironmentsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListProductEnvironmentsShrinkRequest = ListProductEnvironmentsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.options)) {
            request.optionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.options, "options", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.platforms)) {
            request.platformsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.platforms, "platforms", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compatibleProductVersionUID)) {
            query["compatibleProductVersionUID"] = request.compatibleProductVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envType)) {
            query["envType"] = request.envType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionsShrink)) {
            query["options"] = request.optionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platformsShrink)) {
            query["platforms"] = request.platformsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionSpecUID)) {
            query["productVersionSpecUID"] = request.productVersionSpecUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            query["productVersionUID"] = request.productVersionUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductEnvironments",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/hosting/products/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/environments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductEnvironmentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductEnvironments(_ uid: String, _ request: ListProductEnvironmentsRequest) async throws -> ListProductEnvironmentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductEnvironmentsWithOptions(uid as! String, request as! ListProductEnvironmentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductFoundationReferencesWithOptions(_ uid: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductFoundationReferencesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductFoundationReferences",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/foundation-references",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductFoundationReferencesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductFoundationReferences(_ uid: String) async throws -> ListProductFoundationReferencesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductFoundationReferencesWithOptions(uid as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductInstanceConfigsWithOptions(_ request: ListProductInstanceConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductInstanceConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentReleaseName)) {
            query["componentReleaseName"] = request.componentReleaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentUID)) {
            query["environmentUID"] = request.environmentUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzy)) {
            query["fuzzy"] = request.fuzzy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["paramType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameter)) {
            query["parameter"] = request.parameter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            query["productVersionUID"] = request.productVersionUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductInstanceConfigs",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-instances/configs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductInstanceConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductInstanceConfigs(_ request: ListProductInstanceConfigsRequest) async throws -> ListProductInstanceConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductInstanceConfigsWithOptions(request as! ListProductInstanceConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductInstancesWithOptions(_ tmpReq: ListProductInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListProductInstancesShrinkRequest = ListProductInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.options)) {
            request.optionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.options, "options", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.envUID)) {
            query["envUID"] = request.envUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionsShrink)) {
            query["options"] = request.optionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            query["productVersionUID"] = request.productVersionUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductInstances",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductInstances(_ request: ListProductInstancesRequest) async throws -> ListProductInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductInstancesWithOptions(request as! ListProductInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductVersionConfigsWithOptions(_ uid: String, _ request: ListProductVersionConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductVersionConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentReleaseName)) {
            query["componentReleaseName"] = request.componentReleaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configType)) {
            query["configType"] = request.configType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzy)) {
            query["fuzzy"] = request.fuzzy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameter)) {
            query["parameter"] = request.parameter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["scope"] = request.scope ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductVersionConfigs",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/configs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductVersionConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductVersionConfigs(_ uid: String, _ request: ListProductVersionConfigsRequest) async throws -> ListProductVersionConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductVersionConfigsWithOptions(uid as! String, request as! ListProductVersionConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductVersionsWithOptions(_ tmpReq: ListProductVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductVersionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListProductVersionsShrinkRequest = ListProductVersionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.platforms)) {
            request.platformsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.platforms, "platforms", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.supportedFoundationTypes)) {
            request.supportedFoundationTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.supportedFoundationTypes, "supportedFoundationTypes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fuzzy)) {
            query["fuzzy"] = request.fuzzy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platformsShrink)) {
            query["platforms"] = request.platformsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            query["productName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productUID)) {
            query["productUID"] = request.productUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.released)) {
            query["released"] = request.released!;
        }
        if (!TeaUtils.Client.isUnset(request.supportedFoundationTypesShrink)) {
            query["supportedFoundationTypes"] = request.supportedFoundationTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductVersions",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductVersions(_ request: ListProductVersionsRequest) async throws -> ListProductVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductVersionsWithOptions(request as! ListProductVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductsWithOptions(_ request: ListProductsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzy)) {
            query["fuzzy"] = request.fuzzy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProducts",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/products",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProducts(_ request: ListProductsRequest) async throws -> ListProductsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductsWithOptions(request as! ListProductsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkflowTaskLogsWithOptions(_ stepName: String, _ taskName: String, _ tmpReq: ListWorkflowTaskLogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkflowTaskLogsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListWorkflowTaskLogsShrinkRequest = ListWorkflowTaskLogsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterValues)) {
            request.filterValuesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterValues, "filterValues", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterValuesShrink)) {
            query["filterValues"] = request.filterValuesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["orderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.workflowType)) {
            query["workflowType"] = request.workflowType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.xuid)) {
            query["xuid"] = request.xuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkflowTaskLogs",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/workflows/steps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(stepName) + "/tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskName) + "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkflowTaskLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkflowTaskLogs(_ stepName: String, _ taskName: String, _ request: ListWorkflowTaskLogsRequest) async throws -> ListWorkflowTaskLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkflowTaskLogsWithOptions(stepName as! String, taskName as! String, request as! ListWorkflowTaskLogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putEnvironmentTunnelWithOptions(_ uid: String, _ request: PutEnvironmentTunnelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PutEnvironmentTunnelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tunnelConfig)) {
            body["tunnelConfig"] = request.tunnelConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.tunnelType)) {
            body["tunnelType"] = request.tunnelType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutEnvironmentTunnel",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/tunnels",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutEnvironmentTunnelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putEnvironmentTunnel(_ uid: String, _ request: PutEnvironmentTunnelRequest) async throws -> PutEnvironmentTunnelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await putEnvironmentTunnelWithOptions(uid as! String, request as! PutEnvironmentTunnelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putProductInstanceConfigWithOptions(_ request: PutProductInstanceConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PutProductInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentUID)) {
            body["componentUID"] = request.componentUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentVersionUID)) {
            body["componentVersionUID"] = request.componentVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configUID)) {
            body["configUID"] = request.configUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentUID)) {
            body["environmentUID"] = request.environmentUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentComponentName)) {
            body["parentComponentName"] = request.parentComponentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentComponentVersionUID)) {
            body["parentComponentVersionUID"] = request.parentComponentVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            body["productVersionUID"] = request.productVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseName)) {
            body["releaseName"] = request.releaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["value"] = request.value ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.valueType)) {
            body["valueType"] = request.valueType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutProductInstanceConfig",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-instances/configs",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutProductInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putProductInstanceConfig(_ request: PutProductInstanceConfigRequest) async throws -> PutProductInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await putProductInstanceConfigWithOptions(request as! PutProductInstanceConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setEnvironmentFoundationReferenceWithOptions(_ uid: String, _ foundationReferenceUID: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SetEnvironmentFoundationReferenceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetEnvironmentFoundationReference",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/foundation-references/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(foundationReferenceUID),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetEnvironmentFoundationReferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setEnvironmentFoundationReference(_ uid: String, _ foundationReferenceUID: String) async throws -> SetEnvironmentFoundationReferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await setEnvironmentFoundationReferenceWithOptions(uid as! String, foundationReferenceUID as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeliverableWithOptions(_ uid: String, _ request: UpdateDeliverableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeliverableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.foundation)) {
            body["foundation"] = request.foundation!;
        }
        if (!TeaUtils.Client.isUnset(request.products)) {
            body["products"] = request.products ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDeliverable",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/delivery/deliverables/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDeliverableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeliverable(_ uid: String, _ request: UpdateDeliverableRequest) async throws -> UpdateDeliverableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDeliverableWithOptions(uid as! String, request as! UpdateDeliverableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeliveryInstanceWithOptions(_ uid: String, _ request: UpdateDeliveryInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeliveryInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deliverableConfigUID)) {
            body["deliverableConfigUID"] = request.deliverableConfigUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliverableUID)) {
            body["deliverableUID"] = request.deliverableUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desc)) {
            body["desc"] = request.desc ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDeliveryInstance",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/delivery/delivery-instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDeliveryInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeliveryInstance(_ uid: String, _ request: UpdateDeliveryInstanceRequest) async throws -> UpdateDeliveryInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDeliveryInstanceWithOptions(uid as! String, request as! UpdateDeliveryInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEnvironmentWithOptions(_ uid: String, _ request: UpdateEnvironmentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEnvironmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.advancedConfigs)) {
            body["advancedConfigs"] = request.advancedConfigs!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.location)) {
            body["location"] = request.location ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendorConfig)) {
            body["vendorConfig"] = request.vendorConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEnvironment",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEnvironmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEnvironment(_ uid: String, _ request: UpdateEnvironmentRequest) async throws -> UpdateEnvironmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEnvironmentWithOptions(uid as! String, request as! UpdateEnvironmentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEnvironmentNodeWithOptions(_ uid: String, _ nodeUID: String, _ request: UpdateEnvironmentNodeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEnvironmentNodeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationDisk)) {
            body["applicationDisk"] = request.applicationDisk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.etcdDisk)) {
            body["etcdDisk"] = request.etcdDisk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["labels"] = request.labels ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.rootPassword)) {
            body["rootPassword"] = request.rootPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taints)) {
            body["taints"] = request.taints ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tridentSystemDisk)) {
            body["tridentSystemDisk"] = request.tridentSystemDisk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tridentSystemSizeDisk)) {
            body["tridentSystemSizeDisk"] = request.tridentSystemSizeDisk!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEnvironmentNode",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/nodes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nodeUID),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEnvironmentNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEnvironmentNode(_ uid: String, _ nodeUID: String, _ request: UpdateEnvironmentNodeRequest) async throws -> UpdateEnvironmentNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEnvironmentNodeWithOptions(uid as! String, nodeUID as! String, request as! UpdateEnvironmentNodeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEnvironmentProductVersionWithOptions(_ uid: String, _ request: UpdateEnvironmentProductVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEnvironmentProductVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.oldProductVersionSpecUID)) {
            body["oldProductVersionSpecUID"] = request.oldProductVersionSpecUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oldProductVersionUID)) {
            body["oldProductVersionUID"] = request.oldProductVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionSpecUID)) {
            body["productVersionSpecUID"] = request.productVersionSpecUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productVersionUID)) {
            body["productVersionUID"] = request.productVersionUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEnvironmentProductVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/product-versions",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEnvironmentProductVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEnvironmentProductVersion(_ uid: String, _ request: UpdateEnvironmentProductVersionRequest) async throws -> UpdateEnvironmentProductVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEnvironmentProductVersionWithOptions(uid as! String, request as! UpdateEnvironmentProductVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFoundationComponentReferenceWithOptions(_ uid: String, _ componentReferenceUID: String, _ request: UpdateFoundationComponentReferenceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFoundationComponentReferenceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentOrchestrationValues)) {
            body["componentOrchestrationValues"] = request.componentOrchestrationValues ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enable)) {
            body["enable"] = request.enable!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFoundationComponentReference",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/foundation-references/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/components/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(componentReferenceUID),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFoundationComponentReferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFoundationComponentReference(_ uid: String, _ componentReferenceUID: String, _ request: UpdateFoundationComponentReferenceRequest) async throws -> UpdateFoundationComponentReferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFoundationComponentReferenceWithOptions(uid as! String, componentReferenceUID as! String, request as! UpdateFoundationComponentReferenceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFoundationReferenceWithOptions(_ uid: String, _ request: UpdateFoundationReferenceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFoundationReferenceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterConfig)) {
            body["clusterConfig"] = request.clusterConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFoundationReference",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/foundation-references/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFoundationReferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFoundationReference(_ uid: String, _ request: UpdateFoundationReferenceRequest) async throws -> UpdateFoundationReferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFoundationReferenceWithOptions(uid as! String, request as! UpdateFoundationReferenceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductWithOptions(_ uid: String, _ request: UpdateProductRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProductResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categories)) {
            body["categories"] = request.categories ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            body["vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProduct",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/products/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProduct(_ uid: String, _ request: UpdateProductRequest) async throws -> UpdateProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProductWithOptions(uid as! String, request as! UpdateProductRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductComponentVersionWithOptions(_ uid: String, _ relationUID: String, _ request: UpdateProductComponentVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProductComponentVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentOrchestrationValues)) {
            body["componentOrchestrationValues"] = request.componentOrchestrationValues ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentSpecificationUid)) {
            body["componentSpecificationUid"] = request.componentSpecificationUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentSpecificationValues)) {
            body["componentSpecificationValues"] = request.componentSpecificationValues ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enable)) {
            body["enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.newComponentVersionUID)) {
            body["newComponentVersionUID"] = request.newComponentVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            body["policy"] = request.policy!;
        }
        if (!TeaUtils.Client.isUnset(request.releaseName)) {
            body["releaseName"] = request.releaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unsetComponentVersionSpec)) {
            body["unsetComponentVersionSpec"] = request.unsetComponentVersionSpec!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProductComponentVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/relations/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(relationUID),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProductComponentVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductComponentVersion(_ uid: String, _ relationUID: String, _ request: UpdateProductComponentVersionRequest) async throws -> UpdateProductComponentVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProductComponentVersionWithOptions(uid as! String, relationUID as! String, request as! UpdateProductComponentVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductFoundationVersionWithOptions(_ uid: String, _ request: UpdateProductFoundationVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProductFoundationVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.foundationVersionUID)) {
            body["foundationVersionUID"] = request.foundationVersionUID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProductFoundationVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/foundation",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProductFoundationVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductFoundationVersion(_ uid: String, _ request: UpdateProductFoundationVersionRequest) async throws -> UpdateProductFoundationVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProductFoundationVersionWithOptions(uid as! String, request as! UpdateProductFoundationVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductVersionWithOptions(_ uid: String, _ request: UpdateProductVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProductVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            query["action"] = request.action ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.continuousIntegration)) {
            body["continuousIntegration"] = request.continuousIntegration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entry)) {
            body["entry"] = request.entry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            body["timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProductVersion",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProductVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductVersion(_ uid: String, _ request: UpdateProductVersionRequest) async throws -> UpdateProductVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProductVersionWithOptions(uid as! String, request as! UpdateProductVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductVersionConfigWithOptions(_ uid: String, _ configUID: String, _ request: UpdateProductVersionConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProductVersionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.componentVersionUID)) {
            body["componentVersionUID"] = request.componentVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentComponentVersionUID)) {
            body["parentComponentVersionUID"] = request.parentComponentVersionUID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            body["value"] = request.value ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.valueType)) {
            body["valueType"] = request.valueType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProductVersionConfig",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/product-versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/configs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(configUID),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProductVersionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductVersionConfig(_ uid: String, _ configUID: String, _ request: UpdateProductVersionConfigRequest) async throws -> UpdateProductVersionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProductVersionConfigWithOptions(uid as! String, configUID as! String, request as! UpdateProductVersionConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateEnvironmentTunnelWithOptions(_ uid: String, _ request: ValidateEnvironmentTunnelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateEnvironmentTunnelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tunnelConfig)) {
            body["tunnelConfig"] = request.tunnelConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.tunnelType)) {
            body["tunnelType"] = request.tunnelType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateEnvironmentTunnel",
            "version": "2021-07-20",
            "protocol": "HTTPS",
            "pathname": "/api/v2/environments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(uid) + "/tunnels/validation",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateEnvironmentTunnelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateEnvironmentTunnel(_ uid: String, _ request: ValidateEnvironmentTunnelRequest) async throws -> ValidateEnvironmentTunnelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await validateEnvironmentTunnelWithOptions(uid as! String, request as! ValidateEnvironmentTunnelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
