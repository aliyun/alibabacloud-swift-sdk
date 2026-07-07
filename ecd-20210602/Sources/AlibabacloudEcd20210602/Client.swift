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
            "us-west-1": "ecd.us-west-1.aliyuncs.com",
            "us-east-1": "ecd.us-east-1.aliyuncs.com",
            "me-east-1": "ecd.me-east-1.aliyuncs.com",
            "me-central-1": "ecd.me-central-1.aliyuncs.com",
            "eu-west-1": "ecd.eu-west-1.aliyuncs.com",
            "eu-central-1": "ecd.eu-central-1.aliyuncs.com",
            "cn-zhangjiakou": "ecd.cn-zhangjiakou.aliyuncs.com",
            "cn-wulanchabu": "ecd.cn-wulanchabu.aliyuncs.com",
            "cn-shenzhen": "ecd.cn-shenzhen.aliyuncs.com",
            "cn-shanghai-finance-1": "ecd.cn-shanghai-finance-1.aliyuncs.com",
            "cn-shanghai": "ecd.cn-shanghai.aliyuncs.com",
            "cn-qingdao": "ecd.cn-qingdao.aliyuncs.com",
            "cn-nanjing": "ecd.cn-nanjing.aliyuncs.com",
            "cn-hongkong": "ecd.cn-hongkong.aliyuncs.com",
            "cn-hangzhou-finance": "ecd.cn-hangzhou-finance.aliyuncs.com",
            "cn-hangzhou": "ecd.cn-hangzhou.aliyuncs.com",
            "cn-guangzhou": "ecd.cn-guangzhou.aliyuncs.com",
            "cn-chengdu": "ecd.cn-chengdu.aliyuncs.com",
            "cn-beijing": "ecd.cn-beijing.aliyuncs.com",
            "ap-southeast-7": "ecd.ap-southeast-7.aliyuncs.com",
            "ap-southeast-6": "ecd.ap-southeast-6.aliyuncs.com",
            "ap-southeast-5": "ecd.ap-southeast-5.aliyuncs.com",
            "ap-southeast-1": "ecd.ap-southeast-1.aliyuncs.com",
            "ap-northeast-1": "ecd.ap-northeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("ecd", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createTenantSkillWithOptions(_ tmpReq: CreateTenantSkillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTenantSkillResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateTenantSkillShrinkRequest = CreateTenantSkillShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.envVars)) {
            request.envVarsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.envVars, "EnvVars", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiKey)) {
            query["ApiKey"] = request.apiKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            query["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envVarsShrink)) {
            query["EnvVars"] = request.envVarsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iconETag)) {
            query["IconETag"] = request.iconETag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillChannel)) {
            query["SkillChannel"] = request.skillChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillIcon)) {
            query["SkillIcon"] = request.skillIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillVersion)) {
            query["SkillVersion"] = request.skillVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slug)) {
            query["Slug"] = request.slug ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskKey)) {
            query["TaskKey"] = request.taskKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTenantSkill",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTenantSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenantSkill(_ request: CreateTenantSkillRequest) async throws -> CreateTenantSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTenantSkillWithOptions(request as! CreateTenantSkillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTenantSkillsWithOptions(_ request: DeleteTenantSkillsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTenantSkillsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.skillChannel)) {
            query["SkillChannel"] = request.skillChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillIds)) {
            query["SkillIds"] = request.skillIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTenantSkills",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTenantSkillsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTenantSkills(_ request: DeleteTenantSkillsRequest) async throws -> DeleteTenantSkillsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTenantSkillsWithOptions(request as! DeleteTenantSkillsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssStsTokenWithOptions(_ request: GetOssStsTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOssStsTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            query["FileType"] = request.fileType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOssStsToken",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOssStsTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssStsToken(_ request: GetOssStsTokenRequest) async throws -> GetOssStsTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOssStsTokenWithOptions(request as! GetOssStsTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getParseProgressWithOptions(_ request: GetParseProgressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetParseProgressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskKey)) {
            query["TaskKey"] = request.taskKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetParseProgress",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetParseProgressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getParseProgress(_ request: GetParseProgressRequest) async throws -> GetParseProgressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getParseProgressWithOptions(request as! GetParseProgressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSecureSkillIdentitiesWithOptions(_ request: ListSecureSkillIdentitiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSecureSkillIdentitiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.skillChannel)) {
            query["SkillChannel"] = request.skillChannel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSecureSkillIdentities",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSecureSkillIdentitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSecureSkillIdentities(_ request: ListSecureSkillIdentitiesRequest) async throws -> ListSecureSkillIdentitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSecureSkillIdentitiesWithOptions(request as! ListSecureSkillIdentitiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkillAuthedIdentitiesWithOptions(_ request: ListSkillAuthedIdentitiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSkillAuthedIdentitiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.skillChannel)) {
            query["SkillChannel"] = request.skillChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillId)) {
            query["SkillId"] = request.skillId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSkillAuthedIdentities",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSkillAuthedIdentitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkillAuthedIdentities(_ request: ListSkillAuthedIdentitiesRequest) async throws -> ListSkillAuthedIdentitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSkillAuthedIdentitiesWithOptions(request as! ListSkillAuthedIdentitiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkillsWithOptions(_ request: ListSkillsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSkillsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.skillChannel)) {
            query["SkillChannel"] = request.skillChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillIds)) {
            query["SkillIds"] = request.skillIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.supplierType)) {
            query["SupplierType"] = request.supplierType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSkills",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSkillsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkills(_ request: ListSkillsRequest) async throws -> ListSkillsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSkillsWithOptions(request as! ListSkillsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func parseSkillPackageWithOptions(_ request: ParseSkillPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ParseSkillPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ossObjectETag)) {
            query["OssObjectETag"] = request.ossObjectETag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossObjectKey)) {
            query["OssObjectKey"] = request.ossObjectKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ParseSkillPackage",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ParseSkillPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func parseSkillPackage(_ request: ParseSkillPackageRequest) async throws -> ParseSkillPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await parseSkillPackageWithOptions(request as! ParseSkillPackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setIdentitySkillAuthWithOptions(_ request: SetIdentitySkillAuthRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetIdentitySkillAuthResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoInstall)) {
            query["AutoInstall"] = request.autoInstall!;
        }
        if (!TeaUtils.Client.isUnset(request.identities)) {
            query["Identities"] = request.identities ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            query["OperationType"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillChannel)) {
            query["SkillChannel"] = request.skillChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillIds)) {
            query["SkillIds"] = request.skillIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetIdentitySkillAuth",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetIdentitySkillAuthResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setIdentitySkillAuth(_ request: SetIdentitySkillAuthRequest) async throws -> SetIdentitySkillAuthResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setIdentitySkillAuthWithOptions(request as! SetIdentitySkillAuthRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setIdentitySkillSecurityWithOptions(_ request: SetIdentitySkillSecurityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetIdentitySkillSecurityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.identityIds)) {
            query["IdentityIds"] = request.identityIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.skillChannel)) {
            query["SkillChannel"] = request.skillChannel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetIdentitySkillSecurity",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetIdentitySkillSecurityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setIdentitySkillSecurity(_ request: SetIdentitySkillSecurityRequest) async throws -> SetIdentitySkillSecurityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setIdentitySkillSecurityWithOptions(request as! SetIdentitySkillSecurityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setTenantSkillEnabledWithOptions(_ request: SetTenantSkillEnabledRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetTenantSkillEnabledResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.skillChannel)) {
            query["SkillChannel"] = request.skillChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillIds)) {
            query["SkillIds"] = request.skillIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetTenantSkillEnabled",
            "version": "2021-06-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetTenantSkillEnabledResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setTenantSkillEnabled(_ request: SetTenantSkillEnabledRequest) async throws -> SetTenantSkillEnabledResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setTenantSkillEnabledWithOptions(request as! SetTenantSkillEnabledRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
