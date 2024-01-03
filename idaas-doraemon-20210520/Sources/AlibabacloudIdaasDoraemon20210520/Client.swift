import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "central"
        self._endpointMap = [
            "cn-hangzhou": "idaas-doraemon.cn-hangzhou.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("idaas-doraemon", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createAuthenticatorRegistrationWithOptions(_ request: CreateAuthenticatorRegistrationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAuthenticatorRegistrationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorType)) {
            query["AuthenticatorType"] = request.authenticatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientExtendParamsJson)) {
            query["ClientExtendParamsJson"] = request.clientExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientExtendParamsJsonSign)) {
            query["ClientExtendParamsJsonSign"] = request.clientExtendParamsJsonSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrationContext)) {
            query["RegistrationContext"] = request.registrationContext ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverExtendParamsJson)) {
            query["ServerExtendParamsJson"] = request.serverExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userDisplayName)) {
            query["UserDisplayName"] = request.userDisplayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAuthenticatorRegistration",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAuthenticatorRegistrationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAuthenticatorRegistration(_ request: CreateAuthenticatorRegistrationRequest) async throws -> CreateAuthenticatorRegistrationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAuthenticatorRegistrationWithOptions(request as! CreateAuthenticatorRegistrationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserAuthenticateOptionsWithOptions(_ request: CreateUserAuthenticateOptionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserAuthenticateOptionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorType)) {
            query["AuthenticatorType"] = request.authenticatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bindHashBase64)) {
            query["BindHashBase64"] = request.bindHashBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientExtendParamsJson)) {
            query["ClientExtendParamsJson"] = request.clientExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientExtendParamsJsonSign)) {
            query["ClientExtendParamsJsonSign"] = request.clientExtendParamsJsonSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverExtendParamsJson)) {
            query["ServerExtendParamsJson"] = request.serverExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserAuthenticateOptions",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserAuthenticateOptionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserAuthenticateOptions(_ request: CreateUserAuthenticateOptionsRequest) async throws -> CreateUserAuthenticateOptionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUserAuthenticateOptionsWithOptions(request as! CreateUserAuthenticateOptionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deregisterAuthenticatorWithOptions(_ request: DeregisterAuthenticatorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeregisterAuthenticatorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorUuid)) {
            query["AuthenticatorUuid"] = request.authenticatorUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeregisterAuthenticator",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeregisterAuthenticatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deregisterAuthenticator(_ request: DeregisterAuthenticatorRequest) async throws -> DeregisterAuthenticatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deregisterAuthenticatorWithOptions(request as! DeregisterAuthenticatorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fetchAccessTokenWithOptions(_ request: FetchAccessTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FetchAccessTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileExtendParamsJson)) {
            query["MobileExtendParamsJson"] = request.mobileExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileExtendParamsJsonSign)) {
            query["MobileExtendParamsJsonSign"] = request.mobileExtendParamsJsonSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverExtendParamsJson)) {
            query["ServerExtendParamsJson"] = request.serverExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.XClientIp)) {
            query["XClientIp"] = request.XClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FetchAccessToken",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FetchAccessTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fetchAccessToken(_ request: FetchAccessTokenRequest) async throws -> FetchAccessTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await fetchAccessTokenWithOptions(request as! FetchAccessTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthenticatorWithOptions(_ request: GetAuthenticatorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAuthenticatorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorUuid)) {
            query["AuthenticatorUuid"] = request.authenticatorUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAuthenticator",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAuthenticatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthenticator(_ request: GetAuthenticatorRequest) async throws -> GetAuthenticatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAuthenticatorWithOptions(request as! GetAuthenticatorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthenticationLogsWithOptions(_ request: ListAuthenticationLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAuthenticationLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorType)) {
            query["AuthenticatorType"] = request.authenticatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorUuid)) {
            query["AuthenticatorUuid"] = request.authenticatorUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialId)) {
            query["CredentialId"] = request.credentialId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromTime)) {
            query["FromTime"] = request.fromTime!;
        }
        if (!TeaUtils.Client.isUnset(request.logTag)) {
            query["LogTag"] = request.logTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.toTime)) {
            query["ToTime"] = request.toTime!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAuthenticationLogs",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAuthenticationLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthenticationLogs(_ request: ListAuthenticationLogsRequest) async throws -> ListAuthenticationLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAuthenticationLogsWithOptions(request as! ListAuthenticationLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthenticatorOpsLogsWithOptions(_ request: ListAuthenticatorOpsLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAuthenticatorOpsLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorType)) {
            query["AuthenticatorType"] = request.authenticatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorUuid)) {
            query["AuthenticatorUuid"] = request.authenticatorUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromTime)) {
            query["FromTime"] = request.fromTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.toTime)) {
            query["ToTime"] = request.toTime!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAuthenticatorOpsLogs",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAuthenticatorOpsLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthenticatorOpsLogs(_ request: ListAuthenticatorOpsLogsRequest) async throws -> ListAuthenticatorOpsLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAuthenticatorOpsLogsWithOptions(request as! ListAuthenticatorOpsLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthenticatorsWithOptions(_ request: ListAuthenticatorsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAuthenticatorsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorType)) {
            query["AuthenticatorType"] = request.authenticatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
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
            "action": "ListAuthenticators",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAuthenticatorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAuthenticators(_ request: ListAuthenticatorsRequest) async throws -> ListAuthenticatorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAuthenticatorsWithOptions(request as! ListAuthenticatorsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCostUnitOrdersWithOptions(_ request: ListCostUnitOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCostUnitOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginDate)) {
            query["BeginDate"] = request.beginDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.finalDate)) {
            query["FinalDate"] = request.finalDate ?? "";
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
            "action": "ListCostUnitOrders",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCostUnitOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCostUnitOrders(_ request: ListCostUnitOrdersRequest) async throws -> ListCostUnitOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCostUnitOrdersWithOptions(request as! ListCostUnitOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrderConsumeStatisticRecordsWithOptions(_ request: ListOrderConsumeStatisticRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrderConsumeStatisticRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliOrderCode)) {
            query["AliOrderCode"] = request.aliOrderCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisticTimeMax)) {
            query["StatisticTimeMax"] = request.statisticTimeMax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisticTimeMin)) {
            query["StatisticTimeMin"] = request.statisticTimeMin ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrderConsumeStatisticRecords",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOrderConsumeStatisticRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrderConsumeStatisticRecords(_ request: ListOrderConsumeStatisticRecordsRequest) async throws -> ListOrderConsumeStatisticRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOrderConsumeStatisticRecordsWithOptions(request as! ListOrderConsumeStatisticRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPwnedPasswordsWithOptions(_ request: ListPwnedPasswordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPwnedPasswordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.prefixHexPasswordSha1Hash)) {
            query["PrefixHexPasswordSha1Hash"] = request.prefixHexPasswordSha1Hash ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPwnedPasswords",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPwnedPasswordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPwnedPasswords(_ request: ListPwnedPasswordsRequest) async throws -> ListPwnedPasswordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPwnedPasswordsWithOptions(request as! ListPwnedPasswordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ request: ListUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2021-05-20",
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
    public func querySmsReportsWithOptions(_ request: QuerySmsReportsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySmsReportsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySmsReports",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySmsReportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySmsReports(_ request: QuerySmsReportsRequest) async throws -> QuerySmsReportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySmsReportsWithOptions(request as! QuerySmsReportsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySmsUpsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySmsUpsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySmsUps",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySmsUpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySmsUps() async throws -> QuerySmsUpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySmsUpsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerAuthenticatorWithOptions(_ request: RegisterAuthenticatorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterAuthenticatorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorName)) {
            query["AuthenticatorName"] = request.authenticatorName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorType)) {
            query["AuthenticatorType"] = request.authenticatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientExtendParamsJson)) {
            query["ClientExtendParamsJson"] = request.clientExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientExtendParamsJsonSign)) {
            query["ClientExtendParamsJsonSign"] = request.clientExtendParamsJsonSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logParams)) {
            query["LogParams"] = request.logParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrationContext)) {
            query["RegistrationContext"] = request.registrationContext ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requireChallengeBase64)) {
            query["RequireChallengeBase64"] = request.requireChallengeBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverExtendParamsJson)) {
            query["ServerExtendParamsJson"] = request.serverExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userSourceIp)) {
            query["UserSourceIp"] = request.userSourceIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterAuthenticator",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterAuthenticatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerAuthenticator(_ request: RegisterAuthenticatorRequest) async throws -> RegisterAuthenticatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerAuthenticatorWithOptions(request as! RegisterAuthenticatorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func serviceInvokeWithOptions(_ request: ServiceInvokeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ServiceInvokeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.doraemonAction)) {
            query["DoraemonAction"] = request.doraemonAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileExtendParamsJson)) {
            query["MobileExtendParamsJson"] = request.mobileExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileExtendParamsJsonSign)) {
            query["MobileExtendParamsJsonSign"] = request.mobileExtendParamsJsonSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverExtendParamsJson)) {
            query["ServerExtendParamsJson"] = request.serverExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.testModel)) {
            query["TestModel"] = request.testModel!;
        }
        if (!TeaUtils.Client.isUnset(request.XClientIp)) {
            query["XClientIp"] = request.XClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ServiceInvoke",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ServiceInvokeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func serviceInvoke(_ request: ServiceInvokeRequest) async throws -> ServiceInvokeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await serviceInvokeWithOptions(request as! ServiceInvokeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAuthenticatorAttributeWithOptions(_ request: UpdateAuthenticatorAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAuthenticatorAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorName)) {
            query["AuthenticatorName"] = request.authenticatorName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorUuid)) {
            query["AuthenticatorUuid"] = request.authenticatorUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAuthenticatorAttribute",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAuthenticatorAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAuthenticatorAttribute(_ request: UpdateAuthenticatorAttributeRequest) async throws -> UpdateAuthenticatorAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAuthenticatorAttributeWithOptions(request as! UpdateAuthenticatorAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyIdTokenWithOptions(_ request: VerifyIdTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyIdTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jwtIdToken)) {
            query["JwtIdToken"] = request.jwtIdToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyIdToken",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyIdTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyIdToken(_ request: VerifyIdTokenRequest) async throws -> VerifyIdTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyIdTokenWithOptions(request as! VerifyIdTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyUserAuthenticationWithOptions(_ request: VerifyUserAuthenticationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyUserAuthenticationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationExternalId)) {
            query["ApplicationExternalId"] = request.applicationExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticationContext)) {
            query["AuthenticationContext"] = request.authenticationContext ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authenticatorType)) {
            query["AuthenticatorType"] = request.authenticatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientExtendParamsJson)) {
            query["ClientExtendParamsJson"] = request.clientExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientExtendParamsJsonSign)) {
            query["ClientExtendParamsJsonSign"] = request.clientExtendParamsJsonSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logParams)) {
            query["LogParams"] = request.logParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logTag)) {
            query["LogTag"] = request.logTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requireBindHashBase64)) {
            query["RequireBindHashBase64"] = request.requireBindHashBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requireChallengeBase64)) {
            query["RequireChallengeBase64"] = request.requireChallengeBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serverExtendParamsJson)) {
            query["ServerExtendParamsJson"] = request.serverExtendParamsJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userSourceIp)) {
            query["UserSourceIp"] = request.userSourceIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyUserAuthentication",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyUserAuthenticationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyUserAuthentication(_ request: VerifyUserAuthenticationRequest) async throws -> VerifyUserAuthenticationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyUserAuthenticationWithOptions(request as! VerifyUserAuthenticationRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
