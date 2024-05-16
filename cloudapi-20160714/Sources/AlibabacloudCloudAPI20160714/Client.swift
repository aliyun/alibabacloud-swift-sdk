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
            "cn-qingdao": "apigateway.cn-qingdao.aliyuncs.com",
            "cn-beijing": "apigateway.cn-beijing.aliyuncs.com",
            "cn-zhangjiakou": "apigateway.cn-zhangjiakou.aliyuncs.com",
            "cn-huhehaote": "apigateway.cn-huhehaote.aliyuncs.com",
            "cn-wulanchabu": "apigateway.cn-wulanchabu.aliyuncs.com",
            "cn-hangzhou": "apigateway.cn-hangzhou.aliyuncs.com",
            "cn-shanghai": "apigateway.cn-shanghai.aliyuncs.com",
            "cn-shenzhen": "apigateway.cn-shenzhen.aliyuncs.com",
            "cn-heyuan": "apigateway.cn-heyuan.aliyuncs.com",
            "cn-guangzhou": "apigateway.cn-guangzhou.aliyuncs.com",
            "cn-chengdu": "apigateway.cn-chengdu.aliyuncs.com",
            "cn-hongkong": "apigateway.cn-hongkong.aliyuncs.com",
            "ap-northeast-1": "apigateway.ap-northeast-1.aliyuncs.com",
            "ap-southeast-1": "apigateway.ap-southeast-1.aliyuncs.com",
            "ap-southeast-2": "apigateway.ap-southeast-2.aliyuncs.com",
            "ap-southeast-3": "apigateway.ap-southeast-3.aliyuncs.com",
            "ap-southeast-5": "apigateway.ap-southeast-5.aliyuncs.com",
            "ap-southeast-6": "apigateway.ap-southeast-6.aliyuncs.com",
            "ap-southeast-7": "apigateway.ap-southeast-7.aliyuncs.com",
            "us-east-1": "apigateway.us-east-1.aliyuncs.com",
            "us-west-1": "apigateway.us-west-1.aliyuncs.com",
            "eu-west-1": "apigateway.eu-west-1.aliyuncs.com",
            "eu-central-1": "apigateway.eu-central-1.aliyuncs.com",
            "ap-south-1": "apigateway.ap-south-1.aliyuncs.com",
            "me-east-1": "apigateway.me-east-1.aliyuncs.com",
            "me-central-1": "apigateway.me-central-1.aliyuncs.com",
            "cn-hangzhou-finance": "apigateway.cn-hangzhou-finance.aliyuncs.com",
            "cn-shanghai-finance-1": "apigateway.cn-shanghai-finance-1.aliyuncs.com",
            "cn-shenzhen-finance-1": "apigateway.cn-shenzhen-finance-1.aliyuncs.com",
            "cn-north-2-gov-1": "apigateway.cn-north-2-gov-1.aliyuncs.com",
            "ap-northeast-2-pop": "apigateway.aliyuncs.com",
            "cn-beijing-finance-1": "apigateway.cn-beijing-finance-1.aliyuncs.com",
            "cn-beijing-finance-pop": "apigateway.aliyuncs.com",
            "cn-beijing-gov-1": "apigateway.aliyuncs.com",
            "cn-beijing-nu16-b01": "apigateway.aliyuncs.com",
            "cn-edge-1": "apigateway.aliyuncs.com",
            "cn-fujian": "apigateway.aliyuncs.com",
            "cn-haidian-cm12-c01": "apigateway.aliyuncs.com",
            "cn-hangzhou-bj-b01": "apigateway.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "apigateway.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "apigateway.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "apigateway.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "apigateway.aliyuncs.com",
            "cn-hangzhou-test-306": "apigateway.aliyuncs.com",
            "cn-hongkong-finance-pop": "apigateway.aliyuncs.com",
            "cn-huhehaote-nebula-1": "apigateway.aliyuncs.com",
            "cn-qingdao-nebula": "apigateway.aliyuncs.com",
            "cn-shanghai-et15-b01": "apigateway.aliyuncs.com",
            "cn-shanghai-et2-b01": "apigateway.aliyuncs.com",
            "cn-shanghai-inner": "apigateway.cn-shanghai-inner.aliyuncs.com",
            "cn-shanghai-internal-test-1": "apigateway.aliyuncs.com",
            "cn-shenzhen-inner": "apigateway.aliyuncs.com",
            "cn-shenzhen-st4-d01": "apigateway.aliyuncs.com",
            "cn-shenzhen-su18-b01": "apigateway.aliyuncs.com",
            "cn-wuhan": "apigateway.aliyuncs.com",
            "cn-yushanfang": "apigateway.aliyuncs.com",
            "cn-zhangbei": "apigateway.aliyuncs.com",
            "cn-zhangbei-na61-b01": "apigateway.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "apigateway.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "apigateway.aliyuncs.com",
            "eu-west-1-oxs": "apigateway.aliyuncs.com",
            "rus-west-1-pop": "apigateway.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("cloudapi", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func abolishApiWithOptions(_ request: AbolishApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AbolishApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AbolishApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AbolishApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func abolishApi(_ request: AbolishApiRequest) async throws -> AbolishApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await abolishApiWithOptions(request as! AbolishApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAccessControlListEntryWithOptions(_ request: AddAccessControlListEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAccessControlListEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclEntrys)) {
            query["AclEntrys"] = request.aclEntrys ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aclId)) {
            query["AclId"] = request.aclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAccessControlListEntry",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAccessControlListEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAccessControlListEntry(_ request: AddAccessControlListEntryRequest) async throws -> AddAccessControlListEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addAccessControlListEntryWithOptions(request as! AddAccessControlListEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addIpControlPolicyItemWithOptions(_ request: AddIpControlPolicyItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddIpControlPolicyItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cidrIp)) {
            query["CidrIp"] = request.cidrIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipControlId)) {
            query["IpControlId"] = request.ipControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddIpControlPolicyItem",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddIpControlPolicyItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addIpControlPolicyItem(_ request: AddIpControlPolicyItemRequest) async throws -> AddIpControlPolicyItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addIpControlPolicyItemWithOptions(request as! AddIpControlPolicyItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTrafficSpecialControlWithOptions(_ request: AddTrafficSpecialControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTrafficSpecialControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specialKey)) {
            query["SpecialKey"] = request.specialKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specialType)) {
            query["SpecialType"] = request.specialType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlId)) {
            query["TrafficControlId"] = request.trafficControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficValue)) {
            query["TrafficValue"] = request.trafficValue!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddTrafficSpecialControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddTrafficSpecialControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTrafficSpecialControl(_ request: AddTrafficSpecialControlRequest) async throws -> AddTrafficSpecialControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addTrafficSpecialControlWithOptions(request as! AddTrafficSpecialControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachApiProductWithOptions(_ request: AttachApiProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachApiProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiProductId)) {
            query["ApiProductId"] = request.apiProductId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apis)) {
            query["Apis"] = request.apis ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachApiProduct",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachApiProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachApiProduct(_ request: AttachApiProductRequest) async throws -> AttachApiProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachApiProductWithOptions(request as! AttachApiProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachPluginWithOptions(_ request: AttachPluginRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachPluginResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["PluginId"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachPlugin",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachPluginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachPlugin(_ request: AttachPluginRequest) async throws -> AttachPluginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachPluginWithOptions(request as! AttachPluginRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAbolishApisWithOptions(_ request: BatchAbolishApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchAbolishApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.api)) {
            query["Api"] = request.api ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchAbolishApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchAbolishApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAbolishApis(_ request: BatchAbolishApisRequest) async throws -> BatchAbolishApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchAbolishApisWithOptions(request as! BatchAbolishApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeployApisWithOptions(_ request: BatchDeployApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchDeployApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.api)) {
            query["Api"] = request.api ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchDeployApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchDeployApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeployApis(_ request: BatchDeployApisRequest) async throws -> BatchDeployApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchDeployApisWithOptions(request as! BatchDeployApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAccessControlListWithOptions(_ request: CreateAccessControlListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAccessControlListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclName)) {
            query["AclName"] = request.aclName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.addressIPVersion)) {
            query["AddressIPVersion"] = request.addressIPVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAccessControlList",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAccessControlListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAccessControlList(_ request: CreateAccessControlListRequest) async throws -> CreateAccessControlListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAccessControlListWithOptions(request as! CreateAccessControlListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiWithOptions(_ request: CreateApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowSignatureMethod)) {
            query["AllowSignatureMethod"] = request.allowSignatureMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCodeAuthType)) {
            query["AppCodeAuthType"] = request.appCodeAuthType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendEnable)) {
            query["BackendEnable"] = request.backendEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.backendId)) {
            query["BackendId"] = request.backendId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableInternet)) {
            query["DisableInternet"] = request.disableInternet!;
        }
        if (!TeaUtils.Client.isUnset(request.forceNonceCheck)) {
            query["ForceNonceCheck"] = request.forceNonceCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openIdConnectConfig)) {
            query["OpenIdConnectConfig"] = request.openIdConnectConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestConfig)) {
            query["RequestConfig"] = request.requestConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultBodyModel)) {
            query["ResultBodyModel"] = request.resultBodyModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultType)) {
            query["ResultType"] = request.resultType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceConfig)) {
            query["ServiceConfig"] = request.serviceConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.visibility)) {
            query["Visibility"] = request.visibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webSocketApiType)) {
            query["WebSocketApiType"] = request.webSocketApiType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.constantParameters)) {
            body["ConstantParameters"] = request.constantParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorCodeSamples)) {
            body["ErrorCodeSamples"] = request.errorCodeSamples ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failResultSample)) {
            body["FailResultSample"] = request.failResultSample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestParameters)) {
            body["RequestParameters"] = request.requestParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultDescriptions)) {
            body["ResultDescriptions"] = request.resultDescriptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultSample)) {
            body["ResultSample"] = request.resultSample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParameters)) {
            body["ServiceParameters"] = request.serviceParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParametersMap)) {
            body["ServiceParametersMap"] = request.serviceParametersMap ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemParameters)) {
            body["SystemParameters"] = request.systemParameters ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApi(_ request: CreateApiRequest) async throws -> CreateApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApiWithOptions(request as! CreateApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiGroupWithOptions(_ request: CreateApiGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApiGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.basePath)) {
            query["BasePath"] = request.basePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApiGroup",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApiGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiGroup(_ request: CreateApiGroupRequest) async throws -> CreateApiGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApiGroupWithOptions(request as! CreateApiGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiStageVariableWithOptions(_ request: CreateApiStageVariableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApiStageVariableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageId)) {
            query["StageId"] = request.stageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageRouteModel)) {
            query["StageRouteModel"] = request.stageRouteModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportRoute)) {
            query["SupportRoute"] = request.supportRoute!;
        }
        if (!TeaUtils.Client.isUnset(request.variableName)) {
            query["VariableName"] = request.variableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variableValue)) {
            query["VariableValue"] = request.variableValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApiStageVariable",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApiStageVariableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiStageVariable(_ request: CreateApiStageVariableRequest) async throws -> CreateApiStageVariableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApiStageVariableWithOptions(request as! CreateApiStageVariableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppWithOptions(_ request: CreateAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appSecret)) {
            query["AppSecret"] = request.appSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extend)) {
            query["Extend"] = request.extend ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApp",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApp(_ request: CreateAppRequest) async throws -> CreateAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAppWithOptions(request as! CreateAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppCodeWithOptions(_ request: CreateAppCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAppCode",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAppCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppCode(_ request: CreateAppCodeRequest) async throws -> CreateAppCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAppCodeWithOptions(request as! CreateAppCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppKeyWithOptions(_ request: CreateAppKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appSecret)) {
            query["AppSecret"] = request.appSecret ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAppKey",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAppKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppKey(_ request: CreateAppKeyRequest) async throws -> CreateAppKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAppKeyWithOptions(request as! CreateAppKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackendWithOptions(_ request: CreateBackendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBackendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendName)) {
            query["BackendName"] = request.backendName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendType)) {
            query["BackendType"] = request.backendType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createEventBridgeServiceLinkedRole)) {
            query["CreateEventBridgeServiceLinkedRole"] = request.createEventBridgeServiceLinkedRole!;
        }
        if (!TeaUtils.Client.isUnset(request.createSlr)) {
            query["CreateSlr"] = request.createSlr!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBackend",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBackendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackend(_ request: CreateBackendRequest) async throws -> CreateBackendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBackendWithOptions(request as! CreateBackendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackendModelWithOptions(_ request: CreateBackendModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBackendModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendId)) {
            query["BackendId"] = request.backendId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendModelData)) {
            query["BackendModelData"] = request.backendModelData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendType)) {
            query["BackendType"] = request.backendType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBackendModel",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBackendModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackendModel(_ request: CreateBackendModelRequest) async throws -> CreateBackendModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBackendModelWithOptions(request as! CreateBackendModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetWithOptions(_ request: CreateDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetType)) {
            query["DatasetType"] = request.datasetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataset",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataset(_ request: CreateDatasetRequest) async throws -> CreateDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDatasetWithOptions(request as! CreateDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetItemWithOptions(_ request: CreateDatasetItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredTime)) {
            query["ExpiredTime"] = request.expiredTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            query["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatasetItem",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetItem(_ request: CreateDatasetItemRequest) async throws -> CreateDatasetItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDatasetItemWithOptions(request as! CreateDatasetItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceWithOptions(_ request: CreateInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.httpsPolicy)) {
            query["HttpsPolicy"] = request.httpsPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceCidr)) {
            query["InstanceCidr"] = request.instanceCidr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceSpec)) {
            query["InstanceSpec"] = request.instanceSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userVpcId)) {
            query["UserVpcId"] = request.userVpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneVSwitchSecurityGroup)) {
            query["ZoneVSwitchSecurityGroup"] = request.zoneVSwitchSecurityGroup ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstance",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstance(_ request: CreateInstanceRequest) async throws -> CreateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createInstanceWithOptions(request as! CreateInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIntranetDomainWithOptions(_ request: CreateIntranetDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIntranetDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIntranetDomain",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIntranetDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIntranetDomain(_ request: CreateIntranetDomainRequest) async throws -> CreateIntranetDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIntranetDomainWithOptions(request as! CreateIntranetDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIpControlWithOptions(_ request: CreateIpControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIpControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipControlName)) {
            query["IpControlName"] = request.ipControlName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipControlPolicys)) {
            query["IpControlPolicys"] = request.ipControlPolicys ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ipControlType)) {
            query["IpControlType"] = request.ipControlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIpControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIpControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIpControl(_ request: CreateIpControlRequest) async throws -> CreateIpControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIpControlWithOptions(request as! CreateIpControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogConfigWithOptions(_ request: CreateLogConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLogConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logType)) {
            query["LogType"] = request.logType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsLogStore)) {
            query["SlsLogStore"] = request.slsLogStore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsProject)) {
            query["SlsProject"] = request.slsProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLogConfig",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLogConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogConfig(_ request: CreateLogConfigRequest) async throws -> CreateLogConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLogConfigWithOptions(request as! CreateLogConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelWithOptions(_ request: CreateModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelName)) {
            query["ModelName"] = request.modelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            query["Schema"] = request.schema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModel",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModel(_ request: CreateModelRequest) async throws -> CreateModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createModelWithOptions(request as! CreateModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMonitorGroupWithOptions(_ request: CreateMonitorGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMonitorGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auth)) {
            query["Auth"] = request.auth ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rawMonitorGroupId)) {
            query["RawMonitorGroupId"] = request.rawMonitorGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMonitorGroup",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMonitorGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMonitorGroup(_ request: CreateMonitorGroupRequest) async throws -> CreateMonitorGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMonitorGroupWithOptions(request as! CreateMonitorGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPluginWithOptions(_ request: CreatePluginRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePluginResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginData)) {
            query["PluginData"] = request.pluginData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginName)) {
            query["PluginName"] = request.pluginName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginType)) {
            query["PluginType"] = request.pluginType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePlugin",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePluginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPlugin(_ request: CreatePluginRequest) async throws -> CreatePluginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPluginWithOptions(request as! CreatePluginRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSignatureWithOptions(_ request: CreateSignatureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSignatureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureKey)) {
            query["SignatureKey"] = request.signatureKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureName)) {
            query["SignatureName"] = request.signatureName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureSecret)) {
            query["SignatureSecret"] = request.signatureSecret ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSignature",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSignatureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSignature(_ request: CreateSignatureRequest) async throws -> CreateSignatureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSignatureWithOptions(request as! CreateSignatureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrafficControlWithOptions(_ request: CreateTrafficControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTrafficControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiDefault)) {
            query["ApiDefault"] = request.apiDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.appDefault)) {
            query["AppDefault"] = request.appDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlName)) {
            query["TrafficControlName"] = request.trafficControlName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlUnit)) {
            query["TrafficControlUnit"] = request.trafficControlUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userDefault)) {
            query["UserDefault"] = request.userDefault!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrafficControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTrafficControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrafficControl(_ request: CreateTrafficControlRequest) async throws -> CreateTrafficControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTrafficControlWithOptions(request as! CreateTrafficControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAccessControlListWithOptions(_ request: DeleteAccessControlListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAccessControlListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclId)) {
            query["AclId"] = request.aclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAccessControlList",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAccessControlListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAccessControlList(_ request: DeleteAccessControlListRequest) async throws -> DeleteAccessControlListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAccessControlListWithOptions(request as! DeleteAccessControlListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAllTrafficSpecialControlWithOptions(_ request: DeleteAllTrafficSpecialControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAllTrafficSpecialControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlId)) {
            query["TrafficControlId"] = request.trafficControlId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAllTrafficSpecialControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAllTrafficSpecialControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAllTrafficSpecialControl(_ request: DeleteAllTrafficSpecialControlRequest) async throws -> DeleteAllTrafficSpecialControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAllTrafficSpecialControlWithOptions(request as! DeleteAllTrafficSpecialControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiWithOptions(_ request: DeleteApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApi(_ request: DeleteApiRequest) async throws -> DeleteApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApiWithOptions(request as! DeleteApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiGroupWithOptions(_ request: DeleteApiGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApiGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApiGroup",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApiGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiGroup(_ request: DeleteApiGroupRequest) async throws -> DeleteApiGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApiGroupWithOptions(request as! DeleteApiGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiProductWithOptions(_ request: DeleteApiProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApiProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiProductId)) {
            query["ApiProductId"] = request.apiProductId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApiProduct",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApiProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiProduct(_ request: DeleteApiProductRequest) async throws -> DeleteApiProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApiProductWithOptions(request as! DeleteApiProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiStageVariableWithOptions(_ request: DeleteApiStageVariableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApiStageVariableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageId)) {
            query["StageId"] = request.stageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variableName)) {
            query["VariableName"] = request.variableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApiStageVariable",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApiStageVariableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiStageVariable(_ request: DeleteApiStageVariableRequest) async throws -> DeleteApiStageVariableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApiStageVariableWithOptions(request as! DeleteApiStageVariableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppWithOptions(_ request: DeleteAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApp",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApp(_ request: DeleteAppRequest) async throws -> DeleteAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAppWithOptions(request as! DeleteAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppCodeWithOptions(_ request: DeleteAppCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAppCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAppCode",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAppCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppCode(_ request: DeleteAppCodeRequest) async throws -> DeleteAppCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAppCodeWithOptions(request as! DeleteAppCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppKeyWithOptions(_ request: DeleteAppKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAppKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAppKey",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAppKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppKey(_ request: DeleteAppKeyRequest) async throws -> DeleteAppKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAppKeyWithOptions(request as! DeleteAppKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackendWithOptions(_ request: DeleteBackendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBackendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendId)) {
            query["BackendId"] = request.backendId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBackend",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBackendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackend(_ request: DeleteBackendRequest) async throws -> DeleteBackendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBackendWithOptions(request as! DeleteBackendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackendModelWithOptions(_ request: DeleteBackendModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBackendModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendId)) {
            query["BackendId"] = request.backendId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendModelId)) {
            query["BackendModelId"] = request.backendModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBackendModel",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBackendModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackendModel(_ request: DeleteBackendModelRequest) async throws -> DeleteBackendModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBackendModelWithOptions(request as! DeleteBackendModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetWithOptions(_ request: DeleteDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataset",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataset(_ request: DeleteDatasetRequest) async throws -> DeleteDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDatasetWithOptions(request as! DeleteDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetItemWithOptions(_ request: DeleteDatasetItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetItemId)) {
            query["DatasetItemId"] = request.datasetItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDatasetItem",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetItem(_ request: DeleteDatasetItemRequest) async throws -> DeleteDatasetItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDatasetItemWithOptions(request as! DeleteDatasetItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomainWithOptions(_ request: DeleteDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDomain",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomain(_ request: DeleteDomainRequest) async throws -> DeleteDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDomainWithOptions(request as! DeleteDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomainCertificateWithOptions(_ request: DeleteDomainCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDomainCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certificateId)) {
            query["CertificateId"] = request.certificateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDomainCertificate",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDomainCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomainCertificate(_ request: DeleteDomainCertificateRequest) async throws -> DeleteDomainCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDomainCertificateWithOptions(request as! DeleteDomainCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceWithOptions(_ request: DeleteInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstance",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstance(_ request: DeleteInstanceRequest) async throws -> DeleteInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteInstanceWithOptions(request as! DeleteInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIpControlWithOptions(_ request: DeleteIpControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIpControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipControlId)) {
            query["IpControlId"] = request.ipControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIpControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIpControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIpControl(_ request: DeleteIpControlRequest) async throws -> DeleteIpControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteIpControlWithOptions(request as! DeleteIpControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogConfigWithOptions(_ request: DeleteLogConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLogConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logType)) {
            query["LogType"] = request.logType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLogConfig",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLogConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogConfig(_ request: DeleteLogConfigRequest) async throws -> DeleteLogConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLogConfigWithOptions(request as! DeleteLogConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelWithOptions(_ request: DeleteModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelName)) {
            query["ModelName"] = request.modelName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModel",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModel(_ request: DeleteModelRequest) async throws -> DeleteModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteModelWithOptions(request as! DeleteModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMonitorGroupWithOptions(_ request: DeleteMonitorGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMonitorGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rawMonitorGroupId)) {
            query["RawMonitorGroupId"] = request.rawMonitorGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMonitorGroup",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMonitorGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMonitorGroup(_ request: DeleteMonitorGroupRequest) async throws -> DeleteMonitorGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMonitorGroupWithOptions(request as! DeleteMonitorGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePluginWithOptions(_ request: DeletePluginRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePluginResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["PluginId"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePlugin",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePluginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePlugin(_ request: DeletePluginRequest) async throws -> DeletePluginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePluginWithOptions(request as! DeletePluginRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSignatureWithOptions(_ request: DeleteSignatureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSignatureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureId)) {
            query["SignatureId"] = request.signatureId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSignature",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSignatureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSignature(_ request: DeleteSignatureRequest) async throws -> DeleteSignatureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSignatureWithOptions(request as! DeleteSignatureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrafficControlWithOptions(_ request: DeleteTrafficControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTrafficControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlId)) {
            query["TrafficControlId"] = request.trafficControlId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrafficControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTrafficControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrafficControl(_ request: DeleteTrafficControlRequest) async throws -> DeleteTrafficControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTrafficControlWithOptions(request as! DeleteTrafficControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrafficSpecialControlWithOptions(_ request: DeleteTrafficSpecialControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTrafficSpecialControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specialKey)) {
            query["SpecialKey"] = request.specialKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specialType)) {
            query["SpecialType"] = request.specialType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlId)) {
            query["TrafficControlId"] = request.trafficControlId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrafficSpecialControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTrafficSpecialControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrafficSpecialControl(_ request: DeleteTrafficSpecialControlRequest) async throws -> DeleteTrafficSpecialControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTrafficSpecialControlWithOptions(request as! DeleteTrafficSpecialControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployApiWithOptions(_ request: DeployApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeployApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployApi(_ request: DeployApiRequest) async throws -> DeployApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deployApiWithOptions(request as! DeployApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAbolishApiTaskWithOptions(_ request: DescribeAbolishApiTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAbolishApiTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationUid)) {
            query["OperationUid"] = request.operationUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAbolishApiTask",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAbolishApiTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAbolishApiTask(_ request: DescribeAbolishApiTaskRequest) async throws -> DescribeAbolishApiTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAbolishApiTaskWithOptions(request as! DescribeAbolishApiTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccessControlListAttributeWithOptions(_ request: DescribeAccessControlListAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccessControlListAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclId)) {
            query["AclId"] = request.aclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccessControlListAttribute",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccessControlListAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccessControlListAttribute(_ request: DescribeAccessControlListAttributeRequest) async throws -> DescribeAccessControlListAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccessControlListAttributeWithOptions(request as! DescribeAccessControlListAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccessControlListsWithOptions(_ request: DescribeAccessControlListsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccessControlListsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclName)) {
            query["AclName"] = request.aclName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.addressIPVersion)) {
            query["AddressIPVersion"] = request.addressIPVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccessControlLists",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccessControlListsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccessControlLists(_ request: DescribeAccessControlListsRequest) async throws -> DescribeAccessControlListsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccessControlListsWithOptions(request as! DescribeAccessControlListsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiWithOptions(_ request: DescribeApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApi(_ request: DescribeApiRequest) async throws -> DescribeApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiWithOptions(request as! DescribeApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiDocWithOptions(_ request: DescribeApiDocRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiDocResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiDoc",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiDocResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiDoc(_ request: DescribeApiDocRequest) async throws -> DescribeApiDocResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiDocWithOptions(request as! DescribeApiDocRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiGroupWithOptions(_ request: DescribeApiGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiGroup",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiGroup(_ request: DescribeApiGroupRequest) async throws -> DescribeApiGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiGroupWithOptions(request as! DescribeApiGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiGroupVpcWhitelistWithOptions(_ request: DescribeApiGroupVpcWhitelistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiGroupVpcWhitelistResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiGroupVpcWhitelist",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiGroupVpcWhitelistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiGroupVpcWhitelist(_ request: DescribeApiGroupVpcWhitelistRequest) async throws -> DescribeApiGroupVpcWhitelistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiGroupVpcWhitelistWithOptions(request as! DescribeApiGroupVpcWhitelistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiGroupsWithOptions(_ request: DescribeApiGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableTagAuth)) {
            query["EnableTagAuth"] = request.enableTagAuth!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiGroups",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiGroups(_ request: DescribeApiGroupsRequest) async throws -> DescribeApiGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiGroupsWithOptions(request as! DescribeApiGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiHistoriesWithOptions(_ request: DescribeApiHistoriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiHistoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiHistories",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiHistoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiHistories(_ request: DescribeApiHistoriesRequest) async throws -> DescribeApiHistoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiHistoriesWithOptions(request as! DescribeApiHistoriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiHistoryWithOptions(_ request: DescribeApiHistoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyVersion)) {
            query["HistoryVersion"] = request.historyVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiHistory",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiHistory(_ request: DescribeApiHistoryRequest) async throws -> DescribeApiHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiHistoryWithOptions(request as! DescribeApiHistoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiIpControlsWithOptions(_ request: DescribeApiIpControlsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiIpControlsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiIpControls",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiIpControlsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiIpControls(_ request: DescribeApiIpControlsRequest) async throws -> DescribeApiIpControlsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiIpControlsWithOptions(request as! DescribeApiIpControlsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiLatencyDataWithOptions(_ request: DescribeApiLatencyDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiLatencyDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiLatencyData",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiLatencyDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiLatencyData(_ request: DescribeApiLatencyDataRequest) async throws -> DescribeApiLatencyDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiLatencyDataWithOptions(request as! DescribeApiLatencyDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiMarketAttributesWithOptions(_ request: DescribeApiMarketAttributesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiMarketAttributesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiMarketAttributes",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiMarketAttributesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiMarketAttributes(_ request: DescribeApiMarketAttributesRequest) async throws -> DescribeApiMarketAttributesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiMarketAttributesWithOptions(request as! DescribeApiMarketAttributesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiProductApisWithOptions(_ request: DescribeApiProductApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiProductApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiProductId)) {
            query["ApiProductId"] = request.apiProductId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiProductApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiProductApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiProductApis(_ request: DescribeApiProductApisRequest) async throws -> DescribeApiProductApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiProductApisWithOptions(request as! DescribeApiProductApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiProductsByAppWithOptions(_ request: DescribeApiProductsByAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiProductsByAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiProductsByApp",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiProductsByAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiProductsByApp(_ request: DescribeApiProductsByAppRequest) async throws -> DescribeApiProductsByAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiProductsByAppWithOptions(request as! DescribeApiProductsByAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiQpsDataWithOptions(_ request: DescribeApiQpsDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiQpsDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiQpsData",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiQpsDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiQpsData(_ request: DescribeApiQpsDataRequest) async throws -> DescribeApiQpsDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiQpsDataWithOptions(request as! DescribeApiQpsDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiSignaturesWithOptions(_ request: DescribeApiSignaturesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiSignaturesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiSignatures",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiSignaturesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiSignatures(_ request: DescribeApiSignaturesRequest) async throws -> DescribeApiSignaturesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiSignaturesWithOptions(request as! DescribeApiSignaturesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiTrafficControlsWithOptions(_ request: DescribeApiTrafficControlsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiTrafficControlsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiTrafficControls",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiTrafficControlsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiTrafficControls(_ request: DescribeApiTrafficControlsRequest) async throws -> DescribeApiTrafficControlsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiTrafficControlsWithOptions(request as! DescribeApiTrafficControlsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiTrafficDataWithOptions(_ request: DescribeApiTrafficDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiTrafficDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiTrafficData",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiTrafficDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiTrafficData(_ request: DescribeApiTrafficDataRequest) async throws -> DescribeApiTrafficDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiTrafficDataWithOptions(request as! DescribeApiTrafficDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisWithOptions(_ request: DescribeApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiMethod)) {
            query["ApiMethod"] = request.apiMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiPath)) {
            query["ApiPath"] = request.apiPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableTagAuth)) {
            query["EnableTagAuth"] = request.enableTagAuth!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.unDeployed)) {
            query["UnDeployed"] = request.unDeployed!;
        }
        if (!TeaUtils.Client.isUnset(request.visibility)) {
            query["Visibility"] = request.visibility ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApis(_ request: DescribeApisRequest) async throws -> DescribeApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisWithOptions(request as! DescribeApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisByAppWithOptions(_ request: DescribeApisByAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisByAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiUid)) {
            query["ApiUid"] = request.apiUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.method)) {
            query["Method"] = request.method ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["Path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisByApp",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisByAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisByApp(_ request: DescribeApisByAppRequest) async throws -> DescribeApisByAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisByAppWithOptions(request as! DescribeApisByAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisByBackendWithOptions(_ request: DescribeApisByBackendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisByBackendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendId)) {
            query["BackendId"] = request.backendId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisByBackend",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisByBackendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisByBackend(_ request: DescribeApisByBackendRequest) async throws -> DescribeApisByBackendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisByBackendWithOptions(request as! DescribeApisByBackendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisByIpControlWithOptions(_ request: DescribeApisByIpControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisByIpControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipControlId)) {
            query["IpControlId"] = request.ipControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisByIpControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisByIpControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisByIpControl(_ request: DescribeApisByIpControlRequest) async throws -> DescribeApisByIpControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisByIpControlWithOptions(request as! DescribeApisByIpControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisBySignatureWithOptions(_ request: DescribeApisBySignatureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisBySignatureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureId)) {
            query["SignatureId"] = request.signatureId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisBySignature",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisBySignatureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisBySignature(_ request: DescribeApisBySignatureRequest) async throws -> DescribeApisBySignatureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisBySignatureWithOptions(request as! DescribeApisBySignatureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisByTrafficControlWithOptions(_ request: DescribeApisByTrafficControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisByTrafficControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlId)) {
            query["TrafficControlId"] = request.trafficControlId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisByTrafficControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisByTrafficControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisByTrafficControl(_ request: DescribeApisByTrafficControlRequest) async throws -> DescribeApisByTrafficControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisByTrafficControlWithOptions(request as! DescribeApisByTrafficControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisByVpcAccessWithOptions(_ request: DescribeApisByVpcAccessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisByVpcAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcName)) {
            query["VpcName"] = request.vpcName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisByVpcAccess",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisByVpcAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisByVpcAccess(_ request: DescribeApisByVpcAccessRequest) async throws -> DescribeApisByVpcAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisByVpcAccessWithOptions(request as! DescribeApisByVpcAccessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisWithStageNameIntegratedByAppWithOptions(_ request: DescribeApisWithStageNameIntegratedByAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisWithStageNameIntegratedByAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiUid)) {
            query["ApiUid"] = request.apiUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.method)) {
            query["Method"] = request.method ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["Path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisWithStageNameIntegratedByApp",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisWithStageNameIntegratedByAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisWithStageNameIntegratedByApp(_ request: DescribeApisWithStageNameIntegratedByAppRequest) async throws -> DescribeApisWithStageNameIntegratedByAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisWithStageNameIntegratedByAppWithOptions(request as! DescribeApisWithStageNameIntegratedByAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppWithOptions(_ request: DescribeAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApp",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApp(_ request: DescribeAppRequest) async throws -> DescribeAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAppWithOptions(request as! DescribeAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppAttributesWithOptions(_ request: DescribeAppAttributesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppAttributesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableTagAuth)) {
            query["EnableTagAuth"] = request.enableTagAuth!;
        }
        if (!TeaUtils.Client.isUnset(request.extend)) {
            query["Extend"] = request.extend ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAppAttributes",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppAttributesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppAttributes(_ request: DescribeAppAttributesRequest) async throws -> DescribeAppAttributesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAppAttributesWithOptions(request as! DescribeAppAttributesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppSecurityWithOptions(_ request: DescribeAppSecurityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppSecurityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAppSecurity",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppSecurityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppSecurity(_ request: DescribeAppSecurityRequest) async throws -> DescribeAppSecurityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAppSecurityWithOptions(request as! DescribeAppSecurityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppsWithOptions(_ request: DescribeAppsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.appOwner)) {
            query["AppOwner"] = request.appOwner!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApps",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApps(_ request: DescribeAppsRequest) async throws -> DescribeAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAppsWithOptions(request as! DescribeAppsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppsByApiProductWithOptions(_ request: DescribeAppsByApiProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppsByApiProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiProductId)) {
            query["ApiProductId"] = request.apiProductId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAppsByApiProduct",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppsByApiProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppsByApiProduct(_ request: DescribeAppsByApiProductRequest) async throws -> DescribeAppsByApiProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAppsByApiProductWithOptions(request as! DescribeAppsByApiProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAuthorizedApisWithOptions(_ request: DescribeAuthorizedApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAuthorizedApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAuthorizedApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAuthorizedApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAuthorizedApis(_ request: DescribeAuthorizedApisRequest) async throws -> DescribeAuthorizedApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAuthorizedApisWithOptions(request as! DescribeAuthorizedApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAuthorizedAppsWithOptions(_ request: DescribeAuthorizedAppsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAuthorizedAppsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appOwnerId)) {
            query["AppOwnerId"] = request.appOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAuthorizedApps",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAuthorizedAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAuthorizedApps(_ request: DescribeAuthorizedAppsRequest) async throws -> DescribeAuthorizedAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAuthorizedAppsWithOptions(request as! DescribeAuthorizedAppsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackendInfoWithOptions(_ request: DescribeBackendInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackendInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendId)) {
            query["BackendId"] = request.backendId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackendInfo",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackendInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackendInfo(_ request: DescribeBackendInfoRequest) async throws -> DescribeBackendInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackendInfoWithOptions(request as! DescribeBackendInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackendListWithOptions(_ request: DescribeBackendListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackendListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendName)) {
            query["BackendName"] = request.backendName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendType)) {
            query["BackendType"] = request.backendType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackendList",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackendListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackendList(_ request: DescribeBackendListRequest) async throws -> DescribeBackendListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackendListWithOptions(request as! DescribeBackendListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDatasetInfoWithOptions(_ request: DescribeDatasetInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDatasetInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDatasetInfo",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDatasetInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDatasetInfo(_ request: DescribeDatasetInfoRequest) async throws -> DescribeDatasetInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDatasetInfoWithOptions(request as! DescribeDatasetInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDatasetItemInfoWithOptions(_ request: DescribeDatasetItemInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDatasetItemInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetItemId)) {
            query["DatasetItemId"] = request.datasetItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            query["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDatasetItemInfo",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDatasetItemInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDatasetItemInfo(_ request: DescribeDatasetItemInfoRequest) async throws -> DescribeDatasetItemInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDatasetItemInfoWithOptions(request as! DescribeDatasetItemInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDatasetItemListWithOptions(_ request: DescribeDatasetItemListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDatasetItemListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetItemIds)) {
            query["DatasetItemIds"] = request.datasetItemIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDatasetItemList",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDatasetItemListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDatasetItemList(_ request: DescribeDatasetItemListRequest) async throws -> DescribeDatasetItemListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDatasetItemListWithOptions(request as! DescribeDatasetItemListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDatasetListWithOptions(_ request: DescribeDatasetListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDatasetListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetIds)) {
            query["DatasetIds"] = request.datasetIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDatasetList",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDatasetListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDatasetList(_ request: DescribeDatasetListRequest) async throws -> DescribeDatasetListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDatasetListWithOptions(request as! DescribeDatasetListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeployApiTaskWithOptions(_ request: DescribeDeployApiTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDeployApiTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationUid)) {
            query["OperationUid"] = request.operationUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDeployApiTask",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDeployApiTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeployApiTask(_ request: DescribeDeployApiTaskRequest) async throws -> DescribeDeployApiTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDeployApiTaskWithOptions(request as! DescribeDeployApiTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeployedApiWithOptions(_ request: DescribeDeployedApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDeployedApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDeployedApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDeployedApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeployedApi(_ request: DescribeDeployedApiRequest) async throws -> DescribeDeployedApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDeployedApiWithOptions(request as! DescribeDeployedApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeployedApisWithOptions(_ request: DescribeDeployedApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDeployedApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiMethod)) {
            query["ApiMethod"] = request.apiMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiPath)) {
            query["ApiPath"] = request.apiPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableTagAuth)) {
            query["EnableTagAuth"] = request.enableTagAuth!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDeployedApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDeployedApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeployedApis(_ request: DescribeDeployedApisRequest) async throws -> DescribeDeployedApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDeployedApisWithOptions(request as! DescribeDeployedApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDomainWithOptions(_ request: DescribeDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDomain",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDomain(_ request: DescribeDomainRequest) async throws -> DescribeDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDomainWithOptions(request as! DescribeDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGroupLatencyWithOptions(_ request: DescribeGroupLatencyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGroupLatencyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGroupLatency",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGroupLatencyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGroupLatency(_ request: DescribeGroupLatencyRequest) async throws -> DescribeGroupLatencyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGroupLatencyWithOptions(request as! DescribeGroupLatencyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGroupQpsWithOptions(_ request: DescribeGroupQpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGroupQpsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGroupQps",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGroupQpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGroupQps(_ request: DescribeGroupQpsRequest) async throws -> DescribeGroupQpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGroupQpsWithOptions(request as! DescribeGroupQpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGroupTrafficWithOptions(_ request: DescribeGroupTrafficRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGroupTrafficResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGroupTraffic",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGroupTrafficResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGroupTraffic(_ request: DescribeGroupTrafficRequest) async throws -> DescribeGroupTrafficResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGroupTrafficWithOptions(request as! DescribeGroupTrafficRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHistoryApisWithOptions(_ request: DescribeHistoryApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHistoryApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHistoryApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHistoryApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHistoryApis(_ request: DescribeHistoryApisRequest) async throws -> DescribeHistoryApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHistoryApisWithOptions(request as! DescribeHistoryApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImportOASTaskWithOptions(_ request: DescribeImportOASTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeImportOASTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationId)) {
            query["OperationId"] = request.operationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeImportOASTask",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeImportOASTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImportOASTask(_ request: DescribeImportOASTaskRequest) async throws -> DescribeImportOASTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeImportOASTaskWithOptions(request as! DescribeImportOASTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceDropConnectionsWithOptions(_ request: DescribeInstanceDropConnectionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceDropConnectionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sbcName)) {
            query["SbcName"] = request.sbcName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceDropConnections",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceDropConnectionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceDropConnections(_ request: DescribeInstanceDropConnectionsRequest) async throws -> DescribeInstanceDropConnectionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceDropConnectionsWithOptions(request as! DescribeInstanceDropConnectionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceDropPacketWithOptions(_ request: DescribeInstanceDropPacketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceDropPacketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sbcName)) {
            query["SbcName"] = request.sbcName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceDropPacket",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceDropPacketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceDropPacket(_ request: DescribeInstanceDropPacketRequest) async throws -> DescribeInstanceDropPacketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceDropPacketWithOptions(request as! DescribeInstanceDropPacketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceHttpCodeWithOptions(_ request: DescribeInstanceHttpCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceHttpCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceHttpCode",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceHttpCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceHttpCode(_ request: DescribeInstanceHttpCodeRequest) async throws -> DescribeInstanceHttpCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceHttpCodeWithOptions(request as! DescribeInstanceHttpCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceLatencyWithOptions(_ request: DescribeInstanceLatencyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceLatencyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceLatency",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceLatencyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceLatency(_ request: DescribeInstanceLatencyRequest) async throws -> DescribeInstanceLatencyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceLatencyWithOptions(request as! DescribeInstanceLatencyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceNewConnectionsWithOptions(_ request: DescribeInstanceNewConnectionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceNewConnectionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sbcName)) {
            query["SbcName"] = request.sbcName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceNewConnections",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceNewConnectionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceNewConnections(_ request: DescribeInstanceNewConnectionsRequest) async throws -> DescribeInstanceNewConnectionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceNewConnectionsWithOptions(request as! DescribeInstanceNewConnectionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstancePacketsWithOptions(_ request: DescribeInstancePacketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstancePacketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sbcName)) {
            query["SbcName"] = request.sbcName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstancePackets",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstancePacketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstancePackets(_ request: DescribeInstancePacketsRequest) async throws -> DescribeInstancePacketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstancePacketsWithOptions(request as! DescribeInstancePacketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceQpsWithOptions(_ request: DescribeInstanceQpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceQpsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceQps",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceQpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceQps(_ request: DescribeInstanceQpsRequest) async throws -> DescribeInstanceQpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceQpsWithOptions(request as! DescribeInstanceQpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSlbConnectWithOptions(_ request: DescribeInstanceSlbConnectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceSlbConnectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sbcName)) {
            query["SbcName"] = request.sbcName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceSlbConnect",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceSlbConnectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSlbConnect(_ request: DescribeInstanceSlbConnectRequest) async throws -> DescribeInstanceSlbConnectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceSlbConnectWithOptions(request as! DescribeInstanceSlbConnectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceTrafficWithOptions(_ request: DescribeInstanceTrafficRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceTrafficResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceTraffic",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceTrafficResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceTraffic(_ request: DescribeInstanceTrafficRequest) async throws -> DescribeInstanceTrafficResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceTrafficWithOptions(request as! DescribeInstanceTrafficRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstancesWithOptions(_ request: DescribeInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableTagAuthorization)) {
            query["EnableTagAuthorization"] = request.enableTagAuthorization!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstances",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstances(_ request: DescribeInstancesRequest) async throws -> DescribeInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstancesWithOptions(request as! DescribeInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpControlPolicyItemsWithOptions(_ request: DescribeIpControlPolicyItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIpControlPolicyItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipControlId)) {
            query["IpControlId"] = request.ipControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.policyItemId)) {
            query["PolicyItemId"] = request.policyItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIpControlPolicyItems",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIpControlPolicyItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpControlPolicyItems(_ request: DescribeIpControlPolicyItemsRequest) async throws -> DescribeIpControlPolicyItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIpControlPolicyItemsWithOptions(request as! DescribeIpControlPolicyItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpControlsWithOptions(_ request: DescribeIpControlsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIpControlsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipControlId)) {
            query["IpControlId"] = request.ipControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipControlName)) {
            query["IpControlName"] = request.ipControlName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipControlType)) {
            query["IpControlType"] = request.ipControlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIpControls",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIpControlsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpControls(_ request: DescribeIpControlsRequest) async throws -> DescribeIpControlsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIpControlsWithOptions(request as! DescribeIpControlsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLogConfigWithOptions(_ request: DescribeLogConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeLogConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logType)) {
            query["LogType"] = request.logType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeLogConfig",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeLogConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeLogConfig(_ request: DescribeLogConfigRequest) async throws -> DescribeLogConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeLogConfigWithOptions(request as! DescribeLogConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMarketRemainsQuotaWithOptions(_ request: DescribeMarketRemainsQuotaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMarketRemainsQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMarketRemainsQuota",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMarketRemainsQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMarketRemainsQuota(_ request: DescribeMarketRemainsQuotaRequest) async throws -> DescribeMarketRemainsQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMarketRemainsQuotaWithOptions(request as! DescribeMarketRemainsQuotaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeModelsWithOptions(_ request: DescribeModelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeModelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["ModelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelName)) {
            query["ModelName"] = request.modelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeModels",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeModelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeModels(_ request: DescribeModelsRequest) async throws -> DescribeModelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeModelsWithOptions(request as! DescribeModelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePluginApisWithOptions(_ request: DescribePluginApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePluginApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.method)) {
            query["Method"] = request.method ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["Path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["PluginId"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePluginApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePluginApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePluginApis(_ request: DescribePluginApisRequest) async throws -> DescribePluginApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePluginApisWithOptions(request as! DescribePluginApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePluginSchemasWithOptions(_ request: DescribePluginSchemasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePluginSchemasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePluginSchemas",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePluginSchemasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePluginSchemas(_ request: DescribePluginSchemasRequest) async throws -> DescribePluginSchemasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePluginSchemasWithOptions(request as! DescribePluginSchemasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePluginTemplatesWithOptions(_ request: DescribePluginTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePluginTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginName)) {
            query["PluginName"] = request.pluginName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePluginTemplates",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePluginTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePluginTemplates(_ request: DescribePluginTemplatesRequest) async throws -> DescribePluginTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePluginTemplatesWithOptions(request as! DescribePluginTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePluginsWithOptions(_ request: DescribePluginsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePluginsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["PluginId"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginName)) {
            query["PluginName"] = request.pluginName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginType)) {
            query["PluginType"] = request.pluginType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePlugins",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePluginsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePlugins(_ request: DescribePluginsRequest) async throws -> DescribePluginsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePluginsWithOptions(request as! DescribePluginsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePluginsByApiWithOptions(_ request: DescribePluginsByApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePluginsByApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePluginsByApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePluginsByApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePluginsByApi(_ request: DescribePluginsByApiRequest) async throws -> DescribePluginsByApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePluginsByApiWithOptions(request as! DescribePluginsByApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePurchasedApiGroupWithOptions(_ request: DescribePurchasedApiGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePurchasedApiGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePurchasedApiGroup",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePurchasedApiGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePurchasedApiGroup(_ request: DescribePurchasedApiGroupRequest) async throws -> DescribePurchasedApiGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePurchasedApiGroupWithOptions(request as! DescribePurchasedApiGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePurchasedApiGroupsWithOptions(_ request: DescribePurchasedApiGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePurchasedApiGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePurchasedApiGroups",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePurchasedApiGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePurchasedApiGroups(_ request: DescribePurchasedApiGroupsRequest) async throws -> DescribePurchasedApiGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePurchasedApiGroupsWithOptions(request as! DescribePurchasedApiGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePurchasedApisWithOptions(_ request: DescribePurchasedApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePurchasedApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibility)) {
            query["Visibility"] = request.visibility ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePurchasedApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePurchasedApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePurchasedApis(_ request: DescribePurchasedApisRequest) async throws -> DescribePurchasedApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePurchasedApisWithOptions(request as! DescribePurchasedApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions(_ request: DescribeRegionsRequest) async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionsWithOptions(request as! DescribeRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSignaturesWithOptions(_ request: DescribeSignaturesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSignaturesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureId)) {
            query["SignatureId"] = request.signatureId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureName)) {
            query["SignatureName"] = request.signatureName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSignatures",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSignaturesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSignatures(_ request: DescribeSignaturesRequest) async throws -> DescribeSignaturesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSignaturesWithOptions(request as! DescribeSignaturesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSignaturesByApiWithOptions(_ request: DescribeSignaturesByApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSignaturesByApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSignaturesByApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSignaturesByApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSignaturesByApi(_ request: DescribeSignaturesByApiRequest) async throws -> DescribeSignaturesByApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSignaturesByApiWithOptions(request as! DescribeSignaturesByApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSummaryDataWithOptions(_ request: DescribeSummaryDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSummaryDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSummaryData",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSummaryDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSummaryData(_ request: DescribeSummaryDataRequest) async throws -> DescribeSummaryDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSummaryDataWithOptions(request as! DescribeSummaryDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSystemParametersWithOptions(_ request: DescribeSystemParametersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSystemParametersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSystemParameters",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSystemParametersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSystemParameters(_ request: DescribeSystemParametersRequest) async throws -> DescribeSystemParametersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSystemParametersWithOptions(request as! DescribeSystemParametersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrafficControlsWithOptions(_ request: DescribeTrafficControlsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTrafficControlsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlId)) {
            query["TrafficControlId"] = request.trafficControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlName)) {
            query["TrafficControlName"] = request.trafficControlName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTrafficControls",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTrafficControlsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrafficControls(_ request: DescribeTrafficControlsRequest) async throws -> DescribeTrafficControlsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTrafficControlsWithOptions(request as! DescribeTrafficControlsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrafficControlsByApiWithOptions(_ request: DescribeTrafficControlsByApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTrafficControlsByApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTrafficControlsByApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTrafficControlsByApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrafficControlsByApi(_ request: DescribeTrafficControlsByApiRequest) async throws -> DescribeTrafficControlsByApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTrafficControlsByApiWithOptions(request as! DescribeTrafficControlsByApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUpdateBackendTaskWithOptions(_ request: DescribeUpdateBackendTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUpdateBackendTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationUid)) {
            query["OperationUid"] = request.operationUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUpdateBackendTask",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUpdateBackendTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUpdateBackendTask(_ request: DescribeUpdateBackendTaskRequest) async throws -> DescribeUpdateBackendTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUpdateBackendTaskWithOptions(request as! DescribeUpdateBackendTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUpdateVpcInfoTaskWithOptions(_ request: DescribeUpdateVpcInfoTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUpdateVpcInfoTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationUid)) {
            query["OperationUid"] = request.operationUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUpdateVpcInfoTask",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUpdateVpcInfoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUpdateVpcInfoTask(_ request: DescribeUpdateVpcInfoTaskRequest) async throws -> DescribeUpdateVpcInfoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUpdateVpcInfoTaskWithOptions(request as! DescribeUpdateVpcInfoTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVpcAccessesWithOptions(_ request: DescribeVpcAccessesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVpcAccessesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accurateQuery)) {
            query["AccurateQuery"] = request.accurateQuery!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vpcAccessId)) {
            query["VpcAccessId"] = request.vpcAccessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVpcAccesses",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVpcAccessesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVpcAccesses(_ request: DescribeVpcAccessesRequest) async throws -> DescribeVpcAccessesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVpcAccessesWithOptions(request as! DescribeVpcAccessesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeZonesWithOptions(_ request: DescribeZonesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeZonesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeZones",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeZonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeZones(_ request: DescribeZonesRequest) async throws -> DescribeZonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeZonesWithOptions(request as! DescribeZonesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachApiProductWithOptions(_ request: DetachApiProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachApiProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiProductId)) {
            query["ApiProductId"] = request.apiProductId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apis)) {
            query["Apis"] = request.apis ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachApiProduct",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachApiProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachApiProduct(_ request: DetachApiProductRequest) async throws -> DetachApiProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachApiProductWithOptions(request as! DetachApiProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachPluginWithOptions(_ request: DetachPluginRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachPluginResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["PluginId"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachPlugin",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachPluginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachPlugin(_ request: DetachPluginRequest) async throws -> DetachPluginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachPluginWithOptions(request as! DetachPluginRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableInstanceAccessControlWithOptions(_ request: DisableInstanceAccessControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableInstanceAccessControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclId)) {
            query["AclId"] = request.aclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.addressIPVersion)) {
            query["AddressIPVersion"] = request.addressIPVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableInstanceAccessControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableInstanceAccessControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableInstanceAccessControl(_ request: DisableInstanceAccessControlRequest) async throws -> DisableInstanceAccessControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableInstanceAccessControlWithOptions(request as! DisableInstanceAccessControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dryRunSwaggerWithOptions(_ tmpReq: DryRunSwaggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DryRunSwaggerResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DryRunSwaggerShrinkRequest = DryRunSwaggerShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.globalCondition)) {
            request.globalConditionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.globalCondition, "GlobalCondition", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            query["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.globalConditionShrink)) {
            query["GlobalCondition"] = request.globalConditionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overwrite)) {
            query["Overwrite"] = request.overwrite!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DryRunSwagger",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DryRunSwaggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dryRunSwagger(_ request: DryRunSwaggerRequest) async throws -> DryRunSwaggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await dryRunSwaggerWithOptions(request as! DryRunSwaggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableInstanceAccessControlWithOptions(_ request: EnableInstanceAccessControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableInstanceAccessControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclId)) {
            query["AclId"] = request.aclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aclType)) {
            query["AclType"] = request.aclType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.addressIPVersion)) {
            query["AddressIPVersion"] = request.addressIPVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableInstanceAccessControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableInstanceAccessControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableInstanceAccessControl(_ request: EnableInstanceAccessControlRequest) async throws -> EnableInstanceAccessControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableInstanceAccessControlWithOptions(request as! EnableInstanceAccessControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importOASWithOptions(_ request: ImportOASRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportOASResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendName)) {
            query["BackendName"] = request.backendName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreWarning)) {
            query["IgnoreWarning"] = request.ignoreWarning!;
        }
        if (!TeaUtils.Client.isUnset(request.OASVersion)) {
            query["OASVersion"] = request.OASVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overwrite)) {
            query["Overwrite"] = request.overwrite!;
        }
        if (!TeaUtils.Client.isUnset(request.requestMode)) {
            query["RequestMode"] = request.requestMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipDryRun)) {
            query["SkipDryRun"] = request.skipDryRun!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportOAS",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportOASResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importOAS(_ request: ImportOASRequest) async throws -> ImportOASResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importOASWithOptions(request as! ImportOASRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importSwaggerWithOptions(_ tmpReq: ImportSwaggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportSwaggerResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ImportSwaggerShrinkRequest = ImportSwaggerShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.globalCondition)) {
            request.globalConditionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.globalCondition, "GlobalCondition", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            query["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.globalConditionShrink)) {
            query["GlobalCondition"] = request.globalConditionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overwrite)) {
            query["Overwrite"] = request.overwrite!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportSwagger",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportSwaggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importSwagger(_ request: ImportSwaggerRequest) async throws -> ImportSwaggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importSwaggerWithOptions(request as! ImportSwaggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiWithOptions(_ request: ModifyApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowSignatureMethod)) {
            query["AllowSignatureMethod"] = request.allowSignatureMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCodeAuthType)) {
            query["AppCodeAuthType"] = request.appCodeAuthType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendEnable)) {
            query["BackendEnable"] = request.backendEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.backendId)) {
            query["BackendId"] = request.backendId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableInternet)) {
            query["DisableInternet"] = request.disableInternet!;
        }
        if (!TeaUtils.Client.isUnset(request.forceNonceCheck)) {
            query["ForceNonceCheck"] = request.forceNonceCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openIdConnectConfig)) {
            query["OpenIdConnectConfig"] = request.openIdConnectConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestConfig)) {
            query["RequestConfig"] = request.requestConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultBodyModel)) {
            query["ResultBodyModel"] = request.resultBodyModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultType)) {
            query["ResultType"] = request.resultType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceConfig)) {
            query["ServiceConfig"] = request.serviceConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibility)) {
            query["Visibility"] = request.visibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webSocketApiType)) {
            query["WebSocketApiType"] = request.webSocketApiType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.constantParameters)) {
            body["ConstantParameters"] = request.constantParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorCodeSamples)) {
            body["ErrorCodeSamples"] = request.errorCodeSamples ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failResultSample)) {
            body["FailResultSample"] = request.failResultSample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestParameters)) {
            body["RequestParameters"] = request.requestParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultDescriptions)) {
            body["ResultDescriptions"] = request.resultDescriptions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultSample)) {
            body["ResultSample"] = request.resultSample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParameters)) {
            body["ServiceParameters"] = request.serviceParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParametersMap)) {
            body["ServiceParametersMap"] = request.serviceParametersMap ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemParameters)) {
            body["SystemParameters"] = request.systemParameters ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApi(_ request: ModifyApiRequest) async throws -> ModifyApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApiWithOptions(request as! ModifyApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiConfigurationWithOptions(_ request: ModifyApiConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApiConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowSignatureMethod)) {
            query["AllowSignatureMethod"] = request.allowSignatureMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appCodeAuthType)) {
            query["AppCodeAuthType"] = request.appCodeAuthType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendName)) {
            query["BackendName"] = request.backendName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bodyFormat)) {
            query["BodyFormat"] = request.bodyFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bodyModel)) {
            query["BodyModel"] = request.bodyModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentTypeCategory)) {
            query["ContentTypeCategory"] = request.contentTypeCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentTypeValue)) {
            query["ContentTypeValue"] = request.contentTypeValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableInternet)) {
            query["DisableInternet"] = request.disableInternet!;
        }
        if (!TeaUtils.Client.isUnset(request.errorCodeSamples)) {
            query["ErrorCodeSamples"] = request.errorCodeSamples ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failResultSample)) {
            query["FailResultSample"] = request.failResultSample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceNonceCheck)) {
            query["ForceNonceCheck"] = request.forceNonceCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.functionComputeConfig)) {
            query["FunctionComputeConfig"] = request.functionComputeConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpConfig)) {
            query["HttpConfig"] = request.httpConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mockConfig)) {
            query["MockConfig"] = request.mockConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelName)) {
            query["ModelName"] = request.modelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossConfig)) {
            query["OssConfig"] = request.ossConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postBodyDescription)) {
            query["PostBodyDescription"] = request.postBodyDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestHttpMethod)) {
            query["RequestHttpMethod"] = request.requestHttpMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestMode)) {
            query["RequestMode"] = request.requestMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestParameters)) {
            query["RequestParameters"] = request.requestParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestPath)) {
            query["RequestPath"] = request.requestPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestProtocol)) {
            query["RequestProtocol"] = request.requestProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultSample)) {
            query["ResultSample"] = request.resultSample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultType)) {
            query["ResultType"] = request.resultType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParameters)) {
            query["ServiceParameters"] = request.serviceParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceParametersMap)) {
            query["ServiceParametersMap"] = request.serviceParametersMap ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceProtocol)) {
            query["ServiceProtocol"] = request.serviceProtocol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceTimeout)) {
            query["ServiceTimeout"] = request.serviceTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.useBackendService)) {
            query["UseBackendService"] = request.useBackendService!;
        }
        if (!TeaUtils.Client.isUnset(request.visibility)) {
            query["Visibility"] = request.visibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcConfig)) {
            query["VpcConfig"] = request.vpcConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApiConfiguration",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApiConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiConfiguration(_ request: ModifyApiConfigurationRequest) async throws -> ModifyApiConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApiConfigurationWithOptions(request as! ModifyApiConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiGroupWithOptions(_ request: ModifyApiGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApiGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.basePath)) {
            query["BasePath"] = request.basePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compatibleFlags)) {
            query["CompatibleFlags"] = request.compatibleFlags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customTraceConfig)) {
            query["CustomTraceConfig"] = request.customTraceConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerConfigs)) {
            query["CustomerConfigs"] = request.customerConfigs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultDomain)) {
            query["DefaultDomain"] = request.defaultDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passthroughHeaders)) {
            query["PassthroughHeaders"] = request.passthroughHeaders ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rpcPattern)) {
            query["RpcPattern"] = request.rpcPattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportSSE)) {
            query["SupportSSE"] = request.supportSSE ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userLogConfig)) {
            query["UserLogConfig"] = request.userLogConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApiGroup",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApiGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiGroup(_ request: ModifyApiGroupRequest) async throws -> ModifyApiGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApiGroupWithOptions(request as! ModifyApiGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiGroupInstanceWithOptions(_ request: ModifyApiGroupInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApiGroupInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetInstanceId)) {
            query["TargetInstanceId"] = request.targetInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApiGroupInstance",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApiGroupInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiGroupInstance(_ request: ModifyApiGroupInstanceRequest) async throws -> ModifyApiGroupInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApiGroupInstanceWithOptions(request as! ModifyApiGroupInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiGroupNetworkPolicyWithOptions(_ request: ModifyApiGroupNetworkPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApiGroupNetworkPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpsPolicy)) {
            query["HttpsPolicy"] = request.httpsPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.innerDomainEnable)) {
            query["InnerDomainEnable"] = request.innerDomainEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.internetEnable)) {
            query["InternetEnable"] = request.internetEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.internetIPV6Enable)) {
            query["InternetIPV6Enable"] = request.internetIPV6Enable!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcIntranetEnable)) {
            query["VpcIntranetEnable"] = request.vpcIntranetEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.vpcSlbIntranetEnable)) {
            query["VpcSlbIntranetEnable"] = request.vpcSlbIntranetEnable!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApiGroupNetworkPolicy",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApiGroupNetworkPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiGroupNetworkPolicy(_ request: ModifyApiGroupNetworkPolicyRequest) async throws -> ModifyApiGroupNetworkPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApiGroupNetworkPolicyWithOptions(request as! ModifyApiGroupNetworkPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiGroupVpcWhitelistWithOptions(_ request: ModifyApiGroupVpcWhitelistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApiGroupVpcWhitelistResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcIds)) {
            query["VpcIds"] = request.vpcIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApiGroupVpcWhitelist",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApiGroupVpcWhitelistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiGroupVpcWhitelist(_ request: ModifyApiGroupVpcWhitelistRequest) async throws -> ModifyApiGroupVpcWhitelistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApiGroupVpcWhitelistWithOptions(request as! ModifyApiGroupVpcWhitelistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppWithOptions(_ request: ModifyAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extend)) {
            query["Extend"] = request.extend ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApp",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApp(_ request: ModifyAppRequest) async throws -> ModifyAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAppWithOptions(request as! ModifyAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackendWithOptions(_ request: ModifyBackendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBackendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendId)) {
            query["BackendId"] = request.backendId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendName)) {
            query["BackendName"] = request.backendName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendType)) {
            query["BackendType"] = request.backendType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBackend",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBackendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackend(_ request: ModifyBackendRequest) async throws -> ModifyBackendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBackendWithOptions(request as! ModifyBackendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackendModelWithOptions(_ request: ModifyBackendModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBackendModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backendId)) {
            query["BackendId"] = request.backendId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendModelData)) {
            query["BackendModelData"] = request.backendModelData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendModelId)) {
            query["BackendModelId"] = request.backendModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backendType)) {
            query["BackendType"] = request.backendType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBackendModel",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBackendModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackendModel(_ request: ModifyBackendModelRequest) async throws -> ModifyBackendModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBackendModelWithOptions(request as! ModifyBackendModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatasetWithOptions(_ request: ModifyDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDataset",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDataset(_ request: ModifyDatasetRequest) async throws -> ModifyDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDatasetWithOptions(request as! ModifyDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatasetItemWithOptions(_ request: ModifyDatasetItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDatasetItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetItemId)) {
            query["DatasetItemId"] = request.datasetItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredTime)) {
            query["ExpiredTime"] = request.expiredTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDatasetItem",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDatasetItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatasetItem(_ request: ModifyDatasetItemRequest) async throws -> ModifyDatasetItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDatasetItemWithOptions(request as! ModifyDatasetItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceAttributeWithOptions(_ tmpReq: ModifyInstanceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceAttributeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyInstanceAttributeShrinkRequest = ModifyInstanceAttributeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.toConnectVpcIpBlock)) {
            request.toConnectVpcIpBlockShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.toConnectVpcIpBlock, "ToConnectVpcIpBlock", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteVpcIpBlock)) {
            query["DeleteVpcIpBlock"] = request.deleteVpcIpBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.egressIpv6Enable)) {
            query["EgressIpv6Enable"] = request.egressIpv6Enable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpsPolicy)) {
            query["HttpsPolicy"] = request.httpsPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.IPV6Enabled)) {
            query["IPV6Enabled"] = request.IPV6Enabled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intranetSegments)) {
            query["IntranetSegments"] = request.intranetSegments ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maintainEndTime)) {
            query["MaintainEndTime"] = request.maintainEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maintainStartTime)) {
            query["MaintainStartTime"] = request.maintainStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toConnectVpcIpBlockShrink)) {
            query["ToConnectVpcIpBlock"] = request.toConnectVpcIpBlockShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcSlbIntranetEnable)) {
            query["VpcSlbIntranetEnable"] = request.vpcSlbIntranetEnable ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceAttribute",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceAttribute(_ request: ModifyInstanceAttributeRequest) async throws -> ModifyInstanceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceAttributeWithOptions(request as! ModifyInstanceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceSpecWithOptions(_ request: ModifyInstanceSpecRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceSpecResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceSpec)) {
            query["InstanceSpec"] = request.instanceSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyAction)) {
            query["ModifyAction"] = request.modifyAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipWaitSwitch)) {
            query["SkipWaitSwitch"] = request.skipWaitSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceSpec",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceSpecResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceSpec(_ request: ModifyInstanceSpecRequest) async throws -> ModifyInstanceSpecResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceSpecWithOptions(request as! ModifyInstanceSpecRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyIntranetDomainPolicyWithOptions(_ request: ModifyIntranetDomainPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyIntranetDomainPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcIntranetEnable)) {
            query["VpcIntranetEnable"] = request.vpcIntranetEnable!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyIntranetDomainPolicy",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyIntranetDomainPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyIntranetDomainPolicy(_ request: ModifyIntranetDomainPolicyRequest) async throws -> ModifyIntranetDomainPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyIntranetDomainPolicyWithOptions(request as! ModifyIntranetDomainPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyIpControlWithOptions(_ request: ModifyIpControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyIpControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipControlId)) {
            query["IpControlId"] = request.ipControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipControlName)) {
            query["IpControlName"] = request.ipControlName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyIpControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyIpControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyIpControl(_ request: ModifyIpControlRequest) async throws -> ModifyIpControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyIpControlWithOptions(request as! ModifyIpControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyIpControlPolicyItemWithOptions(_ request: ModifyIpControlPolicyItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyIpControlPolicyItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cidrIp)) {
            query["CidrIp"] = request.cidrIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipControlId)) {
            query["IpControlId"] = request.ipControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyItemId)) {
            query["PolicyItemId"] = request.policyItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyIpControlPolicyItem",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyIpControlPolicyItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyIpControlPolicyItem(_ request: ModifyIpControlPolicyItemRequest) async throws -> ModifyIpControlPolicyItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyIpControlPolicyItemWithOptions(request as! ModifyIpControlPolicyItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLogConfigWithOptions(_ request: ModifyLogConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyLogConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logType)) {
            query["LogType"] = request.logType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsLogStore)) {
            query["SlsLogStore"] = request.slsLogStore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsProject)) {
            query["SlsProject"] = request.slsProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyLogConfig",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyLogConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyLogConfig(_ request: ModifyLogConfigRequest) async throws -> ModifyLogConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyLogConfigWithOptions(request as! ModifyLogConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyModelWithOptions(_ request: ModifyModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelName)) {
            query["ModelName"] = request.modelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newModelName)) {
            query["NewModelName"] = request.newModelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            query["Schema"] = request.schema ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyModel",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyModel(_ request: ModifyModelRequest) async throws -> ModifyModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyModelWithOptions(request as! ModifyModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPluginWithOptions(_ request: ModifyPluginRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPluginResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginData)) {
            query["PluginData"] = request.pluginData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            query["PluginId"] = request.pluginId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pluginName)) {
            query["PluginName"] = request.pluginName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPlugin",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPluginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPlugin(_ request: ModifyPluginRequest) async throws -> ModifyPluginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyPluginWithOptions(request as! ModifyPluginRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySignatureWithOptions(_ request: ModifySignatureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySignatureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureId)) {
            query["SignatureId"] = request.signatureId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureKey)) {
            query["SignatureKey"] = request.signatureKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureName)) {
            query["SignatureName"] = request.signatureName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureSecret)) {
            query["SignatureSecret"] = request.signatureSecret ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySignature",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySignatureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySignature(_ request: ModifySignatureRequest) async throws -> ModifySignatureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySignatureWithOptions(request as! ModifySignatureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTrafficControlWithOptions(_ request: ModifyTrafficControlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyTrafficControlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiDefault)) {
            query["ApiDefault"] = request.apiDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.appDefault)) {
            query["AppDefault"] = request.appDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlId)) {
            query["TrafficControlId"] = request.trafficControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlName)) {
            query["TrafficControlName"] = request.trafficControlName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlUnit)) {
            query["TrafficControlUnit"] = request.trafficControlUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userDefault)) {
            query["UserDefault"] = request.userDefault!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyTrafficControl",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyTrafficControlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTrafficControl(_ request: ModifyTrafficControlRequest) async throws -> ModifyTrafficControlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyTrafficControlWithOptions(request as! ModifyTrafficControlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyVpcAccessAndUpdateApisWithOptions(_ request: ModifyVpcAccessAndUpdateApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyVpcAccessAndUpdateApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needBatchWork)) {
            query["NeedBatchWork"] = request.needBatchWork!;
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.refresh)) {
            query["Refresh"] = request.refresh!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcTargetHostName)) {
            query["VpcTargetHostName"] = request.vpcTargetHostName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyVpcAccessAndUpdateApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyVpcAccessAndUpdateApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyVpcAccessAndUpdateApis(_ request: ModifyVpcAccessAndUpdateApisRequest) async throws -> ModifyVpcAccessAndUpdateApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyVpcAccessAndUpdateApisWithOptions(request as! ModifyVpcAccessAndUpdateApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openApiGatewayServiceWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> OpenApiGatewayServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenApiGatewayService",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenApiGatewayServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openApiGatewayService() async throws -> OpenApiGatewayServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await openApiGatewayServiceWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRequestLogsWithOptions(_ request: QueryRequestLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRequestLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.requestLogId)) {
            query["RequestLogId"] = request.requestLogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRequestLogs",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRequestLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRequestLogs(_ request: QueryRequestLogsRequest) async throws -> QueryRequestLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRequestLogsWithOptions(request as! QueryRequestLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reactivateDomainWithOptions(_ request: ReactivateDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReactivateDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReactivateDomain",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReactivateDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reactivateDomain(_ request: ReactivateDomainRequest) async throws -> ReactivateDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reactivateDomainWithOptions(request as! ReactivateDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAccessControlListEntryWithOptions(_ request: RemoveAccessControlListEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveAccessControlListEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclEntrys)) {
            query["AclEntrys"] = request.aclEntrys ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aclId)) {
            query["AclId"] = request.aclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveAccessControlListEntry",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveAccessControlListEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAccessControlListEntry(_ request: RemoveAccessControlListEntryRequest) async throws -> RemoveAccessControlListEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeAccessControlListEntryWithOptions(request as! RemoveAccessControlListEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeApiProductsAuthoritiesWithOptions(_ tmpReq: RemoveApiProductsAuthoritiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveApiProductsAuthoritiesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveApiProductsAuthoritiesShrinkRequest = RemoveApiProductsAuthoritiesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.apiProductIds)) {
            request.apiProductIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.apiProductIds, "ApiProductIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiProductIdsShrink)) {
            query["ApiProductIds"] = request.apiProductIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveApiProductsAuthorities",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveApiProductsAuthoritiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeApiProductsAuthorities(_ request: RemoveApiProductsAuthoritiesRequest) async throws -> RemoveApiProductsAuthoritiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeApiProductsAuthoritiesWithOptions(request as! RemoveApiProductsAuthoritiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeApisAuthoritiesWithOptions(_ request: RemoveApisAuthoritiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveApisAuthoritiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveApisAuthorities",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveApisAuthoritiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeApisAuthorities(_ request: RemoveApisAuthoritiesRequest) async throws -> RemoveApisAuthoritiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeApisAuthoritiesWithOptions(request as! RemoveApisAuthoritiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAppsAuthoritiesWithOptions(_ request: RemoveAppsAuthoritiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveAppsAuthoritiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveAppsAuthorities",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveAppsAuthoritiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAppsAuthorities(_ request: RemoveAppsAuthoritiesRequest) async throws -> RemoveAppsAuthoritiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeAppsAuthoritiesWithOptions(request as! RemoveAppsAuthoritiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeIpControlApisWithOptions(_ request: RemoveIpControlApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveIpControlApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipControlId)) {
            query["IpControlId"] = request.ipControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveIpControlApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveIpControlApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeIpControlApis(_ request: RemoveIpControlApisRequest) async throws -> RemoveIpControlApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeIpControlApisWithOptions(request as! RemoveIpControlApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeIpControlPolicyItemWithOptions(_ request: RemoveIpControlPolicyItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveIpControlPolicyItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipControlId)) {
            query["IpControlId"] = request.ipControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyItemIds)) {
            query["PolicyItemIds"] = request.policyItemIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveIpControlPolicyItem",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveIpControlPolicyItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeIpControlPolicyItem(_ request: RemoveIpControlPolicyItemRequest) async throws -> RemoveIpControlPolicyItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeIpControlPolicyItemWithOptions(request as! RemoveIpControlPolicyItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSignatureApisWithOptions(_ request: RemoveSignatureApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveSignatureApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureId)) {
            query["SignatureId"] = request.signatureId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveSignatureApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveSignatureApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSignatureApis(_ request: RemoveSignatureApisRequest) async throws -> RemoveSignatureApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeSignatureApisWithOptions(request as! RemoveSignatureApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeTrafficControlApisWithOptions(_ request: RemoveTrafficControlApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveTrafficControlApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlId)) {
            query["TrafficControlId"] = request.trafficControlId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveTrafficControlApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveTrafficControlApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeTrafficControlApis(_ request: RemoveTrafficControlApisRequest) async throws -> RemoveTrafficControlApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeTrafficControlApisWithOptions(request as! RemoveTrafficControlApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeVpcAccessWithOptions(_ request: RemoveVpcAccessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveVpcAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needBatchWork)) {
            query["NeedBatchWork"] = request.needBatchWork!;
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveVpcAccess",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveVpcAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeVpcAccess(_ request: RemoveVpcAccessRequest) async throws -> RemoveVpcAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeVpcAccessWithOptions(request as! RemoveVpcAccessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeVpcAccessAndAbolishApisWithOptions(_ request: RemoveVpcAccessAndAbolishApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveVpcAccessAndAbolishApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needBatchWork)) {
            query["NeedBatchWork"] = request.needBatchWork!;
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveVpcAccessAndAbolishApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveVpcAccessAndAbolishApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeVpcAccessAndAbolishApis(_ request: RemoveVpcAccessAndAbolishApisRequest) async throws -> RemoveVpcAccessAndAbolishApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeVpcAccessAndAbolishApisWithOptions(request as! RemoveVpcAccessAndAbolishApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAppCodeWithOptions(_ request: ResetAppCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetAppCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCode)) {
            query["AppCode"] = request.appCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newAppCode)) {
            query["NewAppCode"] = request.newAppCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetAppCode",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetAppCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAppCode(_ request: ResetAppCodeRequest) async throws -> ResetAppCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetAppCodeWithOptions(request as! ResetAppCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAppSecretWithOptions(_ request: ResetAppSecretRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetAppSecretResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["AppKey"] = request.appKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newAppKey)) {
            query["NewAppKey"] = request.newAppKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newAppSecret)) {
            query["NewAppSecret"] = request.newAppSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetAppSecret",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetAppSecretResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAppSecret(_ request: ResetAppSecretRequest) async throws -> ResetAppSecretResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetAppSecretWithOptions(request as! ResetAppSecretRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sdkGenerateByAppWithOptions(_ request: SdkGenerateByAppRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SdkGenerateByAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SdkGenerateByApp",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SdkGenerateByAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sdkGenerateByApp(_ request: SdkGenerateByAppRequest) async throws -> SdkGenerateByAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sdkGenerateByAppWithOptions(request as! SdkGenerateByAppRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sdkGenerateByAppForRegionWithOptions(_ request: SdkGenerateByAppForRegionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SdkGenerateByAppForRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SdkGenerateByAppForRegion",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SdkGenerateByAppForRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sdkGenerateByAppForRegion(_ request: SdkGenerateByAppForRegionRequest) async throws -> SdkGenerateByAppForRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sdkGenerateByAppForRegionWithOptions(request as! SdkGenerateByAppForRegionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sdkGenerateByGroupWithOptions(_ request: SdkGenerateByGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SdkGenerateByGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SdkGenerateByGroup",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SdkGenerateByGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sdkGenerateByGroup(_ request: SdkGenerateByGroupRequest) async throws -> SdkGenerateByGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sdkGenerateByGroupWithOptions(request as! SdkGenerateByGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAccessControlListAttributeWithOptions(_ request: SetAccessControlListAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetAccessControlListAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclId)) {
            query["AclId"] = request.aclId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aclName)) {
            query["AclName"] = request.aclName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetAccessControlListAttribute",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetAccessControlListAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAccessControlListAttribute(_ request: SetAccessControlListAttributeRequest) async throws -> SetAccessControlListAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setAccessControlListAttributeWithOptions(request as! SetAccessControlListAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setApiProductsAuthoritiesWithOptions(_ tmpReq: SetApiProductsAuthoritiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetApiProductsAuthoritiesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetApiProductsAuthoritiesShrinkRequest = SetApiProductsAuthoritiesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.apiProductIds)) {
            request.apiProductIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.apiProductIds, "ApiProductIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiProductIdsShrink)) {
            query["ApiProductIds"] = request.apiProductIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.authValidTime)) {
            query["AuthValidTime"] = request.authValidTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetApiProductsAuthorities",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetApiProductsAuthoritiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setApiProductsAuthorities(_ request: SetApiProductsAuthoritiesRequest) async throws -> SetApiProductsAuthoritiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setApiProductsAuthoritiesWithOptions(request as! SetApiProductsAuthoritiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setApisAuthoritiesWithOptions(_ request: SetApisAuthoritiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetApisAuthoritiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.authValidTime)) {
            query["AuthValidTime"] = request.authValidTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetApisAuthorities",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetApisAuthoritiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setApisAuthorities(_ request: SetApisAuthoritiesRequest) async throws -> SetApisAuthoritiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setApisAuthoritiesWithOptions(request as! SetApisAuthoritiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAppsAuthToApiProductWithOptions(_ request: SetAppsAuthToApiProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetAppsAuthToApiProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiProductId)) {
            query["ApiProductId"] = request.apiProductId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authValidTime)) {
            query["AuthValidTime"] = request.authValidTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetAppsAuthToApiProduct",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetAppsAuthToApiProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAppsAuthToApiProduct(_ request: SetAppsAuthToApiProductRequest) async throws -> SetAppsAuthToApiProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setAppsAuthToApiProductWithOptions(request as! SetAppsAuthToApiProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAppsAuthoritiesWithOptions(_ request: SetAppsAuthoritiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetAppsAuthoritiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appIds)) {
            query["AppIds"] = request.appIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authValidTime)) {
            query["AuthValidTime"] = request.authValidTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetAppsAuthorities",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetAppsAuthoritiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAppsAuthorities(_ request: SetAppsAuthoritiesRequest) async throws -> SetAppsAuthoritiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setAppsAuthoritiesWithOptions(request as! SetAppsAuthoritiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDomainWithOptions(_ request: SetDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bindStageName)) {
            query["BindStageName"] = request.bindStageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customDomainType)) {
            query["CustomDomainType"] = request.customDomainType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isForce)) {
            query["IsForce"] = request.isForce!;
        }
        if (!TeaUtils.Client.isUnset(request.isHttpRedirectToHttps)) {
            query["IsHttpRedirectToHttps"] = request.isHttpRedirectToHttps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDomain",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDomain(_ request: SetDomainRequest) async throws -> SetDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDomainWithOptions(request as! SetDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDomainCertificateWithOptions(_ request: SetDomainCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDomainCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caCertificateBody)) {
            query["CaCertificateBody"] = request.caCertificateBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certificateBody)) {
            query["CertificateBody"] = request.certificateBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certificateName)) {
            query["CertificateName"] = request.certificateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certificatePrivateKey)) {
            query["CertificatePrivateKey"] = request.certificatePrivateKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sslVerifyDepth)) {
            query["SslVerifyDepth"] = request.sslVerifyDepth ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDomainCertificate",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDomainCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDomainCertificate(_ request: SetDomainCertificateRequest) async throws -> SetDomainCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDomainCertificateWithOptions(request as! SetDomainCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDomainWebSocketStatusWithOptions(_ request: SetDomainWebSocketStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDomainWebSocketStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionValue)) {
            query["ActionValue"] = request.actionValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.WSSEnable)) {
            query["WSSEnable"] = request.WSSEnable ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDomainWebSocketStatus",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDomainWebSocketStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDomainWebSocketStatus(_ request: SetDomainWebSocketStatusRequest) async throws -> SetDomainWebSocketStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDomainWebSocketStatusWithOptions(request as! SetDomainWebSocketStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGroupAuthAppCodeWithOptions(_ request: SetGroupAuthAppCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetGroupAuthAppCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authAppCode)) {
            query["AuthAppCode"] = request.authAppCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetGroupAuthAppCode",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetGroupAuthAppCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setGroupAuthAppCode(_ request: SetGroupAuthAppCodeRequest) async throws -> SetGroupAuthAppCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setGroupAuthAppCodeWithOptions(request as! SetGroupAuthAppCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setIpControlApisWithOptions(_ request: SetIpControlApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetIpControlApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipControlId)) {
            query["IpControlId"] = request.ipControlId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetIpControlApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetIpControlApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setIpControlApis(_ request: SetIpControlApisRequest) async throws -> SetIpControlApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setIpControlApisWithOptions(request as! SetIpControlApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setSignatureApisWithOptions(_ request: SetSignatureApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetSignatureApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureId)) {
            query["SignatureId"] = request.signatureId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetSignatureApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetSignatureApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setSignatureApis(_ request: SetSignatureApisRequest) async throws -> SetSignatureApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setSignatureApisWithOptions(request as! SetSignatureApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setTrafficControlApisWithOptions(_ request: SetTrafficControlApisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetTrafficControlApisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiIds)) {
            query["ApiIds"] = request.apiIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficControlId)) {
            query["TrafficControlId"] = request.trafficControlId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetTrafficControlApis",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetTrafficControlApisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setTrafficControlApis(_ request: SetTrafficControlApisRequest) async throws -> SetTrafficControlApisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setTrafficControlApisWithOptions(request as! SetTrafficControlApisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setVpcAccessWithOptions(_ request: SetVpcAccessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetVpcAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcTargetHostName)) {
            query["VpcTargetHostName"] = request.vpcTargetHostName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetVpcAccess",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetVpcAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setVpcAccess(_ request: SetVpcAccessRequest) async throws -> SetVpcAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setVpcAccessWithOptions(request as! SetVpcAccessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setWildcardDomainPatternsWithOptions(_ request: SetWildcardDomainPatternsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetWildcardDomainPatternsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wildcardDomainPatterns)) {
            query["WildcardDomainPatterns"] = request.wildcardDomainPatterns ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetWildcardDomainPatterns",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetWildcardDomainPatternsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setWildcardDomainPatterns(_ request: SetWildcardDomainPatternsRequest) async throws -> SetWildcardDomainPatternsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setWildcardDomainPatternsWithOptions(request as! SetWildcardDomainPatternsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchApiWithOptions(_ request: SwitchApiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchApiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyVersion)) {
            query["HistoryVersion"] = request.historyVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageName)) {
            query["StageName"] = request.stageName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchApi",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchApiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchApi(_ request: SwitchApiRequest) async throws -> SwitchApiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchApiWithOptions(request as! SwitchApiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateVpcConnectivityWithOptions(_ request: ValidateVpcConnectivityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateVpcConnectivityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcAccessId)) {
            query["VpcAccessId"] = request.vpcAccessId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateVpcConnectivity",
            "version": "2016-07-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateVpcConnectivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateVpcConnectivity(_ request: ValidateVpcConnectivityRequest) async throws -> ValidateVpcConnectivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateVpcConnectivityWithOptions(request as! ValidateVpcConnectivityRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
