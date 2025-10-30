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
        self._endpoint = try getEndpoint("dataphin-public", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addDataServiceProjectMemberWithOptions(_ tmpReq: AddDataServiceProjectMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDataServiceProjectMemberResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddDataServiceProjectMemberShrinkRequest = AddDataServiceProjectMemberShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.addCommand)) {
            request.addCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.addCommand, "AddCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addCommandShrink)) {
            body["AddCommand"] = request.addCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDataServiceProjectMember",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDataServiceProjectMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataServiceProjectMember(_ request: AddDataServiceProjectMemberRequest) async throws -> AddDataServiceProjectMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDataServiceProjectMemberWithOptions(request as! AddDataServiceProjectMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProjectMemberWithOptions(_ tmpReq: AddProjectMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddProjectMemberResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddProjectMemberShrinkRequest = AddProjectMemberShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.addCommand)) {
            request.addCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.addCommand, "AddCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addCommandShrink)) {
            body["AddCommand"] = request.addCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddProjectMember",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddProjectMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProjectMember(_ request: AddProjectMemberRequest) async throws -> AddProjectMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addProjectMemberWithOptions(request as! AddProjectMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRegisterLineageWithOptions(_ tmpReq: AddRegisterLineageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddRegisterLineageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddRegisterLineageShrinkRequest = AddRegisterLineageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.addRegisterLineageCommand)) {
            request.addRegisterLineageCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.addRegisterLineageCommand, "AddRegisterLineageCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addRegisterLineageCommandShrink)) {
            body["AddRegisterLineageCommand"] = request.addRegisterLineageCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddRegisterLineage",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddRegisterLineageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRegisterLineage(_ request: AddRegisterLineageRequest) async throws -> AddRegisterLineageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addRegisterLineageWithOptions(request as! AddRegisterLineageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTenantMembersWithOptions(_ tmpReq: AddTenantMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTenantMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddTenantMembersShrinkRequest = AddTenantMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.addCommand)) {
            request.addCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.addCommand, "AddCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addCommandShrink)) {
            body["AddCommand"] = request.addCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddTenantMembers",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddTenantMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTenantMembers(_ request: AddTenantMembersRequest) async throws -> AddTenantMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addTenantMembersWithOptions(request as! AddTenantMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTenantMembersBySourceUserWithOptions(_ tmpReq: AddTenantMembersBySourceUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTenantMembersBySourceUserResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddTenantMembersBySourceUserShrinkRequest = AddTenantMembersBySourceUserShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.addCommand)) {
            request.addCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.addCommand, "AddCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addCommandShrink)) {
            body["AddCommand"] = request.addCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddTenantMembersBySourceUser",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddTenantMembersBySourceUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTenantMembersBySourceUser(_ request: AddTenantMembersBySourceUserRequest) async throws -> AddTenantMembersBySourceUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addTenantMembersBySourceUserWithOptions(request as! AddTenantMembersBySourceUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserGroupMemberWithOptions(_ tmpReq: AddUserGroupMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserGroupMemberResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddUserGroupMemberShrinkRequest = AddUserGroupMemberShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.addCommand)) {
            request.addCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.addCommand, "AddCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addCommandShrink)) {
            body["AddCommand"] = request.addCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUserGroupMember",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddUserGroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserGroupMember(_ request: AddUserGroupMemberRequest) async throws -> AddUserGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addUserGroupMemberWithOptions(request as! AddUserGroupMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyDataServiceApiWithOptions(_ tmpReq: ApplyDataServiceApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyDataServiceApiResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyDataServiceApiShrinkRequest = ApplyDataServiceApiShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.applyCommand)) {
            request.applyCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.applyCommand, "ApplyCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyCommandShrink)) {
            body["ApplyCommand"] = request.applyCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyDataServiceApi",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyDataServiceApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyDataServiceApi(_ request: ApplyDataServiceApiRequest) async throws -> ApplyDataServiceApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyDataServiceApiWithOptions(request as! ApplyDataServiceApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyDataServiceAppWithOptions(_ tmpReq: ApplyDataServiceAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyDataServiceAppResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyDataServiceAppShrinkRequest = ApplyDataServiceAppShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.applyCommand)) {
            request.applyCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.applyCommand, "ApplyCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyCommandShrink)) {
            body["ApplyCommand"] = request.applyCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyDataServiceApp",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyDataServiceAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyDataServiceApp(_ request: ApplyDataServiceAppRequest) async throws -> ApplyDataServiceAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyDataServiceAppWithOptions(request as! ApplyDataServiceAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkComputeSourceConnectivityWithOptions(_ tmpReq: CheckComputeSourceConnectivityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckComputeSourceConnectivityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CheckComputeSourceConnectivityShrinkRequest = CheckComputeSourceConnectivityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.checkCommand)) {
            request.checkCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.checkCommand, "CheckCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkCommandShrink)) {
            body["CheckCommand"] = request.checkCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckComputeSourceConnectivity",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckComputeSourceConnectivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkComputeSourceConnectivity(_ request: CheckComputeSourceConnectivityRequest) async throws -> CheckComputeSourceConnectivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkComputeSourceConnectivityWithOptions(request as! CheckComputeSourceConnectivityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkComputeSourceConnectivityByIdWithOptions(_ request: CheckComputeSourceConnectivityByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckComputeSourceConnectivityByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckComputeSourceConnectivityById",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckComputeSourceConnectivityByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkComputeSourceConnectivityById(_ request: CheckComputeSourceConnectivityByIdRequest) async throws -> CheckComputeSourceConnectivityByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkComputeSourceConnectivityByIdWithOptions(request as! CheckComputeSourceConnectivityByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDataSourceConnectivityWithOptions(_ tmpReq: CheckDataSourceConnectivityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDataSourceConnectivityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CheckDataSourceConnectivityShrinkRequest = CheckDataSourceConnectivityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.checkCommand)) {
            request.checkCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.checkCommand, "CheckCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkCommandShrink)) {
            body["CheckCommand"] = request.checkCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDataSourceConnectivity",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDataSourceConnectivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDataSourceConnectivity(_ request: CheckDataSourceConnectivityRequest) async throws -> CheckDataSourceConnectivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDataSourceConnectivityWithOptions(request as! CheckDataSourceConnectivityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDataSourceConnectivityByIdWithOptions(_ request: CheckDataSourceConnectivityByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDataSourceConnectivityByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDataSourceConnectivityById",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDataSourceConnectivityByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDataSourceConnectivityById(_ request: CheckDataSourceConnectivityByIdRequest) async throws -> CheckDataSourceConnectivityByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDataSourceConnectivityByIdWithOptions(request as! CheckDataSourceConnectivityByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkProjectHasDependencyWithOptions(_ request: CheckProjectHasDependencyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckProjectHasDependencyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckProjectHasDependency",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckProjectHasDependencyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkProjectHasDependency(_ request: CheckProjectHasDependencyRequest) async throws -> CheckProjectHasDependencyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkProjectHasDependencyWithOptions(request as! CheckProjectHasDependencyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkResourcePermissionWithOptions(_ tmpReq: CheckResourcePermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckResourcePermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CheckResourcePermissionShrinkRequest = CheckResourcePermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.checkCommand)) {
            request.checkCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.checkCommand, "CheckCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkCommandShrink)) {
            body["CheckCommand"] = request.checkCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckResourcePermission",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckResourcePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkResourcePermission(_ request: CheckResourcePermissionRequest) async throws -> CheckResourcePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkResourcePermissionWithOptions(request as! CheckResourcePermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAdHocFileWithOptions(_ tmpReq: CreateAdHocFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAdHocFileResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAdHocFileShrinkRequest = CreateAdHocFileShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAdHocFile",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAdHocFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAdHocFile(_ request: CreateAdHocFileRequest) async throws -> CreateAdHocFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAdHocFileWithOptions(request as! CreateAdHocFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBatchTaskWithOptions(_ tmpReq: CreateBatchTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBatchTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateBatchTaskShrinkRequest = CreateBatchTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBatchTask",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBatchTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBatchTask(_ request: CreateBatchTaskRequest) async throws -> CreateBatchTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBatchTaskWithOptions(request as! CreateBatchTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBizEntityWithOptions(_ tmpReq: CreateBizEntityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBizEntityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateBizEntityShrinkRequest = CreateBizEntityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBizEntity",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBizEntityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBizEntity(_ request: CreateBizEntityRequest) async throws -> CreateBizEntityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBizEntityWithOptions(request as! CreateBizEntityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBizUnitWithOptions(_ tmpReq: CreateBizUnitRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBizUnitResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateBizUnitShrinkRequest = CreateBizUnitShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBizUnit",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBizUnitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBizUnit(_ request: CreateBizUnitRequest) async throws -> CreateBizUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBizUnitWithOptions(request as! CreateBizUnitRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createComputeSourceWithOptions(_ tmpReq: CreateComputeSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateComputeSourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateComputeSourceShrinkRequest = CreateComputeSourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateComputeSource",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateComputeSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createComputeSource(_ request: CreateComputeSourceRequest) async throws -> CreateComputeSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createComputeSourceWithOptions(request as! CreateComputeSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataDomainWithOptions(_ tmpReq: CreateDataDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataDomainResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDataDomainShrinkRequest = CreateDataDomainShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataDomain",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataDomain(_ request: CreateDataDomainRequest) async throws -> CreateDataDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataDomainWithOptions(request as! CreateDataDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataServiceApiWithOptions(_ tmpReq: CreateDataServiceApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataServiceApiResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDataServiceApiShrinkRequest = CreateDataServiceApiShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataServiceApi",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataServiceApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataServiceApi(_ request: CreateDataServiceApiRequest) async throws -> CreateDataServiceApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataServiceApiWithOptions(request as! CreateDataServiceApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataSourceWithOptions(_ tmpReq: CreateDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataSourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDataSourceShrinkRequest = CreateDataSourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataSource",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataSource(_ request: CreateDataSourceRequest) async throws -> CreateDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataSourceWithOptions(request as! CreateDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDirectoryWithOptions(_ tmpReq: CreateDirectoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDirectoryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDirectoryShrinkRequest = CreateDirectoryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDirectory",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDirectory(_ request: CreateDirectoryRequest) async throws -> CreateDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDirectoryWithOptions(request as! CreateDirectoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNodeSupplementWithOptions(_ tmpReq: CreateNodeSupplementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNodeSupplementResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateNodeSupplementShrinkRequest = CreateNodeSupplementShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNodeSupplement",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNodeSupplementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNodeSupplement(_ request: CreateNodeSupplementRequest) async throws -> CreateNodeSupplementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNodeSupplementWithOptions(request as! CreateNodeSupplementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipelineWithOptions(_ tmpReq: CreatePipelineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePipelineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePipelineShrinkRequest = CreatePipelineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.context)) {
            request.contextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.context, "Context", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contextShrink)) {
            body["Context"] = request.contextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePipeline",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipeline(_ request: CreatePipelineRequest) async throws -> CreatePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPipelineWithOptions(request as! CreatePipelineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipelineByAsyncWithOptions(_ tmpReq: CreatePipelineByAsyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePipelineByAsyncResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePipelineByAsyncShrinkRequest = CreatePipelineByAsyncShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.context)) {
            request.contextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.context, "Context", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contextShrink)) {
            body["Context"] = request.contextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePipelineByAsync",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePipelineByAsyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipelineByAsync(_ request: CreatePipelineByAsyncRequest) async throws -> CreatePipelineByAsyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPipelineByAsyncWithOptions(request as! CreatePipelineByAsyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipelineNodeWithOptions(_ tmpReq: CreatePipelineNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePipelineNodeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePipelineNodeShrinkRequest = CreatePipelineNodeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createPipelineNodeCommand)) {
            request.createPipelineNodeCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createPipelineNodeCommand, "CreatePipelineNodeCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createPipelineNodeCommandShrink)) {
            body["CreatePipelineNodeCommand"] = request.createPipelineNodeCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePipelineNode",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePipelineNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipelineNode(_ request: CreatePipelineNodeRequest) async throws -> CreatePipelineNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPipelineNodeWithOptions(request as! CreatePipelineNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceWithOptions(_ tmpReq: CreateResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateResourceShrinkRequest = CreateResourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResource",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResource(_ request: CreateResourceRequest) async throws -> CreateResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createResourceWithOptions(request as! CreateResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRowPermissionWithOptions(_ tmpReq: CreateRowPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRowPermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateRowPermissionShrinkRequest = CreateRowPermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createRowPermissionCommand)) {
            request.createRowPermissionCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createRowPermissionCommand, "CreateRowPermissionCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createRowPermissionCommandShrink)) {
            body["CreateRowPermissionCommand"] = request.createRowPermissionCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRowPermission",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRowPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRowPermission(_ request: CreateRowPermissionRequest) async throws -> CreateRowPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRowPermissionWithOptions(request as! CreateRowPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStreamBatchJobMappingWithOptions(_ tmpReq: CreateStreamBatchJobMappingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStreamBatchJobMappingResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateStreamBatchJobMappingShrinkRequest = CreateStreamBatchJobMappingShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.streamBatchJobMappingCreateCommand)) {
            request.streamBatchJobMappingCreateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.streamBatchJobMappingCreateCommand, "StreamBatchJobMappingCreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.streamBatchJobMappingCreateCommandShrink)) {
            body["StreamBatchJobMappingCreateCommand"] = request.streamBatchJobMappingCreateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStreamBatchJobMapping",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStreamBatchJobMappingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStreamBatchJobMapping(_ request: CreateStreamBatchJobMappingRequest) async throws -> CreateStreamBatchJobMappingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStreamBatchJobMappingWithOptions(request as! CreateStreamBatchJobMappingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUdfWithOptions(_ tmpReq: CreateUdfRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUdfResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateUdfShrinkRequest = CreateUdfShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUdf",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUdfResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUdf(_ request: CreateUdfRequest) async throws -> CreateUdfResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUdfWithOptions(request as! CreateUdfRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserGroupWithOptions(_ tmpReq: CreateUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateUserGroupShrinkRequest = CreateUserGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createCommand)) {
            request.createCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createCommand, "CreateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createCommandShrink)) {
            body["CreateCommand"] = request.createCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserGroup",
            "version": "2023-06-30",
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
    public func deleteAdHocFileWithOptions(_ request: DeleteAdHocFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAdHocFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAdHocFile",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAdHocFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAdHocFile(_ request: DeleteAdHocFileRequest) async throws -> DeleteAdHocFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAdHocFileWithOptions(request as! DeleteAdHocFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBatchTaskWithOptions(_ tmpReq: DeleteBatchTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBatchTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteBatchTaskShrinkRequest = DeleteBatchTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.deleteCommand)) {
            request.deleteCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deleteCommand, "DeleteCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteCommandShrink)) {
            body["DeleteCommand"] = request.deleteCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBatchTask",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBatchTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBatchTask(_ request: DeleteBatchTaskRequest) async throws -> DeleteBatchTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBatchTaskWithOptions(request as! DeleteBatchTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBizEntityWithOptions(_ request: DeleteBizEntityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBizEntityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizUnitId)) {
            query["BizUnitId"] = request.bizUnitId!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBizEntity",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBizEntityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBizEntity(_ request: DeleteBizEntityRequest) async throws -> DeleteBizEntityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBizEntityWithOptions(request as! DeleteBizEntityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBizUnitWithOptions(_ request: DeleteBizUnitRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBizUnitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBizUnit",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBizUnitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBizUnit(_ request: DeleteBizUnitRequest) async throws -> DeleteBizUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBizUnitWithOptions(request as! DeleteBizUnitRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteComputeSourceWithOptions(_ request: DeleteComputeSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteComputeSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteComputeSource",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteComputeSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteComputeSource(_ request: DeleteComputeSourceRequest) async throws -> DeleteComputeSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteComputeSourceWithOptions(request as! DeleteComputeSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataDomainWithOptions(_ request: DeleteDataDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizUnitId)) {
            query["BizUnitId"] = request.bizUnitId!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataDomain",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataDomain(_ request: DeleteDataDomainRequest) async throws -> DeleteDataDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDataDomainWithOptions(request as! DeleteDataDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSourceWithOptions(_ tmpReq: DeleteDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataSourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteDataSourceShrinkRequest = DeleteDataSourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.deleteCommand)) {
            request.deleteCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deleteCommand, "DeleteCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteCommandShrink)) {
            body["DeleteCommand"] = request.deleteCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataSource",
            "version": "2023-06-30",
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
    public func deleteDirectoryWithOptions(_ request: DeleteDirectoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDirectory",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDirectory(_ request: DeleteDirectoryRequest) async throws -> DeleteDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDirectoryWithOptions(request as! DeleteDirectoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRegisterLineageWithOptions(_ tmpReq: DeleteRegisterLineageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRegisterLineageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteRegisterLineageShrinkRequest = DeleteRegisterLineageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.deleteRegisterLineageCommand)) {
            request.deleteRegisterLineageCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deleteRegisterLineageCommand, "DeleteRegisterLineageCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteRegisterLineageCommandShrink)) {
            body["DeleteRegisterLineageCommand"] = request.deleteRegisterLineageCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRegisterLineage",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRegisterLineageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRegisterLineage(_ request: DeleteRegisterLineageRequest) async throws -> DeleteRegisterLineageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRegisterLineageWithOptions(request as! DeleteRegisterLineageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceWithOptions(_ request: DeleteResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResource",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResource(_ request: DeleteResourceRequest) async throws -> DeleteResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteResourceWithOptions(request as! DeleteResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRowPermissionWithOptions(_ tmpReq: DeleteRowPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRowPermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteRowPermissionShrinkRequest = DeleteRowPermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.deleteRowPermissionCommand)) {
            request.deleteRowPermissionCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.deleteRowPermissionCommand, "DeleteRowPermissionCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteRowPermissionCommandShrink)) {
            body["DeleteRowPermissionCommand"] = request.deleteRowPermissionCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRowPermission",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRowPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRowPermission(_ request: DeleteRowPermissionRequest) async throws -> DeleteRowPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRowPermissionWithOptions(request as! DeleteRowPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUdfWithOptions(_ request: DeleteUdfRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUdfResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUdf",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUdfResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUdf(_ request: DeleteUdfRequest) async throws -> DeleteUdfResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUdfWithOptions(request as! DeleteUdfRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserGroupWithOptions(_ request: DeleteUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserGroup",
            "version": "2023-06-30",
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
    public func executeAdHocTaskWithOptions(_ tmpReq: ExecuteAdHocTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAdHocTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExecuteAdHocTaskShrinkRequest = ExecuteAdHocTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.executeCommand)) {
            request.executeCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executeCommand, "ExecuteCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.executeCommandShrink)) {
            body["ExecuteCommand"] = request.executeCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAdHocTask",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAdHocTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAdHocTask(_ request: ExecuteAdHocTaskRequest) async throws -> ExecuteAdHocTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeAdHocTaskWithOptions(request as! ExecuteAdHocTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeManualNodeWithOptions(_ tmpReq: ExecuteManualNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteManualNodeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExecuteManualNodeShrinkRequest = ExecuteManualNodeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.executeCommand)) {
            request.executeCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executeCommand, "ExecuteCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.executeCommandShrink)) {
            body["ExecuteCommand"] = request.executeCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteManualNode",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteManualNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeManualNode(_ request: ExecuteManualNodeRequest) async throws -> ExecuteManualNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeManualNodeWithOptions(request as! ExecuteManualNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fixDataWithOptions(_ tmpReq: FixDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FixDataResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FixDataShrinkRequest = FixDataShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.fixDataCommand)) {
            request.fixDataCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.fixDataCommand, "FixDataCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fixDataCommandShrink)) {
            body["FixDataCommand"] = request.fixDataCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FixData",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FixDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fixData(_ request: FixDataRequest) async throws -> FixDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await fixDataWithOptions(request as! FixDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccountByRowPermissionIdWithOptions(_ tmpReq: GetAccountByRowPermissionIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAccountByRowPermissionIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetAccountByRowPermissionIdShrinkRequest = GetAccountByRowPermissionIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.getAccountByRowPermissionIdQuery)) {
            request.getAccountByRowPermissionIdQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.getAccountByRowPermissionIdQuery, "GetAccountByRowPermissionIdQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.getAccountByRowPermissionIdQueryShrink)) {
            body["GetAccountByRowPermissionIdQuery"] = request.getAccountByRowPermissionIdQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAccountByRowPermissionId",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAccountByRowPermissionIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccountByRowPermissionId(_ request: GetAccountByRowPermissionIdRequest) async throws -> GetAccountByRowPermissionIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAccountByRowPermissionIdWithOptions(request as! GetAccountByRowPermissionIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAdHocFileWithOptions(_ request: GetAdHocFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAdHocFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAdHocFile",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAdHocFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAdHocFile(_ request: GetAdHocFileRequest) async throws -> GetAdHocFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAdHocFileWithOptions(request as! GetAdHocFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAdHocTaskLogWithOptions(_ request: GetAdHocTaskLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAdHocTaskLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.subTaskId)) {
            query["SubTaskId"] = request.subTaskId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAdHocTaskLog",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAdHocTaskLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAdHocTaskLog(_ request: GetAdHocTaskLogRequest) async throws -> GetAdHocTaskLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAdHocTaskLogWithOptions(request as! GetAdHocTaskLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAdHocTaskResultWithOptions(_ request: GetAdHocTaskResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAdHocTaskResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.subTaskId)) {
            query["SubTaskId"] = request.subTaskId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAdHocTaskResult",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAdHocTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAdHocTaskResult(_ request: GetAdHocTaskResultRequest) async throws -> GetAdHocTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAdHocTaskResultWithOptions(request as! GetAdHocTaskResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlertEventWithOptions(_ request: GetAlertEventRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAlertEventResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAlertEvent",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAlertEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlertEvent(_ request: GetAlertEventRequest) async throws -> GetAlertEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAlertEventWithOptions(request as! GetAlertEventRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTaskInfoWithOptions(_ request: GetBatchTaskInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBatchTaskInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.includeAllUpStreams)) {
            query["IncludeAllUpStreams"] = request.includeAllUpStreams!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBatchTaskInfo",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBatchTaskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTaskInfo(_ request: GetBatchTaskInfoRequest) async throws -> GetBatchTaskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBatchTaskInfoWithOptions(request as! GetBatchTaskInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTaskInfoByVersionWithOptions(_ request: GetBatchTaskInfoByVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBatchTaskInfoByVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBatchTaskInfoByVersion",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBatchTaskInfoByVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTaskInfoByVersion(_ request: GetBatchTaskInfoByVersionRequest) async throws -> GetBatchTaskInfoByVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBatchTaskInfoByVersionWithOptions(request as! GetBatchTaskInfoByVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTaskUdfLineagesWithOptions(_ request: GetBatchTaskUdfLineagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBatchTaskUdfLineagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBatchTaskUdfLineages",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBatchTaskUdfLineagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTaskUdfLineages(_ request: GetBatchTaskUdfLineagesRequest) async throws -> GetBatchTaskUdfLineagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBatchTaskUdfLineagesWithOptions(request as! GetBatchTaskUdfLineagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTaskVersionsWithOptions(_ request: GetBatchTaskVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBatchTaskVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBatchTaskVersions",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBatchTaskVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTaskVersions(_ request: GetBatchTaskVersionsRequest) async throws -> GetBatchTaskVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBatchTaskVersionsWithOptions(request as! GetBatchTaskVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBizEntityInfoWithOptions(_ request: GetBizEntityInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBizEntityInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBizEntityInfo",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBizEntityInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBizEntityInfo(_ request: GetBizEntityInfoRequest) async throws -> GetBizEntityInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBizEntityInfoWithOptions(request as! GetBizEntityInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBizEntityInfoByVersionWithOptions(_ request: GetBizEntityInfoByVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBizEntityInfoByVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBizEntityInfoByVersion",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBizEntityInfoByVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBizEntityInfoByVersion(_ request: GetBizEntityInfoByVersionRequest) async throws -> GetBizEntityInfoByVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBizEntityInfoByVersionWithOptions(request as! GetBizEntityInfoByVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBizUnitInfoWithOptions(_ request: GetBizUnitInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBizUnitInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBizUnitInfo",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBizUnitInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBizUnitInfo(_ request: GetBizUnitInfoRequest) async throws -> GetBizUnitInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBizUnitInfoWithOptions(request as! GetBizUnitInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterQueueInfoByEnvWithOptions(_ request: GetClusterQueueInfoByEnvRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClusterQueueInfoByEnvResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.streamBatchMode)) {
            query["StreamBatchMode"] = request.streamBatchMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClusterQueueInfoByEnv",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClusterQueueInfoByEnvResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClusterQueueInfoByEnv(_ request: GetClusterQueueInfoByEnvRequest) async throws -> GetClusterQueueInfoByEnvResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getClusterQueueInfoByEnvWithOptions(request as! GetClusterQueueInfoByEnvRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComputeSourceWithOptions(_ request: GetComputeSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetComputeSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetComputeSource",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetComputeSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComputeSource(_ request: GetComputeSourceRequest) async throws -> GetComputeSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getComputeSourceWithOptions(request as! GetComputeSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataDomainInfoWithOptions(_ request: GetDataDomainInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataDomainInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataDomainInfo",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataDomainInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataDomainInfo(_ request: GetDataDomainInfoRequest) async throws -> GetDataDomainInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataDomainInfoWithOptions(request as! GetDataDomainInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceApiCallSummaryWithOptions(_ request: GetDataServiceApiCallSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceApiCallSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceApiCallSummary",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceApiCallSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceApiCallSummary(_ request: GetDataServiceApiCallSummaryRequest) async throws -> GetDataServiceApiCallSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceApiCallSummaryWithOptions(request as! GetDataServiceApiCallSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceApiCallTrendWithOptions(_ request: GetDataServiceApiCallTrendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceApiCallTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceApiCallTrend",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceApiCallTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceApiCallTrend(_ request: GetDataServiceApiCallTrendRequest) async throws -> GetDataServiceApiCallTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceApiCallTrendWithOptions(request as! GetDataServiceApiCallTrendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceApiDocumentWithOptions(_ request: GetDataServiceApiDocumentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceApiDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceApiDocument",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceApiDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceApiDocument(_ request: GetDataServiceApiDocumentRequest) async throws -> GetDataServiceApiDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceApiDocumentWithOptions(request as! GetDataServiceApiDocumentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceApiErrorImpactWithOptions(_ request: GetDataServiceApiErrorImpactRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceApiErrorImpactResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceApiErrorImpact",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceApiErrorImpactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceApiErrorImpact(_ request: GetDataServiceApiErrorImpactRequest) async throws -> GetDataServiceApiErrorImpactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceApiErrorImpactWithOptions(request as! GetDataServiceApiErrorImpactRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceApiGroupsWithOptions(_ request: GetDataServiceApiGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceApiGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceApiGroups",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceApiGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceApiGroups(_ request: GetDataServiceApiGroupsRequest) async throws -> GetDataServiceApiGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceApiGroupsWithOptions(request as! GetDataServiceApiGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceAppAuthorizedUsersWithOptions(_ request: GetDataServiceAppAuthorizedUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceAppAuthorizedUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceAppAuthorizedUsers",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceAppAuthorizedUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceAppAuthorizedUsers(_ request: GetDataServiceAppAuthorizedUsersRequest) async throws -> GetDataServiceAppAuthorizedUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceAppAuthorizedUsersWithOptions(request as! GetDataServiceAppAuthorizedUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceAppGroupsWithOptions(_ request: GetDataServiceAppGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceAppGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceAppGroups",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceAppGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceAppGroups(_ request: GetDataServiceAppGroupsRequest) async throws -> GetDataServiceAppGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceAppGroupsWithOptions(request as! GetDataServiceAppGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceAppsByGroupIdWithOptions(_ request: GetDataServiceAppsByGroupIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceAppsByGroupIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceAppsByGroupId",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceAppsByGroupIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceAppsByGroupId(_ request: GetDataServiceAppsByGroupIdRequest) async throws -> GetDataServiceAppsByGroupIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceAppsByGroupIdWithOptions(request as! GetDataServiceAppsByGroupIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceAuthorizedAppsByGroupIdWithOptions(_ request: GetDataServiceAuthorizedAppsByGroupIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceAuthorizedAppsByGroupIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceAuthorizedAppsByGroupId",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceAuthorizedAppsByGroupIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceAuthorizedAppsByGroupId(_ request: GetDataServiceAuthorizedAppsByGroupIdRequest) async throws -> GetDataServiceAuthorizedAppsByGroupIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceAuthorizedAppsByGroupIdWithOptions(request as! GetDataServiceAuthorizedAppsByGroupIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceAuthorizedProjectsWithOptions(_ request: GetDataServiceAuthorizedProjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceAuthorizedProjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceAuthorizedProjects",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceAuthorizedProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceAuthorizedProjects(_ request: GetDataServiceAuthorizedProjectsRequest) async throws -> GetDataServiceAuthorizedProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceAuthorizedProjectsWithOptions(request as! GetDataServiceAuthorizedProjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceMyProjectsWithOptions(_ request: GetDataServiceMyProjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceMyProjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceMyProjects",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceMyProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceMyProjects(_ request: GetDataServiceMyProjectsRequest) async throws -> GetDataServiceMyProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceMyProjectsWithOptions(request as! GetDataServiceMyProjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceProjectAddableUsersWithOptions(_ request: GetDataServiceProjectAddableUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataServiceProjectAddableUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataServiceProjectAddableUsers",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataServiceProjectAddableUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataServiceProjectAddableUsers(_ request: GetDataServiceProjectAddableUsersRequest) async throws -> GetDataServiceProjectAddableUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataServiceProjectAddableUsersWithOptions(request as! GetDataServiceProjectAddableUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataSourceDependenciesWithOptions(_ request: GetDataSourceDependenciesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataSourceDependenciesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataSourceDependencies",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataSourceDependenciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataSourceDependencies(_ request: GetDataSourceDependenciesRequest) async throws -> GetDataSourceDependenciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataSourceDependenciesWithOptions(request as! GetDataSourceDependenciesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDevObjectDependencyWithOptions(_ request: GetDevObjectDependencyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDevObjectDependencyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.objectFrom)) {
            query["ObjectFrom"] = request.objectFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            query["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            query["ObjectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDevObjectDependency",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDevObjectDependencyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDevObjectDependency(_ request: GetDevObjectDependencyRequest) async throws -> GetDevObjectDependencyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDevObjectDependencyWithOptions(request as! GetDevObjectDependencyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDirectoryTreeWithOptions(_ request: GetDirectoryTreeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDirectoryTreeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDirectoryTree",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDirectoryTreeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDirectoryTree(_ request: GetDirectoryTreeRequest) async throws -> GetDirectoryTreeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDirectoryTreeWithOptions(request as! GetDirectoryTreeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileStorageCredentialWithOptions(_ request: GetFileStorageCredentialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileStorageCredentialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.purpose)) {
            query["Purpose"] = request.purpose ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useVpcEndpoint)) {
            query["UseVpcEndpoint"] = request.useVpcEndpoint!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFileStorageCredential",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFileStorageCredentialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileStorageCredential(_ request: GetFileStorageCredentialRequest) async throws -> GetFileStorageCredentialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFileStorageCredentialWithOptions(request as! GetFileStorageCredentialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceDownStreamWithOptions(_ tmpReq: GetInstanceDownStreamRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceDownStreamResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetInstanceDownStreamShrinkRequest = GetInstanceDownStreamShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceGet)) {
            request.instanceGetShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceGet, "InstanceGet", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.downStreamDepth)) {
            query["DownStreamDepth"] = request.downStreamDepth!;
        }
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.runStatus)) {
            query["RunStatus"] = request.runStatus ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceGetShrink)) {
            body["InstanceGet"] = request.instanceGetShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceDownStream",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceDownStreamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceDownStream(_ request: GetInstanceDownStreamRequest) async throws -> GetInstanceDownStreamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceDownStreamWithOptions(request as! GetInstanceDownStreamRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceUpDownStreamWithOptions(_ tmpReq: GetInstanceUpDownStreamRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceUpDownStreamResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetInstanceUpDownStreamShrinkRequest = GetInstanceUpDownStreamShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceId)) {
            request.instanceIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceId, "InstanceId", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.downStreamDepth)) {
            query["DownStreamDepth"] = request.downStreamDepth!;
        }
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.upStreamDepth)) {
            query["UpStreamDepth"] = request.upStreamDepth!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIdShrink)) {
            body["InstanceId"] = request.instanceIdShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceUpDownStream",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceUpDownStreamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceUpDownStream(_ request: GetInstanceUpDownStreamRequest) async throws -> GetInstanceUpDownStreamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceUpDownStreamWithOptions(request as! GetInstanceUpDownStreamRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLatestSubmitDetailWithOptions(_ tmpReq: GetLatestSubmitDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLatestSubmitDetailResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetLatestSubmitDetailShrinkRequest = GetLatestSubmitDetailShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.submitDetailQuery)) {
            request.submitDetailQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.submitDetailQuery, "SubmitDetailQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.submitDetailQueryShrink)) {
            body["SubmitDetailQuery"] = request.submitDetailQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLatestSubmitDetail",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLatestSubmitDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLatestSubmitDetail(_ request: GetLatestSubmitDetailRequest) async throws -> GetLatestSubmitDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLatestSubmitDetailWithOptions(request as! GetLatestSubmitDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMyRolesWithOptions(_ request: GetMyRolesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMyRolesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMyRoles",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMyRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMyRoles(_ request: GetMyRolesRequest) async throws -> GetMyRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMyRolesWithOptions(request as! GetMyRolesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMyTenantsWithOptions(_ tmpReq: GetMyTenantsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMyTenantsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetMyTenantsShrinkRequest = GetMyTenantsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.featureCodeList)) {
            request.featureCodeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.featureCodeList, "FeatureCodeList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.featureCodeListShrink)) {
            body["FeatureCodeList"] = request.featureCodeListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMyTenants",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMyTenantsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMyTenants(_ request: GetMyTenantsRequest) async throws -> GetMyTenantsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMyTenantsWithOptions(request as! GetMyTenantsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeUpDownStreamWithOptions(_ tmpReq: GetNodeUpDownStreamRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeUpDownStreamResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetNodeUpDownStreamShrinkRequest = GetNodeUpDownStreamShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.nodeId)) {
            request.nodeIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nodeId, "NodeId", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.downStreamDepth)) {
            query["DownStreamDepth"] = request.downStreamDepth!;
        }
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.upStreamDepth)) {
            query["UpStreamDepth"] = request.upStreamDepth!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeIdShrink)) {
            body["NodeId"] = request.nodeIdShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeUpDownStream",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeUpDownStreamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeUpDownStream(_ request: GetNodeUpDownStreamRequest) async throws -> GetNodeUpDownStreamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeUpDownStreamWithOptions(request as! GetNodeUpDownStreamRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOperationSubmitStatusWithOptions(_ request: GetOperationSubmitStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOperationSubmitStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOperationSubmitStatus",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOperationSubmitStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOperationSubmitStatus(_ request: GetOperationSubmitStatusRequest) async throws -> GetOperationSubmitStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOperationSubmitStatusWithOptions(request as! GetOperationSubmitStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalInstanceWithOptions(_ request: GetPhysicalInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhysicalInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhysicalInstance",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhysicalInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalInstance(_ request: GetPhysicalInstanceRequest) async throws -> GetPhysicalInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhysicalInstanceWithOptions(request as! GetPhysicalInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalInstanceLogWithOptions(_ request: GetPhysicalInstanceLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhysicalInstanceLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhysicalInstanceLog",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhysicalInstanceLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalInstanceLog(_ request: GetPhysicalInstanceLogRequest) async throws -> GetPhysicalInstanceLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhysicalInstanceLogWithOptions(request as! GetPhysicalInstanceLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalNodeWithOptions(_ request: GetPhysicalNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhysicalNodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhysicalNode",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhysicalNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalNode(_ request: GetPhysicalNodeRequest) async throws -> GetPhysicalNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhysicalNodeWithOptions(request as! GetPhysicalNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalNodeByOutputNameWithOptions(_ request: GetPhysicalNodeByOutputNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhysicalNodeByOutputNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.outputName)) {
            query["OutputName"] = request.outputName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhysicalNodeByOutputName",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhysicalNodeByOutputNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalNodeByOutputName(_ request: GetPhysicalNodeByOutputNameRequest) async throws -> GetPhysicalNodeByOutputNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhysicalNodeByOutputNameWithOptions(request as! GetPhysicalNodeByOutputNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalNodeContentWithOptions(_ request: GetPhysicalNodeContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhysicalNodeContentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhysicalNodeContent",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhysicalNodeContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalNodeContent(_ request: GetPhysicalNodeContentRequest) async throws -> GetPhysicalNodeContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhysicalNodeContentWithOptions(request as! GetPhysicalNodeContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalNodeOperationLogWithOptions(_ request: GetPhysicalNodeOperationLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhysicalNodeOperationLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhysicalNodeOperationLog",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhysicalNodeOperationLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhysicalNodeOperationLog(_ request: GetPhysicalNodeOperationLogRequest) async throws -> GetPhysicalNodeOperationLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhysicalNodeOperationLogWithOptions(request as! GetPhysicalNodeOperationLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineAsyncResultWithOptions(_ tmpReq: GetPipelineAsyncResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineAsyncResultResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetPipelineAsyncResultShrinkRequest = GetPipelineAsyncResultShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.context)) {
            request.contextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.context, "Context", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.asyncId)) {
            query["AsyncId"] = request.asyncId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contextShrink)) {
            body["Context"] = request.contextShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipelineAsyncResult",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineAsyncResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineAsyncResult(_ request: GetPipelineAsyncResultRequest) async throws -> GetPipelineAsyncResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPipelineAsyncResultWithOptions(request as! GetPipelineAsyncResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineByIdWithOptions(_ tmpReq: GetPipelineByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineByIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetPipelineByIdShrinkRequest = GetPipelineByIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.context)) {
            request.contextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.context, "Context", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.queryId)) {
            request.queryIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.queryId, "QueryId", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contextShrink)) {
            body["Context"] = request.contextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryIdShrink)) {
            body["QueryId"] = request.queryIdShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipelineById",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineById(_ request: GetPipelineByIdRequest) async throws -> GetPipelineByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPipelineByIdWithOptions(request as! GetPipelineByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectWithOptions(_ request: GetProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProject",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProject(_ request: GetProjectRequest) async throws -> GetProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProjectWithOptions(request as! GetProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectByNameWithOptions(_ request: GetProjectByNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectByNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProjectByName",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectByNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectByName(_ request: GetProjectByNameRequest) async throws -> GetProjectByNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProjectByNameWithOptions(request as! GetProjectByNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectProduceUserWithOptions(_ request: GetProjectProduceUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectProduceUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProjectProduceUser",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectProduceUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectProduceUser(_ request: GetProjectProduceUserRequest) async throws -> GetProjectProduceUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProjectProduceUserWithOptions(request as! GetProjectProduceUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectWhiteListsWithOptions(_ request: GetProjectWhiteListsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectWhiteListsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProjectWhiteLists",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectWhiteListsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectWhiteLists(_ request: GetProjectWhiteListsRequest) async throws -> GetProjectWhiteListsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProjectWhiteListsWithOptions(request as! GetProjectWhiteListsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQueueEngineVersionByEnvWithOptions(_ request: GetQueueEngineVersionByEnvRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQueueEngineVersionByEnvResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.queueName)) {
            query["QueueName"] = request.queueName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamBatchMode)) {
            query["StreamBatchMode"] = request.streamBatchMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQueueEngineVersionByEnv",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQueueEngineVersionByEnvResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQueueEngineVersionByEnv(_ request: GetQueueEngineVersionByEnvRequest) async throws -> GetQueueEngineVersionByEnvResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getQueueEngineVersionByEnvWithOptions(request as! GetQueueEngineVersionByEnvRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceWithOptions(_ request: GetResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResource",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResource(_ request: GetResourceRequest) async throws -> GetResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceWithOptions(request as! GetResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceByVersionWithOptions(_ request: GetResourceByVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceByVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceByVersion",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceByVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceByVersion(_ request: GetResourceByVersionRequest) async throws -> GetResourceByVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceByVersionWithOptions(request as! GetResourceByVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkLocalClientInfoWithOptions(_ request: GetSparkLocalClientInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSparkLocalClientInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.envEnum)) {
            query["EnvEnum"] = request.envEnum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSparkLocalClientInfo",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSparkLocalClientInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSparkLocalClientInfo(_ request: GetSparkLocalClientInfoRequest) async throws -> GetSparkLocalClientInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSparkLocalClientInfoWithOptions(request as! GetSparkLocalClientInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStreamJobsWithOptions(_ request: GetStreamJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStreamJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStreamJobs",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStreamJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStreamJobs(_ request: GetStreamJobsRequest) async throws -> GetStreamJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStreamJobsWithOptions(request as! GetStreamJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSupplementDagrunWithOptions(_ request: GetSupplementDagrunRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSupplementDagrunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.supplementId)) {
            query["SupplementId"] = request.supplementId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSupplementDagrun",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSupplementDagrunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSupplementDagrun(_ request: GetSupplementDagrunRequest) async throws -> GetSupplementDagrunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSupplementDagrunWithOptions(request as! GetSupplementDagrunRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSupplementDagrunInstanceWithOptions(_ request: GetSupplementDagrunInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSupplementDagrunInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dagrunId)) {
            query["DagrunId"] = request.dagrunId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSupplementDagrunInstance",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSupplementDagrunInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSupplementDagrunInstance(_ request: GetSupplementDagrunInstanceRequest) async throws -> GetSupplementDagrunInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSupplementDagrunInstanceWithOptions(request as! GetSupplementDagrunInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableColumnLineageByTaskIdWithOptions(_ tmpReq: GetTableColumnLineageByTaskIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableColumnLineageByTaskIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetTableColumnLineageByTaskIdShrinkRequest = GetTableColumnLineageByTaskIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tableColumnLineageByTaskIdQuery)) {
            request.tableColumnLineageByTaskIdQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tableColumnLineageByTaskIdQuery, "TableColumnLineageByTaskIdQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tableColumnLineageByTaskIdQueryShrink)) {
            body["TableColumnLineageByTaskIdQuery"] = request.tableColumnLineageByTaskIdQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableColumnLineageByTaskId",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableColumnLineageByTaskIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableColumnLineageByTaskId(_ request: GetTableColumnLineageByTaskIdRequest) async throws -> GetTableColumnLineageByTaskIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTableColumnLineageByTaskIdWithOptions(request as! GetTableColumnLineageByTaskIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableLineageByTaskIdWithOptions(_ tmpReq: GetTableLineageByTaskIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableLineageByTaskIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetTableLineageByTaskIdShrinkRequest = GetTableLineageByTaskIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tableLineageByTaskIdQuery)) {
            request.tableLineageByTaskIdQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tableLineageByTaskIdQuery, "TableLineageByTaskIdQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tableLineageByTaskIdQueryShrink)) {
            body["TableLineageByTaskIdQuery"] = request.tableLineageByTaskIdQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableLineageByTaskId",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableLineageByTaskIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableLineageByTaskId(_ request: GetTableLineageByTaskIdRequest) async throws -> GetTableLineageByTaskIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTableLineageByTaskIdWithOptions(request as! GetTableLineageByTaskIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTransferInfoWithOptions(_ request: GetTransferInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTransferInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.proposalId)) {
            query["ProposalId"] = request.proposalId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTransferInfo",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTransferInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTransferInfo(_ request: GetTransferInfoRequest) async throws -> GetTransferInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTransferInfoWithOptions(request as! GetTransferInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUdfWithOptions(_ request: GetUdfRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUdfResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUdf",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUdfResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUdf(_ request: GetUdfRequest) async throws -> GetUdfResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUdfWithOptions(request as! GetUdfRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUdfByVersionWithOptions(_ request: GetUdfByVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUdfByVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUdfByVersion",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUdfByVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUdfByVersion(_ request: GetUdfByVersionRequest) async throws -> GetUdfByVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUdfByVersionWithOptions(request as! GetUdfByVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserBySourceIdWithOptions(_ request: GetUserBySourceIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserBySourceIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            query["SourceId"] = request.sourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserBySourceId",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserBySourceIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserBySourceId(_ request: GetUserBySourceIdRequest) async throws -> GetUserBySourceIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserBySourceIdWithOptions(request as! GetUserBySourceIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGroupWithOptions(_ request: GetUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserGroup",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGroup(_ request: GetUserGroupRequest) async throws -> GetUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserGroupWithOptions(request as! GetUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUsersWithOptions(_ tmpReq: GetUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUsersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetUsersShrinkRequest = GetUsersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userIdList)) {
            request.userIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIdList, "UserIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userIdListShrink)) {
            body["UserIdList"] = request.userIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUsers",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUsers(_ request: GetUsersRequest) async throws -> GetUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUsersWithOptions(request as! GetUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantDataServiceApiWithOptions(_ tmpReq: GrantDataServiceApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantDataServiceApiResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GrantDataServiceApiShrinkRequest = GrantDataServiceApiShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.grantCommand)) {
            request.grantCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.grantCommand, "GrantCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.grantCommandShrink)) {
            body["GrantCommand"] = request.grantCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantDataServiceApi",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantDataServiceApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantDataServiceApi(_ request: GrantDataServiceApiRequest) async throws -> GrantDataServiceApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await grantDataServiceApiWithOptions(request as! GrantDataServiceApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantResourcePermissionWithOptions(_ tmpReq: GrantResourcePermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantResourcePermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GrantResourcePermissionShrinkRequest = GrantResourcePermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.grantCommand)) {
            request.grantCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.grantCommand, "GrantCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.grantCommandShrink)) {
            body["GrantCommand"] = request.grantCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantResourcePermission",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantResourcePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantResourcePermission(_ request: GrantResourcePermissionRequest) async throws -> GrantResourcePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await grantResourcePermissionWithOptions(request as! GrantResourcePermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddableRolesWithOptions(_ request: ListAddableRolesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAddableRolesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAddableRoles",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAddableRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddableRoles(_ request: ListAddableRolesRequest) async throws -> ListAddableRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAddableRolesWithOptions(request as! ListAddableRolesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddableUsersWithOptions(_ tmpReq: ListAddableUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAddableUsersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAddableUsersShrinkRequest = ListAddableUsersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAddableUsers",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAddableUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAddableUsers(_ request: ListAddableUsersRequest) async throws -> ListAddableUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAddableUsersWithOptions(request as! ListAddableUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertEventsWithOptions(_ tmpReq: ListAlertEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlertEventsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAlertEventsShrinkRequest = ListAlertEventsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlertEvents",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlertEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertEvents(_ request: ListAlertEventsRequest) async throws -> ListAlertEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAlertEventsWithOptions(request as! ListAlertEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertNotificationsWithOptions(_ tmpReq: ListAlertNotificationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlertNotificationsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAlertNotificationsShrinkRequest = ListAlertNotificationsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlertNotifications",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlertNotificationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertNotifications(_ request: ListAlertNotificationsRequest) async throws -> ListAlertNotificationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAlertNotificationsWithOptions(request as! ListAlertNotificationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiByAppWithOptions(_ tmpReq: ListApiByAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApiByAppResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListApiByAppShrinkRequest = ListApiByAppShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.pageQuery)) {
            request.pageQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pageQuery, "PageQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageQueryShrink)) {
            body["PageQuery"] = request.pageQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApiByApp",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApiByAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiByApp(_ request: ListApiByAppRequest) async throws -> ListApiByAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApiByAppWithOptions(request as! ListApiByAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorizedDataServiceApiDetailsWithOptions(_ tmpReq: ListAuthorizedDataServiceApiDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAuthorizedDataServiceApiDetailsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAuthorizedDataServiceApiDetailsShrinkRequest = ListAuthorizedDataServiceApiDetailsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAuthorizedDataServiceApiDetails",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAuthorizedDataServiceApiDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthorizedDataServiceApiDetails(_ request: ListAuthorizedDataServiceApiDetailsRequest) async throws -> ListAuthorizedDataServiceApiDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAuthorizedDataServiceApiDetailsWithOptions(request as! ListAuthorizedDataServiceApiDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBizEntitiesWithOptions(_ tmpReq: ListBizEntitiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBizEntitiesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListBizEntitiesShrinkRequest = ListBizEntitiesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBizEntities",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBizEntitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBizEntities(_ request: ListBizEntitiesRequest) async throws -> ListBizEntitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listBizEntitiesWithOptions(request as! ListBizEntitiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBizUnitsWithOptions(_ request: ListBizUnitsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBizUnitsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBizUnits",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBizUnitsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBizUnits(_ request: ListBizUnitsRequest) async throws -> ListBizUnitsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listBizUnitsWithOptions(request as! ListBizUnitsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComputeSourcesWithOptions(_ tmpReq: ListComputeSourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListComputeSourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListComputeSourcesShrinkRequest = ListComputeSourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListComputeSources",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListComputeSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComputeSources(_ request: ListComputeSourcesRequest) async throws -> ListComputeSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listComputeSourcesWithOptions(request as! ListComputeSourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataDomainsWithOptions(_ tmpReq: ListDataDomainsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataDomainsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataDomainsShrinkRequest = ListDataDomainsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataDomains",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataDomains(_ request: ListDataDomainsRequest) async throws -> ListDataDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataDomainsWithOptions(request as! ListDataDomainsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceApiCallStatisticsWithOptions(_ tmpReq: ListDataServiceApiCallStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataServiceApiCallStatisticsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataServiceApiCallStatisticsShrinkRequest = ListDataServiceApiCallStatisticsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataServiceApiCallStatistics",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataServiceApiCallStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceApiCallStatistics(_ request: ListDataServiceApiCallStatisticsRequest) async throws -> ListDataServiceApiCallStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataServiceApiCallStatisticsWithOptions(request as! ListDataServiceApiCallStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceApiCallsWithOptions(_ tmpReq: ListDataServiceApiCallsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataServiceApiCallsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataServiceApiCallsShrinkRequest = ListDataServiceApiCallsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataServiceApiCalls",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataServiceApiCallsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceApiCalls(_ request: ListDataServiceApiCallsRequest) async throws -> ListDataServiceApiCallsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataServiceApiCallsWithOptions(request as! ListDataServiceApiCallsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceApiImpactsWithOptions(_ tmpReq: ListDataServiceApiImpactsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataServiceApiImpactsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataServiceApiImpactsShrinkRequest = ListDataServiceApiImpactsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataServiceApiImpacts",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataServiceApiImpactsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceApiImpacts(_ request: ListDataServiceApiImpactsRequest) async throws -> ListDataServiceApiImpactsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataServiceApiImpactsWithOptions(request as! ListDataServiceApiImpactsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceAuthorizedAppsWithOptions(_ tmpReq: ListDataServiceAuthorizedAppsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataServiceAuthorizedAppsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataServiceAuthorizedAppsShrinkRequest = ListDataServiceAuthorizedAppsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataServiceAuthorizedApps",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataServiceAuthorizedAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceAuthorizedApps(_ request: ListDataServiceAuthorizedAppsRequest) async throws -> ListDataServiceAuthorizedAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataServiceAuthorizedAppsWithOptions(request as! ListDataServiceAuthorizedAppsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceMyApiPermissionsWithOptions(_ tmpReq: ListDataServiceMyApiPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataServiceMyApiPermissionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataServiceMyApiPermissionsShrinkRequest = ListDataServiceMyApiPermissionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataServiceMyApiPermissions",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataServiceMyApiPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceMyApiPermissions(_ request: ListDataServiceMyApiPermissionsRequest) async throws -> ListDataServiceMyApiPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataServiceMyApiPermissionsWithOptions(request as! ListDataServiceMyApiPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceMyAppPermissionsWithOptions(_ tmpReq: ListDataServiceMyAppPermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataServiceMyAppPermissionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataServiceMyAppPermissionsShrinkRequest = ListDataServiceMyAppPermissionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataServiceMyAppPermissions",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataServiceMyAppPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServiceMyAppPermissions(_ request: ListDataServiceMyAppPermissionsRequest) async throws -> ListDataServiceMyAppPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataServiceMyAppPermissionsWithOptions(request as! ListDataServiceMyAppPermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServicePublishedApisWithOptions(_ tmpReq: ListDataServicePublishedApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataServicePublishedApisResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataServicePublishedApisShrinkRequest = ListDataServicePublishedApisShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataServicePublishedApis",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataServicePublishedApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataServicePublishedApis(_ request: ListDataServicePublishedApisRequest) async throws -> ListDataServicePublishedApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataServicePublishedApisWithOptions(request as! ListDataServicePublishedApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSourceWithConfigWithOptions(_ tmpReq: ListDataSourceWithConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataSourceWithConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataSourceWithConfigShrinkRequest = ListDataSourceWithConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataSourceWithConfig",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataSourceWithConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSourceWithConfig(_ request: ListDataSourceWithConfigRequest) async throws -> ListDataSourceWithConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataSourceWithConfigWithOptions(request as! ListDataSourceWithConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFilesWithOptions(_ tmpReq: ListFilesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFilesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListFilesShrinkRequest = ListFilesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFiles",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFiles(_ request: ListFilesRequest) async throws -> ListFilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFilesWithOptions(request as! ListFilesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithOptions(_ tmpReq: ListInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListInstancesShrinkRequest = ListInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstances",
            "version": "2023-06-30",
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
    public func listNodeDownStreamWithOptions(_ tmpReq: ListNodeDownStreamRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeDownStreamResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListNodeDownStreamShrinkRequest = ListNodeDownStreamShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodeDownStream",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodeDownStreamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeDownStream(_ request: ListNodeDownStreamRequest) async throws -> ListNodeDownStreamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodeDownStreamWithOptions(request as! ListNodeDownStreamRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodesWithOptions(_ tmpReq: ListNodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListNodesShrinkRequest = ListNodesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodes",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodes(_ request: ListNodesRequest) async throws -> ListNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodesWithOptions(request as! ListNodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectMembersWithOptions(_ tmpReq: ListProjectMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListProjectMembersShrinkRequest = ListProjectMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjectMembers",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectMembers(_ request: ListProjectMembersRequest) async throws -> ListProjectMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProjectMembersWithOptions(request as! ListProjectMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectsWithOptions(_ tmpReq: ListProjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListProjectsShrinkRequest = ListProjectsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjects",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjects(_ request: ListProjectsRequest) async throws -> ListProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProjectsWithOptions(request as! ListProjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPublishRecordsWithOptions(_ tmpReq: ListPublishRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPublishRecordsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListPublishRecordsShrinkRequest = ListPublishRecordsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPublishRecords",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPublishRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPublishRecords(_ request: ListPublishRecordsRequest) async throws -> ListPublishRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPublishRecordsWithOptions(request as! ListPublishRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourcePermissionOperationLogWithOptions(_ tmpReq: ListResourcePermissionOperationLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourcePermissionOperationLogResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListResourcePermissionOperationLogShrinkRequest = ListResourcePermissionOperationLogShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourcePermissionOperationLog",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourcePermissionOperationLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourcePermissionOperationLog(_ request: ListResourcePermissionOperationLogRequest) async throws -> ListResourcePermissionOperationLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listResourcePermissionOperationLogWithOptions(request as! ListResourcePermissionOperationLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourcePermissionsWithOptions(_ tmpReq: ListResourcePermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourcePermissionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListResourcePermissionsShrinkRequest = ListResourcePermissionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourcePermissions",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourcePermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourcePermissions(_ request: ListResourcePermissionsRequest) async throws -> ListResourcePermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listResourcePermissionsWithOptions(request as! ListResourcePermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRowPermissionWithOptions(_ tmpReq: ListRowPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRowPermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListRowPermissionShrinkRequest = ListRowPermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.pageRowPermissionQuery)) {
            request.pageRowPermissionQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pageRowPermissionQuery, "PageRowPermissionQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageRowPermissionQueryShrink)) {
            body["PageRowPermissionQuery"] = request.pageRowPermissionQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRowPermission",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRowPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRowPermission(_ request: ListRowPermissionRequest) async throws -> ListRowPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRowPermissionWithOptions(request as! ListRowPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRowPermissionByUserIdWithOptions(_ tmpReq: ListRowPermissionByUserIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRowPermissionByUserIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListRowPermissionByUserIdShrinkRequest = ListRowPermissionByUserIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listRowPermissionByUserIdQuery)) {
            request.listRowPermissionByUserIdQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listRowPermissionByUserIdQuery, "ListRowPermissionByUserIdQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listRowPermissionByUserIdQueryShrink)) {
            body["ListRowPermissionByUserIdQuery"] = request.listRowPermissionByUserIdQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRowPermissionByUserId",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRowPermissionByUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRowPermissionByUserId(_ request: ListRowPermissionByUserIdRequest) async throws -> ListRowPermissionByUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRowPermissionByUserIdWithOptions(request as! ListRowPermissionByUserIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubmitRecordsWithOptions(_ tmpReq: ListSubmitRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSubmitRecordsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListSubmitRecordsShrinkRequest = ListSubmitRecordsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSubmitRecords",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSubmitRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubmitRecords(_ request: ListSubmitRecordsRequest) async throws -> ListSubmitRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSubmitRecordsWithOptions(request as! ListSubmitRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTenantMembersWithOptions(_ tmpReq: ListTenantMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTenantMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTenantMembersShrinkRequest = ListTenantMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTenantMembers",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTenantMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTenantMembers(_ request: ListTenantMembersRequest) async throws -> ListTenantMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTenantMembersWithOptions(request as! ListTenantMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroupMembersWithOptions(_ tmpReq: ListUserGroupMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserGroupMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListUserGroupMembersShrinkRequest = ListUserGroupMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserGroupMembers",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserGroupMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroupMembers(_ request: ListUserGroupMembersRequest) async throws -> ListUserGroupMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserGroupMembersWithOptions(request as! ListUserGroupMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroupsWithOptions(_ tmpReq: ListUserGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserGroupsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListUserGroupsShrinkRequest = ListUserGroupsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listQuery)) {
            request.listQueryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listQuery, "ListQuery", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listQueryShrink)) {
            body["ListQuery"] = request.listQueryShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserGroups",
            "version": "2023-06-30",
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
    public func offlineBatchTaskWithOptions(_ request: OfflineBatchTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineBatchTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineBatchTask",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineBatchTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineBatchTask(_ request: OfflineBatchTaskRequest) async throws -> OfflineBatchTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await offlineBatchTaskWithOptions(request as! OfflineBatchTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineBizEntityWithOptions(_ tmpReq: OfflineBizEntityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineBizEntityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: OfflineBizEntityShrinkRequest = OfflineBizEntityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.offlineCommand)) {
            request.offlineCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.offlineCommand, "OfflineCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.offlineCommandShrink)) {
            body["OfflineCommand"] = request.offlineCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineBizEntity",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineBizEntityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineBizEntity(_ request: OfflineBizEntityRequest) async throws -> OfflineBizEntityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await offlineBizEntityWithOptions(request as! OfflineBizEntityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlinePipelineWithOptions(_ tmpReq: OfflinePipelineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflinePipelineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: OfflinePipelineShrinkRequest = OfflinePipelineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.context)) {
            request.contextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.context, "Context", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.offlineCommand)) {
            request.offlineCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.offlineCommand, "OfflineCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contextShrink)) {
            body["Context"] = request.contextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offlineCommandShrink)) {
            body["OfflineCommand"] = request.offlineCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflinePipeline",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflinePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlinePipeline(_ request: OfflinePipelineRequest) async throws -> OfflinePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await offlinePipelineWithOptions(request as! OfflinePipelineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlinePipelineByAsyncWithOptions(_ tmpReq: OfflinePipelineByAsyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflinePipelineByAsyncResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: OfflinePipelineByAsyncShrinkRequest = OfflinePipelineByAsyncShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.context)) {
            request.contextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.context, "Context", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.offlineCommand)) {
            request.offlineCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.offlineCommand, "OfflineCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contextShrink)) {
            body["Context"] = request.contextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offlineCommandShrink)) {
            body["OfflineCommand"] = request.offlineCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflinePipelineByAsync",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflinePipelineByAsyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlinePipelineByAsync(_ request: OfflinePipelineByAsyncRequest) async throws -> OfflinePipelineByAsyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await offlinePipelineByAsyncWithOptions(request as! OfflinePipelineByAsyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineBizEntityWithOptions(_ tmpReq: OnlineBizEntityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OnlineBizEntityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: OnlineBizEntityShrinkRequest = OnlineBizEntityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.onlineCommand)) {
            request.onlineCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.onlineCommand, "OnlineCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.onlineCommandShrink)) {
            body["OnlineCommand"] = request.onlineCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OnlineBizEntity",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OnlineBizEntityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineBizEntity(_ request: OnlineBizEntityRequest) async throws -> OnlineBizEntityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await onlineBizEntityWithOptions(request as! OnlineBizEntityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateInstanceWithOptions(_ tmpReq: OperateInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: OperateInstanceShrinkRequest = OperateInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.operateCommand)) {
            request.operateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.operateCommand, "OperateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operateCommandShrink)) {
            body["OperateCommand"] = request.operateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateInstance",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateInstance(_ request: OperateInstanceRequest) async throws -> OperateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateInstanceWithOptions(request as! OperateInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func parseBatchTaskDependencyWithOptions(_ tmpReq: ParseBatchTaskDependencyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ParseBatchTaskDependencyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ParseBatchTaskDependencyShrinkRequest = ParseBatchTaskDependencyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.parseCommand)) {
            request.parseCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.parseCommand, "ParseCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.parseCommandShrink)) {
            body["ParseCommand"] = request.parseCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ParseBatchTaskDependency",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ParseBatchTaskDependencyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func parseBatchTaskDependency(_ request: ParseBatchTaskDependencyRequest) async throws -> ParseBatchTaskDependencyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await parseBatchTaskDependencyWithOptions(request as! ParseBatchTaskDependencyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pausePhysicalNodeWithOptions(_ tmpReq: PausePhysicalNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PausePhysicalNodeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PausePhysicalNodeShrinkRequest = PausePhysicalNodeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.pauseCommand)) {
            request.pauseCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pauseCommand, "PauseCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pauseCommandShrink)) {
            body["PauseCommand"] = request.pauseCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PausePhysicalNode",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PausePhysicalNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pausePhysicalNode(_ request: PausePhysicalNodeRequest) async throws -> PausePhysicalNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pausePhysicalNodeWithOptions(request as! PausePhysicalNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishDataServiceApiWithOptions(_ request: PublishDataServiceApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishDataServiceApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishDataServiceApi",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishDataServiceApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishDataServiceApi(_ request: PublishDataServiceApiRequest) async throws -> PublishDataServiceApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await publishDataServiceApiWithOptions(request as! PublishDataServiceApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishObjectListWithOptions(_ tmpReq: PublishObjectListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishObjectListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PublishObjectListShrinkRequest = PublishObjectListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.publishCommand)) {
            request.publishCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.publishCommand, "PublishCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.publishCommandShrink)) {
            body["PublishCommand"] = request.publishCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishObjectList",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishObjectListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishObjectList(_ request: PublishObjectListRequest) async throws -> PublishObjectListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await publishObjectListWithOptions(request as! PublishObjectListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeProjectMemberWithOptions(_ tmpReq: RemoveProjectMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveProjectMemberResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveProjectMemberShrinkRequest = RemoveProjectMemberShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.removeCommand)) {
            request.removeCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.removeCommand, "RemoveCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.removeCommandShrink)) {
            body["RemoveCommand"] = request.removeCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveProjectMember",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveProjectMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeProjectMember(_ request: RemoveProjectMemberRequest) async throws -> RemoveProjectMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeProjectMemberWithOptions(request as! RemoveProjectMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeTenantMemberWithOptions(_ tmpReq: RemoveTenantMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveTenantMemberResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveTenantMemberShrinkRequest = RemoveTenantMemberShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.removeCommand)) {
            request.removeCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.removeCommand, "RemoveCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.removeCommandShrink)) {
            body["RemoveCommand"] = request.removeCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveTenantMember",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveTenantMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeTenantMember(_ request: RemoveTenantMemberRequest) async throws -> RemoveTenantMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeTenantMemberWithOptions(request as! RemoveTenantMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserGroupMemberWithOptions(_ tmpReq: RemoveUserGroupMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveUserGroupMemberResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveUserGroupMemberShrinkRequest = RemoveUserGroupMemberShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.removeCommand)) {
            request.removeCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.removeCommand, "RemoveCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.removeCommandShrink)) {
            body["RemoveCommand"] = request.removeCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveUserGroupMember",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveUserGroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserGroupMember(_ request: RemoveUserGroupMemberRequest) async throws -> RemoveUserGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeUserGroupMemberWithOptions(request as! RemoveUserGroupMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replaceProjectWhiteListsWithOptions(_ tmpReq: ReplaceProjectWhiteListsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReplaceProjectWhiteListsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ReplaceProjectWhiteListsShrinkRequest = ReplaceProjectWhiteListsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.replaceCommand)) {
            request.replaceCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.replaceCommand, "ReplaceCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.replaceCommandShrink)) {
            body["ReplaceCommand"] = request.replaceCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReplaceProjectWhiteLists",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReplaceProjectWhiteListsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replaceProjectWhiteLists(_ request: ReplaceProjectWhiteListsRequest) async throws -> ReplaceProjectWhiteListsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await replaceProjectWhiteListsWithOptions(request as! ReplaceProjectWhiteListsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumePhysicalNodeWithOptions(_ tmpReq: ResumePhysicalNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumePhysicalNodeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ResumePhysicalNodeShrinkRequest = ResumePhysicalNodeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resumeCommand)) {
            request.resumeCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resumeCommand, "ResumeCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resumeCommandShrink)) {
            body["ResumeCommand"] = request.resumeCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumePhysicalNode",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumePhysicalNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumePhysicalNode(_ request: ResumePhysicalNodeRequest) async throws -> ResumePhysicalNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resumePhysicalNodeWithOptions(request as! ResumePhysicalNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryTransferOwnershipWithOptions(_ tmpReq: RetryTransferOwnershipRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RetryTransferOwnershipResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RetryTransferOwnershipShrinkRequest = RetryTransferOwnershipShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.privilegeTransferRecord)) {
            request.privilegeTransferRecordShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.privilegeTransferRecord, "PrivilegeTransferRecord", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.privilegeTransferRecordShrink)) {
            body["PrivilegeTransferRecord"] = request.privilegeTransferRecordShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetryTransferOwnership",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetryTransferOwnershipResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryTransferOwnership(_ request: RetryTransferOwnershipRequest) async throws -> RetryTransferOwnershipResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await retryTransferOwnershipWithOptions(request as! RetryTransferOwnershipRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeDataServiceApiWithOptions(_ tmpReq: RevokeDataServiceApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeDataServiceApiResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RevokeDataServiceApiShrinkRequest = RevokeDataServiceApiShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.revokeCommand)) {
            request.revokeCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.revokeCommand, "RevokeCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.revokeCommandShrink)) {
            body["RevokeCommand"] = request.revokeCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeDataServiceApi",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeDataServiceApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeDataServiceApi(_ request: RevokeDataServiceApiRequest) async throws -> RevokeDataServiceApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeDataServiceApiWithOptions(request as! RevokeDataServiceApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeResourcePermissionWithOptions(_ tmpReq: RevokeResourcePermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeResourcePermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RevokeResourcePermissionShrinkRequest = RevokeResourcePermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.revokeCommand)) {
            request.revokeCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.revokeCommand, "RevokeCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.revokeCommandShrink)) {
            body["RevokeCommand"] = request.revokeCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeResourcePermission",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeResourcePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeResourcePermission(_ request: RevokeResourcePermissionRequest) async throws -> RevokeResourcePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeResourcePermissionWithOptions(request as! RevokeResourcePermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopAdHocTaskWithOptions(_ request: StopAdHocTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopAdHocTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopAdHocTask",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopAdHocTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopAdHocTask(_ request: StopAdHocTaskRequest) async throws -> StopAdHocTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopAdHocTaskWithOptions(request as! StopAdHocTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitBatchTaskWithOptions(_ tmpReq: SubmitBatchTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitBatchTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitBatchTaskShrinkRequest = SubmitBatchTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.submitCommand)) {
            request.submitCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.submitCommand, "SubmitCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.submitCommandShrink)) {
            body["SubmitCommand"] = request.submitCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitBatchTask",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitBatchTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitBatchTask(_ request: SubmitBatchTaskRequest) async throws -> SubmitBatchTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitBatchTaskWithOptions(request as! SubmitBatchTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferOwnershipForAllObjectWithOptions(_ tmpReq: TransferOwnershipForAllObjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferOwnershipForAllObjectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TransferOwnershipForAllObjectShrinkRequest = TransferOwnershipForAllObjectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.privilegeTransferRecord)) {
            request.privilegeTransferRecordShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.privilegeTransferRecord, "PrivilegeTransferRecord", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.privilegeTransferRecordShrink)) {
            body["PrivilegeTransferRecord"] = request.privilegeTransferRecordShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferOwnershipForAllObject",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferOwnershipForAllObjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferOwnershipForAllObject(_ request: TransferOwnershipForAllObjectRequest) async throws -> TransferOwnershipForAllObjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await transferOwnershipForAllObjectWithOptions(request as! TransferOwnershipForAllObjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAdHocFileWithOptions(_ tmpReq: UpdateAdHocFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAdHocFileResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAdHocFileShrinkRequest = UpdateAdHocFileShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAdHocFile",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAdHocFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAdHocFile(_ request: UpdateAdHocFileRequest) async throws -> UpdateAdHocFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAdHocFileWithOptions(request as! UpdateAdHocFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBatchTaskWithOptions(_ tmpReq: UpdateBatchTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBatchTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateBatchTaskShrinkRequest = UpdateBatchTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBatchTask",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBatchTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBatchTask(_ request: UpdateBatchTaskRequest) async throws -> UpdateBatchTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateBatchTaskWithOptions(request as! UpdateBatchTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBatchTaskUdfLineagesWithOptions(_ tmpReq: UpdateBatchTaskUdfLineagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBatchTaskUdfLineagesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateBatchTaskUdfLineagesShrinkRequest = UpdateBatchTaskUdfLineagesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBatchTaskUdfLineages",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBatchTaskUdfLineagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBatchTaskUdfLineages(_ request: UpdateBatchTaskUdfLineagesRequest) async throws -> UpdateBatchTaskUdfLineagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateBatchTaskUdfLineagesWithOptions(request as! UpdateBatchTaskUdfLineagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBizEntityWithOptions(_ tmpReq: UpdateBizEntityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBizEntityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateBizEntityShrinkRequest = UpdateBizEntityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBizEntity",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBizEntityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBizEntity(_ request: UpdateBizEntityRequest) async throws -> UpdateBizEntityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateBizEntityWithOptions(request as! UpdateBizEntityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBizUnitWithOptions(_ tmpReq: UpdateBizUnitRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBizUnitResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateBizUnitShrinkRequest = UpdateBizUnitShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBizUnit",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBizUnitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBizUnit(_ request: UpdateBizUnitRequest) async throws -> UpdateBizUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateBizUnitWithOptions(request as! UpdateBizUnitRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateComputeSourceWithOptions(_ tmpReq: UpdateComputeSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateComputeSourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateComputeSourceShrinkRequest = UpdateComputeSourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateComputeSource",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateComputeSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateComputeSource(_ request: UpdateComputeSourceRequest) async throws -> UpdateComputeSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateComputeSourceWithOptions(request as! UpdateComputeSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataDomainWithOptions(_ tmpReq: UpdateDataDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataDomainResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateDataDomainShrinkRequest = UpdateDataDomainShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataDomain",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataDomain(_ request: UpdateDataDomainRequest) async throws -> UpdateDataDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataDomainWithOptions(request as! UpdateDataDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSourceBasicInfoWithOptions(_ tmpReq: UpdateDataSourceBasicInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataSourceBasicInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateDataSourceBasicInfoShrinkRequest = UpdateDataSourceBasicInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataSourceBasicInfo",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataSourceBasicInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSourceBasicInfo(_ request: UpdateDataSourceBasicInfoRequest) async throws -> UpdateDataSourceBasicInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataSourceBasicInfoWithOptions(request as! UpdateDataSourceBasicInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSourceConfigWithOptions(_ tmpReq: UpdateDataSourceConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataSourceConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateDataSourceConfigShrinkRequest = UpdateDataSourceConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataSourceConfig",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataSourceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSourceConfig(_ request: UpdateDataSourceConfigRequest) async throws -> UpdateDataSourceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataSourceConfigWithOptions(request as! UpdateDataSourceConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFileDirectoryWithOptions(_ request: UpdateFileDirectoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFileDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directory)) {
            query["Directory"] = request.directory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFileDirectory",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFileDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFileDirectory(_ request: UpdateFileDirectoryRequest) async throws -> UpdateFileDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateFileDirectoryWithOptions(request as! UpdateFileDirectoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFileNameWithOptions(_ request: UpdateFileNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFileNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFileName",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFileNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFileName(_ request: UpdateFileNameRequest) async throws -> UpdateFileNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateFileNameWithOptions(request as! UpdateFileNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipelineWithOptions(_ tmpReq: UpdatePipelineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePipelineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdatePipelineShrinkRequest = UpdatePipelineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.context)) {
            request.contextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.context, "Context", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contextShrink)) {
            body["Context"] = request.contextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePipeline",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipeline(_ request: UpdatePipelineRequest) async throws -> UpdatePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePipelineWithOptions(request as! UpdatePipelineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipelineByAsyncWithOptions(_ tmpReq: UpdatePipelineByAsyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePipelineByAsyncResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdatePipelineByAsyncShrinkRequest = UpdatePipelineByAsyncShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.context)) {
            request.contextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.context, "Context", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contextShrink)) {
            body["Context"] = request.contextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePipelineByAsync",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePipelineByAsyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipelineByAsync(_ request: UpdatePipelineByAsyncRequest) async throws -> UpdatePipelineByAsyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePipelineByAsyncWithOptions(request as! UpdatePipelineByAsyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectMemberWithOptions(_ tmpReq: UpdateProjectMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectMemberResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateProjectMemberShrinkRequest = UpdateProjectMemberShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProjectMember",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectMember(_ request: UpdateProjectMemberRequest) async throws -> UpdateProjectMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateProjectMemberWithOptions(request as! UpdateProjectMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceWithOptions(_ tmpReq: UpdateResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateResourceShrinkRequest = UpdateResourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResource",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResource(_ request: UpdateResourceRequest) async throws -> UpdateResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateResourceWithOptions(request as! UpdateResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRowPermissionWithOptions(_ tmpReq: UpdateRowPermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRowPermissionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateRowPermissionShrinkRequest = UpdateRowPermissionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateRowPermissionCommand)) {
            request.updateRowPermissionCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateRowPermissionCommand, "UpdateRowPermissionCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateRowPermissionCommandShrink)) {
            body["UpdateRowPermissionCommand"] = request.updateRowPermissionCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRowPermission",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRowPermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRowPermission(_ request: UpdateRowPermissionRequest) async throws -> UpdateRowPermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRowPermissionWithOptions(request as! UpdateRowPermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTenantComputeEngineWithOptions(_ tmpReq: UpdateTenantComputeEngineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTenantComputeEngineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTenantComputeEngineShrinkRequest = UpdateTenantComputeEngineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTenantComputeEngine",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTenantComputeEngineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTenantComputeEngine(_ request: UpdateTenantComputeEngineRequest) async throws -> UpdateTenantComputeEngineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTenantComputeEngineWithOptions(request as! UpdateTenantComputeEngineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTenantMemberWithOptions(_ tmpReq: UpdateTenantMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTenantMemberResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTenantMemberShrinkRequest = UpdateTenantMemberShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTenantMember",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTenantMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTenantMember(_ request: UpdateTenantMemberRequest) async throws -> UpdateTenantMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTenantMemberWithOptions(request as! UpdateTenantMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUdfWithOptions(_ tmpReq: UpdateUdfRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUdfResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateUdfShrinkRequest = UpdateUdfShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUdf",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUdfResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUdf(_ request: UpdateUdfRequest) async throws -> UpdateUdfResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUdfWithOptions(request as! UpdateUdfRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGroupWithOptions(_ tmpReq: UpdateUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateUserGroupShrinkRequest = UpdateUserGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.updateCommand)) {
            request.updateCommandShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateCommand, "UpdateCommand", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateCommandShrink)) {
            body["UpdateCommand"] = request.updateCommandShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserGroup",
            "version": "2023-06-30",
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
    public func updateUserGroupSwitchWithOptions(_ request: UpdateUserGroupSwitchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserGroupSwitchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.active)) {
            query["Active"] = request.active!;
        }
        if (!TeaUtils.Client.isUnset(request.opTenantId)) {
            query["OpTenantId"] = request.opTenantId!;
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserGroupSwitch",
            "version": "2023-06-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserGroupSwitchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGroupSwitch(_ request: UpdateUserGroupSwitchRequest) async throws -> UpdateUserGroupSwitchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserGroupSwitchWithOptions(request as! UpdateUserGroupSwitchRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
