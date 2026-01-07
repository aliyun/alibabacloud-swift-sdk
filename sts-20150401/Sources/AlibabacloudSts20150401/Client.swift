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
            "ap-northeast-2-pop": "sts.aliyuncs.com",
            "ap-south-1": "sts.aliyuncs.com",
            "ap-southeast-2": "sts.aliyuncs.com",
            "cn-beijing-finance-pop": "sts.aliyuncs.com",
            "cn-beijing-gov-1": "sts.aliyuncs.com",
            "cn-beijing-nu16-b01": "sts.aliyuncs.com",
            "cn-edge-1": "sts.aliyuncs.com",
            "cn-fujian": "sts.aliyuncs.com",
            "cn-haidian-cm12-c01": "sts.aliyuncs.com",
            "cn-hangzhou-bj-b01": "sts.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "sts.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "sts.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "sts.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "sts.aliyuncs.com",
            "cn-hangzhou-test-306": "sts.aliyuncs.com",
            "cn-hongkong-finance-pop": "sts.aliyuncs.com",
            "cn-huhehaote-nebula-1": "sts.aliyuncs.com",
            "cn-shanghai-et15-b01": "sts.aliyuncs.com",
            "cn-shanghai-et2-b01": "sts.aliyuncs.com",
            "cn-shanghai-inner": "sts.aliyuncs.com",
            "cn-shanghai-internal-test-1": "sts.aliyuncs.com",
            "cn-shenzhen-inner": "sts.aliyuncs.com",
            "cn-shenzhen-st4-d01": "sts.aliyuncs.com",
            "cn-shenzhen-su18-b01": "sts.aliyuncs.com",
            "cn-wuhan": "sts.aliyuncs.com",
            "cn-yushanfang": "sts.aliyuncs.com",
            "cn-zhangbei": "sts.aliyuncs.com",
            "cn-zhangbei-na61-b01": "sts.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "sts.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "sts.aliyuncs.com",
            "eu-west-1-oxs": "sts.aliyuncs.com",
            "rus-west-1-pop": "sts.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("sts", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func assumeRoleWithOptions(_ request: AssumeRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssumeRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.durationSeconds)) {
            query["DurationSeconds"] = request.durationSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.externalId)) {
            query["ExternalId"] = request.externalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleArn)) {
            query["RoleArn"] = request.roleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleSessionName)) {
            query["RoleSessionName"] = request.roleSessionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdentity)) {
            query["SourceIdentity"] = request.sourceIdentity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssumeRole",
            "version": "2015-04-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssumeRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assumeRole(_ request: AssumeRoleRequest) async throws -> AssumeRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assumeRoleWithOptions(request as! AssumeRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assumeRoleWithOIDCWithOptions(_ request: AssumeRoleWithOIDCRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssumeRoleWithOIDCResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.durationSeconds)) {
            query["DurationSeconds"] = request.durationSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.OIDCProviderArn)) {
            query["OIDCProviderArn"] = request.OIDCProviderArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OIDCToken)) {
            query["OIDCToken"] = request.OIDCToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleArn)) {
            query["RoleArn"] = request.roleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleSessionName)) {
            query["RoleSessionName"] = request.roleSessionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssumeRoleWithOIDC",
            "version": "2015-04-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssumeRoleWithOIDCResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assumeRoleWithOIDC(_ request: AssumeRoleWithOIDCRequest) async throws -> AssumeRoleWithOIDCResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assumeRoleWithOIDCWithOptions(request as! AssumeRoleWithOIDCRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assumeRoleWithSAMLWithOptions(_ request: AssumeRoleWithSAMLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssumeRoleWithSAMLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.durationSeconds)) {
            query["DurationSeconds"] = request.durationSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            query["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleArn)) {
            query["RoleArn"] = request.roleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SAMLAssertion)) {
            query["SAMLAssertion"] = request.SAMLAssertion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SAMLProviderArn)) {
            query["SAMLProviderArn"] = request.SAMLProviderArn ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssumeRoleWithSAML",
            "version": "2015-04-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssumeRoleWithSAMLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assumeRoleWithSAML(_ request: AssumeRoleWithSAMLRequest) async throws -> AssumeRoleWithSAMLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assumeRoleWithSAMLWithOptions(request as! AssumeRoleWithSAMLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCallerIdentityWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetCallerIdentityResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCallerIdentity",
            "version": "2015-04-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCallerIdentityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCallerIdentity() async throws -> GetCallerIdentityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCallerIdentityWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }
}
