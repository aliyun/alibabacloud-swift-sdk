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
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("linkwan", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func acceptJoinPermissionAuthOrderWithOptions(_ request: AcceptJoinPermissionAuthOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AcceptJoinPermissionAuthOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AcceptJoinPermissionAuthOrder",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AcceptJoinPermissionAuthOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acceptJoinPermissionAuthOrder(_ request: AcceptJoinPermissionAuthOrderRequest) async throws -> AcceptJoinPermissionAuthOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await acceptJoinPermissionAuthOrderWithOptions(request as! AcceptJoinPermissionAuthOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addNodeToGroupWithOptions(_ request: AddNodeToGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddNodeToGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pinCode)) {
            query["PinCode"] = request.pinCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddNodeToGroup",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddNodeToGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addNodeToGroup(_ request: AddNodeToGroupRequest) async throws -> AddNodeToGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addNodeToGroupWithOptions(request as! AddNodeToGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyRoamingJoinPermissionWithOptions(_ request: ApplyRoamingJoinPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyRoamingJoinPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classMode)) {
            query["ClassMode"] = request.classMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataRate)) {
            query["DataRate"] = request.dataRate!;
        }
        if (!TeaUtils.Client.isUnset(request.freqBandPlanGroupId)) {
            query["FreqBandPlanGroupId"] = request.freqBandPlanGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionName)) {
            query["JoinPermissionName"] = request.joinPermissionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rxDelay)) {
            query["RxDelay"] = request.rxDelay!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyRoamingJoinPermission",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyRoamingJoinPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyRoamingJoinPermission(_ request: ApplyRoamingJoinPermissionRequest) async throws -> ApplyRoamingJoinPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyRoamingJoinPermissionWithOptions(request as! ApplyRoamingJoinPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindJoinPermissionToNodeGroupWithOptions(_ request: BindJoinPermissionToNodeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindJoinPermissionToNodeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindJoinPermissionToNodeGroup",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindJoinPermissionToNodeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindJoinPermissionToNodeGroup(_ request: BindJoinPermissionToNodeGroupRequest) async throws -> BindJoinPermissionToNodeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindJoinPermissionToNodeGroupWithOptions(request as! BindJoinPermissionToNodeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelJoinPermissionAuthOrderWithOptions(_ request: CancelJoinPermissionAuthOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelJoinPermissionAuthOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelJoinPermissionAuthOrder",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelJoinPermissionAuthOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelJoinPermissionAuthOrder(_ request: CancelJoinPermissionAuthOrderRequest) async throws -> CancelJoinPermissionAuthOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelJoinPermissionAuthOrderWithOptions(request as! CancelJoinPermissionAuthOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkCloudProductOpenStatusWithOptions(_ request: CheckCloudProductOpenStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckCloudProductOpenStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckCloudProductOpenStatus",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckCloudProductOpenStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkCloudProductOpenStatus(_ request: CheckCloudProductOpenStatusRequest) async throws -> CheckCloudProductOpenStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkCloudProductOpenStatusWithOptions(request as! CheckCloudProductOpenStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkUserChargeStatusWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> CheckUserChargeStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckUserChargeStatus",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckUserChargeStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkUserChargeStatus() async throws -> CheckUserChargeStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkUserChargeStatusWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countGatewayTupleOrdersWithOptions(_ request: CountGatewayTupleOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CountGatewayTupleOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.states)) {
            query["States"] = request.states ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountGatewayTupleOrders",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountGatewayTupleOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countGatewayTupleOrders(_ request: CountGatewayTupleOrdersRequest) async throws -> CountGatewayTupleOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await countGatewayTupleOrdersWithOptions(request as! CountGatewayTupleOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countGatewaysWithOptions(_ request: CountGatewaysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CountGatewaysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.freqBandPlanGroupId)) {
            query["FreqBandPlanGroupId"] = request.freqBandPlanGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyCity)) {
            query["FuzzyCity"] = request.fuzzyCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyGwEui)) {
            query["FuzzyGwEui"] = request.fuzzyGwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyName)) {
            query["FuzzyName"] = request.fuzzyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEnabled)) {
            query["IsEnabled"] = request.isEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.onlineState)) {
            query["OnlineState"] = request.onlineState ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountGateways",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountGatewaysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countGateways(_ request: CountGatewaysRequest) async throws -> CountGatewaysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await countGatewaysWithOptions(request as! CountGatewaysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countNodeGroupsWithOptions(_ request: CountNodeGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CountNodeGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fuzzyDevEui)) {
            query["FuzzyDevEui"] = request.fuzzyDevEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyJoinEui)) {
            query["FuzzyJoinEui"] = request.fuzzyJoinEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyName)) {
            query["FuzzyName"] = request.fuzzyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountNodeGroups",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountNodeGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countNodeGroups(_ request: CountNodeGroupsRequest) async throws -> CountNodeGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await countNodeGroupsWithOptions(request as! CountNodeGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countNodeTupleOrdersWithOptions(_ request: CountNodeTupleOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CountNodeTupleOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isKpm)) {
            query["IsKpm"] = request.isKpm!;
        }
        if (!TeaUtils.Client.isUnset(request.states)) {
            query["States"] = request.states ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountNodeTupleOrders",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountNodeTupleOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countNodeTupleOrders(_ request: CountNodeTupleOrdersRequest) async throws -> CountNodeTupleOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await countNodeTupleOrdersWithOptions(request as! CountNodeTupleOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countNodesByNodeGroupIdWithOptions(_ request: CountNodesByNodeGroupIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CountNodesByNodeGroupIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fuzzyDevEui)) {
            query["FuzzyDevEui"] = request.fuzzyDevEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountNodesByNodeGroupId",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountNodesByNodeGroupIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countNodesByNodeGroupId(_ request: CountNodesByNodeGroupIdRequest) async throws -> CountNodesByNodeGroupIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await countNodesByNodeGroupIdWithOptions(request as! CountNodesByNodeGroupIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countNodesByOwnedJoinPermissionIdWithOptions(_ request: CountNodesByOwnedJoinPermissionIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CountNodesByOwnedJoinPermissionIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fuzzyDevEui)) {
            query["FuzzyDevEui"] = request.fuzzyDevEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountNodesByOwnedJoinPermissionId",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountNodesByOwnedJoinPermissionIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countNodesByOwnedJoinPermissionId(_ request: CountNodesByOwnedJoinPermissionIdRequest) async throws -> CountNodesByOwnedJoinPermissionIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await countNodesByOwnedJoinPermissionIdWithOptions(request as! CountNodesByOwnedJoinPermissionIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countNotificationsWithOptions(_ request: CountNotificationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CountNotificationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.handleState)) {
            query["HandleState"] = request.handleState ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountNotifications",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountNotificationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countNotifications(_ request: CountNotificationsRequest) async throws -> CountNotificationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await countNotificationsWithOptions(request as! CountNotificationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countOwnedJoinPermissionsWithOptions(_ request: CountOwnedJoinPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CountOwnedJoinPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyJoinEui)) {
            query["FuzzyJoinEui"] = request.fuzzyJoinEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyJoinPermissionName)) {
            query["FuzzyJoinPermissionName"] = request.fuzzyJoinPermissionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyRenterAliyunId)) {
            query["FuzzyRenterAliyunId"] = request.fuzzyRenterAliyunId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountOwnedJoinPermissions",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountOwnedJoinPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countOwnedJoinPermissions(_ request: CountOwnedJoinPermissionsRequest) async throws -> CountOwnedJoinPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await countOwnedJoinPermissionsWithOptions(request as! CountOwnedJoinPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countRentedJoinPermissionsWithOptions(_ request: CountRentedJoinPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CountRentedJoinPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.boundNodeGroup)) {
            query["BoundNodeGroup"] = request.boundNodeGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyJoinEui)) {
            query["FuzzyJoinEui"] = request.fuzzyJoinEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyJoinPermissionName)) {
            query["FuzzyJoinPermissionName"] = request.fuzzyJoinPermissionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyOwnerAliyunId)) {
            query["FuzzyOwnerAliyunId"] = request.fuzzyOwnerAliyunId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountRentedJoinPermissions",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountRentedJoinPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countRentedJoinPermissions(_ request: CountRentedJoinPermissionsRequest) async throws -> CountRentedJoinPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await countRentedJoinPermissionsWithOptions(request as! CountRentedJoinPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGatewayWithOptions(_ request: CreateGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.addressCode)) {
            query["AddressCode"] = request.addressCode!;
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.communicationMode)) {
            query["CommunicationMode"] = request.communicationMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.district)) {
            query["District"] = request.district ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.freqBandPlanGroupId)) {
            query["FreqBandPlanGroupId"] = request.freqBandPlanGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.gisCoordinateSystem)) {
            query["GisCoordinateSystem"] = request.gisCoordinateSystem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latitude)) {
            query["Latitude"] = request.latitude!;
        }
        if (!TeaUtils.Client.isUnset(request.longitude)) {
            query["Longitude"] = request.longitude!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pinCode)) {
            query["PinCode"] = request.pinCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGateway",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGateway(_ request: CreateGatewayRequest) async throws -> CreateGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGatewayWithOptions(request as! CreateGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLocalJoinPermissionWithOptions(_ request: CreateLocalJoinPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLocalJoinPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classMode)) {
            query["ClassMode"] = request.classMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataRate)) {
            query["DataRate"] = request.dataRate!;
        }
        if (!TeaUtils.Client.isUnset(request.freqBandPlanGroupId)) {
            query["FreqBandPlanGroupId"] = request.freqBandPlanGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinEui)) {
            query["JoinEui"] = request.joinEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionName)) {
            query["JoinPermissionName"] = request.joinPermissionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rxDelay)) {
            query["RxDelay"] = request.rxDelay!;
        }
        if (!TeaUtils.Client.isUnset(request.useDefaultJoinEui)) {
            query["UseDefaultJoinEui"] = request.useDefaultJoinEui!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLocalJoinPermission",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLocalJoinPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLocalJoinPermission(_ request: CreateLocalJoinPermissionRequest) async throws -> CreateLocalJoinPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLocalJoinPermissionWithOptions(request as! CreateLocalJoinPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNodeGroupWithOptions(_ request: CreateNodeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNodeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupName)) {
            query["NodeGroupName"] = request.nodeGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNodeGroup",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNodeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNodeGroup(_ request: CreateNodeGroupRequest) async throws -> CreateNodeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNodeGroupWithOptions(request as! CreateNodeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGatewayWithOptions(_ request: DeleteGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGateway",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGateway(_ request: DeleteGatewayRequest) async throws -> DeleteGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteGatewayWithOptions(request as! DeleteGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLocalJoinPermissionWithOptions(_ request: DeleteLocalJoinPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLocalJoinPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLocalJoinPermission",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLocalJoinPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLocalJoinPermission(_ request: DeleteLocalJoinPermissionRequest) async throws -> DeleteLocalJoinPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLocalJoinPermissionWithOptions(request as! DeleteLocalJoinPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNodeGroupWithOptions(_ request: DeleteNodeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNodeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNodeGroup",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNodeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNodeGroup(_ request: DeleteNodeGroupRequest) async throws -> DeleteNodeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNodeGroupWithOptions(request as! DeleteNodeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFreqBandPlanGroupWithOptions(_ request: GetFreqBandPlanGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFreqBandPlanGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFreqBandPlanGroup",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFreqBandPlanGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFreqBandPlanGroup(_ request: GetFreqBandPlanGroupRequest) async throws -> GetFreqBandPlanGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFreqBandPlanGroupWithOptions(request as! GetFreqBandPlanGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayWithOptions(_ request: GetGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGateway",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGateway(_ request: GetGatewayRequest) async throws -> GetGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getGatewayWithOptions(request as! GetGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayPacketStatWithOptions(_ request: GetGatewayPacketStatRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGatewayPacketStatResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGatewayPacketStat",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGatewayPacketStatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayPacketStat(_ request: GetGatewayPacketStatRequest) async throws -> GetGatewayPacketStatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getGatewayPacketStatWithOptions(request as! GetGatewayPacketStatRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayStatusStatWithOptions(_ request: GetGatewayStatusStatRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGatewayStatusStatResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGatewayStatusStat",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGatewayStatusStatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayStatusStat(_ request: GetGatewayStatusStatRequest) async throws -> GetGatewayStatusStatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getGatewayStatusStatWithOptions(request as! GetGatewayStatusStatRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayTransferPacketsDownloadUrlWithOptions(_ request: GetGatewayTransferPacketsDownloadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGatewayTransferPacketsDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGatewayTransferPacketsDownloadUrl",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGatewayTransferPacketsDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayTransferPacketsDownloadUrl(_ request: GetGatewayTransferPacketsDownloadUrlRequest) async throws -> GetGatewayTransferPacketsDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getGatewayTransferPacketsDownloadUrlWithOptions(request as! GetGatewayTransferPacketsDownloadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayTupleOrderWithOptions(_ request: GetGatewayTupleOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGatewayTupleOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGatewayTupleOrder",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGatewayTupleOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayTupleOrder(_ request: GetGatewayTupleOrderRequest) async throws -> GetGatewayTupleOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getGatewayTupleOrderWithOptions(request as! GetGatewayTupleOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayTuplesDownloadUrlWithOptions(_ request: GetGatewayTuplesDownloadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGatewayTuplesDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGatewayTuplesDownloadUrl",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGatewayTuplesDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGatewayTuplesDownloadUrl(_ request: GetGatewayTuplesDownloadUrlRequest) async throws -> GetGatewayTuplesDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getGatewayTuplesDownloadUrlWithOptions(request as! GetGatewayTuplesDownloadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJoinPermissionAuthOrderWithOptions(_ request: GetJoinPermissionAuthOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJoinPermissionAuthOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJoinPermissionAuthOrder",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJoinPermissionAuthOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJoinPermissionAuthOrder(_ request: GetJoinPermissionAuthOrderRequest) async throws -> GetJoinPermissionAuthOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getJoinPermissionAuthOrderWithOptions(request as! GetJoinPermissionAuthOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeWithOptions(_ request: GetNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNode",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNode(_ request: GetNodeRequest) async throws -> GetNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeWithOptions(request as! GetNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeGroupWithOptions(_ request: GetNodeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeGroup",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeGroup(_ request: GetNodeGroupRequest) async throws -> GetNodeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeGroupWithOptions(request as! GetNodeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeGroupTransferPacketsDownloadUrlWithOptions(_ request: GetNodeGroupTransferPacketsDownloadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeGroupTransferPacketsDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeGroupTransferPacketsDownloadUrl",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeGroupTransferPacketsDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeGroupTransferPacketsDownloadUrl(_ request: GetNodeGroupTransferPacketsDownloadUrlRequest) async throws -> GetNodeGroupTransferPacketsDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeGroupTransferPacketsDownloadUrlWithOptions(request as! GetNodeGroupTransferPacketsDownloadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeTransferPacketWithOptions(_ request: GetNodeTransferPacketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeTransferPacketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.base64EncodedMacPayload)) {
            query["Base64EncodedMacPayload"] = request.base64EncodedMacPayload ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logMillis)) {
            query["LogMillis"] = request.logMillis!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeTransferPacket",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeTransferPacketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeTransferPacket(_ request: GetNodeTransferPacketRequest) async throws -> GetNodeTransferPacketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeTransferPacketWithOptions(request as! GetNodeTransferPacketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeTransferPacketsDownloadUrlWithOptions(_ request: GetNodeTransferPacketsDownloadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeTransferPacketsDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeTransferPacketsDownloadUrl",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeTransferPacketsDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeTransferPacketsDownloadUrl(_ request: GetNodeTransferPacketsDownloadUrlRequest) async throws -> GetNodeTransferPacketsDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeTransferPacketsDownloadUrlWithOptions(request as! GetNodeTransferPacketsDownloadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeTupleOrderWithOptions(_ request: GetNodeTupleOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeTupleOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeTupleOrder",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeTupleOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeTupleOrder(_ request: GetNodeTupleOrderRequest) async throws -> GetNodeTupleOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeTupleOrderWithOptions(request as! GetNodeTupleOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeTuplesDownloadUrlWithOptions(_ request: GetNodeTuplesDownloadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeTuplesDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeTuplesDownloadUrl",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeTuplesDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeTuplesDownloadUrl(_ request: GetNodeTuplesDownloadUrlRequest) async throws -> GetNodeTuplesDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeTuplesDownloadUrlWithOptions(request as! GetNodeTuplesDownloadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotificationWithOptions(_ request: GetNotificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNotificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notificationId)) {
            query["NotificationId"] = request.notificationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNotification",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNotificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotification(_ request: GetNotificationRequest) async throws -> GetNotificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNotificationWithOptions(request as! GetNotificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOwnedJoinPermissionWithOptions(_ request: GetOwnedJoinPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOwnedJoinPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOwnedJoinPermission",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOwnedJoinPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOwnedJoinPermission(_ request: GetOwnedJoinPermissionRequest) async throws -> GetOwnedJoinPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOwnedJoinPermissionWithOptions(request as! GetOwnedJoinPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRentedJoinPermissionWithOptions(_ request: GetRentedJoinPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRentedJoinPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRentedJoinPermission",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRentedJoinPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRentedJoinPermission(_ request: GetRentedJoinPermissionRequest) async throws -> GetRentedJoinPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRentedJoinPermissionWithOptions(request as! GetRentedJoinPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserLicenseWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserLicenseResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserLicense",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserLicense() async throws -> GetUserLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserLicenseWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listActivatedFeaturesWithOptions(_ request: ListActivatedFeaturesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListActivatedFeaturesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            query["Environment"] = request.environment ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListActivatedFeatures",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListActivatedFeaturesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listActivatedFeatures(_ request: ListActivatedFeaturesRequest) async throws -> ListActivatedFeaturesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listActivatedFeaturesWithOptions(request as! ListActivatedFeaturesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listActiveGatewaysWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListActiveGatewaysResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListActiveGateways",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListActiveGatewaysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listActiveGateways() async throws -> ListActiveGatewaysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listActiveGatewaysWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFreqBandPlanGroupsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListFreqBandPlanGroupsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFreqBandPlanGroups",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFreqBandPlanGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFreqBandPlanGroups() async throws -> ListFreqBandPlanGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFreqBandPlanGroupsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayOnlineRecordsWithOptions(_ request: ListGatewayOnlineRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewayOnlineRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.offSet)) {
            query["OffSet"] = request.offSet!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGatewayOnlineRecords",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewayOnlineRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayOnlineRecords(_ request: ListGatewayOnlineRecordsRequest) async throws -> ListGatewayOnlineRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listGatewayOnlineRecordsWithOptions(request as! ListGatewayOnlineRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayTransferFlowStatsWithOptions(_ request: ListGatewayTransferFlowStatsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewayTransferFlowStatsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeIntervalUnit)) {
            query["TimeIntervalUnit"] = request.timeIntervalUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGatewayTransferFlowStats",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewayTransferFlowStatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayTransferFlowStats(_ request: ListGatewayTransferFlowStatsRequest) async throws -> ListGatewayTransferFlowStatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listGatewayTransferFlowStatsWithOptions(request as! ListGatewayTransferFlowStatsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayTransferPacketsWithOptions(_ request: ListGatewayTransferPacketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewayTransferPacketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGatewayTransferPackets",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewayTransferPacketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayTransferPackets(_ request: ListGatewayTransferPacketsRequest) async throws -> ListGatewayTransferPacketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listGatewayTransferPacketsWithOptions(request as! ListGatewayTransferPacketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayTupleOrdersWithOptions(_ request: ListGatewayTupleOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewayTupleOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGatewayTupleOrders",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewayTupleOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewayTupleOrders(_ request: ListGatewayTupleOrdersRequest) async throws -> ListGatewayTupleOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listGatewayTupleOrdersWithOptions(request as! ListGatewayTupleOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewaysWithOptions(_ request: ListGatewaysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewaysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.freqBandPlanGroupId)) {
            query["FreqBandPlanGroupId"] = request.freqBandPlanGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyCity)) {
            query["FuzzyCity"] = request.fuzzyCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyGwEui)) {
            query["FuzzyGwEui"] = request.fuzzyGwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyName)) {
            query["FuzzyName"] = request.fuzzyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEnabled)) {
            query["IsEnabled"] = request.isEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.onlineState)) {
            query["OnlineState"] = request.onlineState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGateways",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewaysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGateways(_ request: ListGatewaysRequest) async throws -> ListGatewaysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listGatewaysWithOptions(request as! ListGatewaysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewaysGisInfoWithOptions(_ request: ListGatewaysGisInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGatewaysGisInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGatewaysGisInfo",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGatewaysGisInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGatewaysGisInfo(_ request: ListGatewaysGisInfoRequest) async throws -> ListGatewaysGisInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listGatewaysGisInfoWithOptions(request as! ListGatewaysGisInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeGroupTransferFlowStatsWithOptions(_ request: ListNodeGroupTransferFlowStatsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeGroupTransferFlowStatsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeIntervalUnit)) {
            query["TimeIntervalUnit"] = request.timeIntervalUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodeGroupTransferFlowStats",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodeGroupTransferFlowStatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeGroupTransferFlowStats(_ request: ListNodeGroupTransferFlowStatsRequest) async throws -> ListNodeGroupTransferFlowStatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodeGroupTransferFlowStatsWithOptions(request as! ListNodeGroupTransferFlowStatsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeGroupTransferPacketsWithOptions(_ request: ListNodeGroupTransferPacketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeGroupTransferPacketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodeGroupTransferPackets",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodeGroupTransferPacketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeGroupTransferPackets(_ request: ListNodeGroupTransferPacketsRequest) async throws -> ListNodeGroupTransferPacketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodeGroupTransferPacketsWithOptions(request as! ListNodeGroupTransferPacketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeGroupsWithOptions(_ request: ListNodeGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyDevEui)) {
            query["FuzzyDevEui"] = request.fuzzyDevEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyJoinEui)) {
            query["FuzzyJoinEui"] = request.fuzzyJoinEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyName)) {
            query["FuzzyName"] = request.fuzzyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodeGroups",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodeGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeGroups(_ request: ListNodeGroupsRequest) async throws -> ListNodeGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodeGroupsWithOptions(request as! ListNodeGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeTransferPacketPathsWithOptions(_ request: ListNodeTransferPacketPathsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeTransferPacketPathsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.base64EncodedMacPayload)) {
            query["Base64EncodedMacPayload"] = request.base64EncodedMacPayload ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logMillis)) {
            query["LogMillis"] = request.logMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodeTransferPacketPaths",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodeTransferPacketPathsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeTransferPacketPaths(_ request: ListNodeTransferPacketPathsRequest) async throws -> ListNodeTransferPacketPathsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodeTransferPacketPathsWithOptions(request as! ListNodeTransferPacketPathsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeTransferPacketsWithOptions(_ request: ListNodeTransferPacketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeTransferPacketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodeTransferPackets",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodeTransferPacketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeTransferPackets(_ request: ListNodeTransferPacketsRequest) async throws -> ListNodeTransferPacketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodeTransferPacketsWithOptions(request as! ListNodeTransferPacketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeTupleOrdersWithOptions(_ request: ListNodeTupleOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeTupleOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.isKpm)) {
            query["IsKpm"] = request.isKpm!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodeTupleOrders",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodeTupleOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeTupleOrders(_ request: ListNodeTupleOrdersRequest) async throws -> ListNodeTupleOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodeTupleOrdersWithOptions(request as! ListNodeTupleOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodesByNodeGroupIdWithOptions(_ request: ListNodesByNodeGroupIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodesByNodeGroupIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyDevEui)) {
            query["FuzzyDevEui"] = request.fuzzyDevEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodesByNodeGroupId",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodesByNodeGroupIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodesByNodeGroupId(_ request: ListNodesByNodeGroupIdRequest) async throws -> ListNodesByNodeGroupIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodesByNodeGroupIdWithOptions(request as! ListNodesByNodeGroupIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodesByOwnedJoinPermissionIdWithOptions(_ request: ListNodesByOwnedJoinPermissionIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodesByOwnedJoinPermissionIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyDevEui)) {
            query["FuzzyDevEui"] = request.fuzzyDevEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodesByOwnedJoinPermissionId",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodesByOwnedJoinPermissionIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodesByOwnedJoinPermissionId(_ request: ListNodesByOwnedJoinPermissionIdRequest) async throws -> ListNodesByOwnedJoinPermissionIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodesByOwnedJoinPermissionIdWithOptions(request as! ListNodesByOwnedJoinPermissionIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNotificationsWithOptions(_ request: ListNotificationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNotificationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.beginMillis)) {
            query["BeginMillis"] = request.beginMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endMillis)) {
            query["EndMillis"] = request.endMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.handleState)) {
            query["HandleState"] = request.handleState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNotifications",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNotificationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNotifications(_ request: ListNotificationsRequest) async throws -> ListNotificationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNotificationsWithOptions(request as! ListNotificationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOwnedJoinPermissionsWithOptions(_ request: ListOwnedJoinPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOwnedJoinPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyJoinEui)) {
            query["FuzzyJoinEui"] = request.fuzzyJoinEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyJoinPermissionName)) {
            query["FuzzyJoinPermissionName"] = request.fuzzyJoinPermissionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyRenterAliyunId)) {
            query["FuzzyRenterAliyunId"] = request.fuzzyRenterAliyunId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOwnedJoinPermissions",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOwnedJoinPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOwnedJoinPermissions(_ request: ListOwnedJoinPermissionsRequest) async throws -> ListOwnedJoinPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOwnedJoinPermissionsWithOptions(request as! ListOwnedJoinPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRentedJoinPermissionsWithOptions(_ request: ListRentedJoinPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRentedJoinPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascending)) {
            query["Ascending"] = request.ascending!;
        }
        if (!TeaUtils.Client.isUnset(request.boundNodeGroup)) {
            query["BoundNodeGroup"] = request.boundNodeGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyJoinEui)) {
            query["FuzzyJoinEui"] = request.fuzzyJoinEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyJoinPermissionName)) {
            query["FuzzyJoinPermissionName"] = request.fuzzyJoinPermissionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fuzzyOwnerAliyunId)) {
            query["FuzzyOwnerAliyunId"] = request.fuzzyOwnerAliyunId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.sortingField)) {
            query["SortingField"] = request.sortingField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRentedJoinPermissions",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRentedJoinPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRentedJoinPermissions(_ request: ListRentedJoinPermissionsRequest) async throws -> ListRentedJoinPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRentedJoinPermissionsWithOptions(request as! ListRentedJoinPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rejectJoinPermissionAuthOrderWithOptions(_ request: RejectJoinPermissionAuthOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RejectJoinPermissionAuthOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RejectJoinPermissionAuthOrder",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RejectJoinPermissionAuthOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rejectJoinPermissionAuthOrder(_ request: RejectJoinPermissionAuthOrderRequest) async throws -> RejectJoinPermissionAuthOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rejectJoinPermissionAuthOrderWithOptions(request as! RejectJoinPermissionAuthOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeNodeFromGroupWithOptions(_ request: RemoveNodeFromGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveNodeFromGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveNodeFromGroup",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveNodeFromGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeNodeFromGroup(_ request: RemoveNodeFromGroupRequest) async throws -> RemoveNodeFromGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeNodeFromGroupWithOptions(request as! RemoveNodeFromGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func returnJoinPermissionWithOptions(_ request: ReturnJoinPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReturnJoinPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionType)) {
            query["JoinPermissionType"] = request.joinPermissionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReturnJoinPermission",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReturnJoinPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func returnJoinPermission(_ request: ReturnJoinPermissionRequest) async throws -> ReturnJoinPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await returnJoinPermissionWithOptions(request as! ReturnJoinPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendUnicastCommandWithOptions(_ request: SendUnicastCommandRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendUnicastCommandResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cleanUp)) {
            query["CleanUp"] = request.cleanUp!;
        }
        if (!TeaUtils.Client.isUnset(request.confirmed)) {
            query["Confirmed"] = request.confirmed!;
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devEui)) {
            query["DevEui"] = request.devEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.FPort)) {
            query["FPort"] = request.FPort!;
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxRetries)) {
            query["MaxRetries"] = request.maxRetries!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendUnicastCommand",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendUnicastCommandResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendUnicastCommand(_ request: SendUnicastCommandRequest) async throws -> SendUnicastCommandResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendUnicastCommandWithOptions(request as! SendUnicastCommandRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitGatewayTupleOrderWithOptions(_ request: SubmitGatewayTupleOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitGatewayTupleOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.requiredCount)) {
            query["RequiredCount"] = request.requiredCount!;
        }
        if (!TeaUtils.Client.isUnset(request.tupleType)) {
            query["TupleType"] = request.tupleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitGatewayTupleOrder",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitGatewayTupleOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitGatewayTupleOrder(_ request: SubmitGatewayTupleOrderRequest) async throws -> SubmitGatewayTupleOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitGatewayTupleOrderWithOptions(request as! SubmitGatewayTupleOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitJoinPermissionAuthOrderWithOptions(_ request: SubmitJoinPermissionAuthOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitJoinPermissionAuthOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renterAliyunId)) {
            query["RenterAliyunId"] = request.renterAliyunId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitJoinPermissionAuthOrder",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitJoinPermissionAuthOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitJoinPermissionAuthOrder(_ request: SubmitJoinPermissionAuthOrderRequest) async throws -> SubmitJoinPermissionAuthOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitJoinPermissionAuthOrderWithOptions(request as! SubmitJoinPermissionAuthOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitNodeTupleOrderWithOptions(_ request: SubmitNodeTupleOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitNodeTupleOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.loraVersion)) {
            query["LoraVersion"] = request.loraVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requiredCount)) {
            query["RequiredCount"] = request.requiredCount!;
        }
        if (!TeaUtils.Client.isUnset(request.tupleType)) {
            query["TupleType"] = request.tupleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitNodeTupleOrder",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitNodeTupleOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitNodeTupleOrder(_ request: SubmitNodeTupleOrderRequest) async throws -> SubmitNodeTupleOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitNodeTupleOrderWithOptions(request as! SubmitNodeTupleOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindJoinPermissionFromNodeGroupWithOptions(_ request: UnbindJoinPermissionFromNodeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindJoinPermissionFromNodeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindJoinPermissionFromNodeGroup",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindJoinPermissionFromNodeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindJoinPermissionFromNodeGroup(_ request: UnbindJoinPermissionFromNodeGroupRequest) async throws -> UnbindJoinPermissionFromNodeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindJoinPermissionFromNodeGroupWithOptions(request as! UnbindJoinPermissionFromNodeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataDispatchConfigWithOptions(_ request: UpdateDataDispatchConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataDispatchConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataDispatchDestination)) {
            query["DataDispatchDestination"] = request.dataDispatchDestination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debugSwitch)) {
            query["DebugSwitch"] = request.debugSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            query["ProductName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uplinkRegionName)) {
            query["UplinkRegionName"] = request.uplinkRegionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uplinkTopic)) {
            query["UplinkTopic"] = request.uplinkTopic ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataDispatchConfig",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataDispatchConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataDispatchConfig(_ request: UpdateDataDispatchConfigRequest) async throws -> UpdateDataDispatchConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataDispatchConfigWithOptions(request as! UpdateDataDispatchConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataDispatchEnablingStateWithOptions(_ request: UpdateDataDispatchEnablingStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataDispatchEnablingStateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataDispatchEnabled)) {
            query["DataDispatchEnabled"] = request.dataDispatchEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataDispatchEnablingState",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataDispatchEnablingStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataDispatchEnablingState(_ request: UpdateDataDispatchEnablingStateRequest) async throws -> UpdateDataDispatchEnablingStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataDispatchEnablingStateWithOptions(request as! UpdateDataDispatchEnablingStateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayWithOptions(_ request: UpdateGatewayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGatewayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.addressCode)) {
            query["AddressCode"] = request.addressCode!;
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.communicationMode)) {
            query["CommunicationMode"] = request.communicationMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.district)) {
            query["District"] = request.district ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.freqBandPlanGroupId)) {
            query["FreqBandPlanGroupId"] = request.freqBandPlanGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.gisCoordinateSystem)) {
            query["GisCoordinateSystem"] = request.gisCoordinateSystem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latitude)) {
            query["Latitude"] = request.latitude!;
        }
        if (!TeaUtils.Client.isUnset(request.longitude)) {
            query["Longitude"] = request.longitude!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGateway",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGatewayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGateway(_ request: UpdateGatewayRequest) async throws -> UpdateGatewayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateGatewayWithOptions(request as! UpdateGatewayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayEnablingStateWithOptions(_ request: UpdateGatewayEnablingStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGatewayEnablingStateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.gwEui)) {
            query["GwEui"] = request.gwEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGatewayEnablingState",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGatewayEnablingStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGatewayEnablingState(_ request: UpdateGatewayEnablingStateRequest) async throws -> UpdateGatewayEnablingStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateGatewayEnablingStateWithOptions(request as! UpdateGatewayEnablingStateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNodeGroupWithOptions(_ request: UpdateNodeGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNodeGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeGroupId)) {
            query["NodeGroupId"] = request.nodeGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeGroupName)) {
            query["NodeGroupName"] = request.nodeGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNodeGroup",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNodeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNodeGroup(_ request: UpdateNodeGroupRequest) async throws -> UpdateNodeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateNodeGroupWithOptions(request as! UpdateNodeGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNotificationsHandleStateWithOptions(_ request: UpdateNotificationsHandleStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNotificationsHandleStateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notificationId)) {
            query["NotificationId"] = request.notificationId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetHandleState)) {
            query["TargetHandleState"] = request.targetHandleState ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNotificationsHandleState",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNotificationsHandleStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNotificationsHandleState(_ request: UpdateNotificationsHandleStateRequest) async throws -> UpdateNotificationsHandleStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateNotificationsHandleStateWithOptions(request as! UpdateNotificationsHandleStateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOwnedLocalJoinPermissionWithOptions(_ request: UpdateOwnedLocalJoinPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateOwnedLocalJoinPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classMode)) {
            query["ClassMode"] = request.classMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataRate)) {
            query["DataRate"] = request.dataRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.freqBandPlanGroupId)) {
            query["FreqBandPlanGroupId"] = request.freqBandPlanGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinEui)) {
            query["JoinEui"] = request.joinEui ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionName)) {
            query["JoinPermissionName"] = request.joinPermissionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rxDelay)) {
            query["RxDelay"] = request.rxDelay ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateOwnedLocalJoinPermission",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateOwnedLocalJoinPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOwnedLocalJoinPermission(_ request: UpdateOwnedLocalJoinPermissionRequest) async throws -> UpdateOwnedLocalJoinPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateOwnedLocalJoinPermissionWithOptions(request as! UpdateOwnedLocalJoinPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOwnedLocalJoinPermissionEnablingStateWithOptions(_ request: UpdateOwnedLocalJoinPermissionEnablingStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateOwnedLocalJoinPermissionEnablingStateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.iotInstanceId)) {
            query["IotInstanceId"] = request.iotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateOwnedLocalJoinPermissionEnablingState",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateOwnedLocalJoinPermissionEnablingStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOwnedLocalJoinPermissionEnablingState(_ request: UpdateOwnedLocalJoinPermissionEnablingStateRequest) async throws -> UpdateOwnedLocalJoinPermissionEnablingStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateOwnedLocalJoinPermissionEnablingStateWithOptions(request as! UpdateOwnedLocalJoinPermissionEnablingStateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRoamingJoinPermissionWithOptions(_ request: UpdateRoamingJoinPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRoamingJoinPermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataRate)) {
            query["DataRate"] = request.dataRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionName)) {
            query["JoinPermissionName"] = request.joinPermissionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rxDelay)) {
            query["RxDelay"] = request.rxDelay ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRoamingJoinPermission",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRoamingJoinPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRoamingJoinPermission(_ request: UpdateRoamingJoinPermissionRequest) async throws -> UpdateRoamingJoinPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRoamingJoinPermissionWithOptions(request as! UpdateRoamingJoinPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRoamingJoinPermissionEnablingStateWithOptions(_ request: UpdateRoamingJoinPermissionEnablingStateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRoamingJoinPermissionEnablingStateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.joinPermissionId)) {
            query["JoinPermissionId"] = request.joinPermissionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRoamingJoinPermissionEnablingState",
            "version": "2019-03-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRoamingJoinPermissionEnablingStateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRoamingJoinPermissionEnablingState(_ request: UpdateRoamingJoinPermissionEnablingStateRequest) async throws -> UpdateRoamingJoinPermissionEnablingStateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRoamingJoinPermissionEnablingStateWithOptions(request as! UpdateRoamingJoinPermissionEnablingStateRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
