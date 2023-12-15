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
            "ap-northeast-1": "ccc.aliyuncs.com",
            "ap-south-1": "ccc.aliyuncs.com",
            "ap-southeast-1": "ccc.aliyuncs.com",
            "ap-southeast-2": "ccc.aliyuncs.com",
            "ap-southeast-3": "ccc.aliyuncs.com",
            "ap-southeast-5": "ccc.aliyuncs.com",
            "cn-beijing": "ccc.aliyuncs.com",
            "cn-chengdu": "ccc.aliyuncs.com",
            "cn-hongkong": "ccc.aliyuncs.com",
            "cn-huhehaote": "ccc.aliyuncs.com",
            "cn-qingdao": "ccc.aliyuncs.com",
            "cn-shenzhen": "ccc.aliyuncs.com",
            "cn-zhangjiakou": "ccc.aliyuncs.com",
            "eu-central-1": "ccc.aliyuncs.com",
            "eu-west-1": "ccc.aliyuncs.com",
            "me-east-1": "ccc.aliyuncs.com",
            "us-east-1": "ccc.aliyuncs.com",
            "us-west-1": "ccc.aliyuncs.com",
            "cn-hangzhou-finance": "ccc.aliyuncs.com",
            "cn-shenzhen-finance-1": "ccc.aliyuncs.com",
            "cn-shanghai-finance-1": "ccc.aliyuncs.com",
            "cn-north-2-gov-1": "ccc.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("ccc", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func checkServiceLinkedRoleForDeletingWithOptions(_ request: CheckServiceLinkedRoleForDeletingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckServiceLinkedRoleForDeletingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deletionTaskId)) {
            query["DeletionTaskId"] = request.deletionTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleArn)) {
            query["RoleArn"] = request.roleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.SPIRegionId)) {
            query["SPIRegionId"] = request.SPIRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckServiceLinkedRoleForDeleting",
            "version": "2020-05-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckServiceLinkedRoleForDeletingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkServiceLinkedRoleForDeleting(_ request: CheckServiceLinkedRoleForDeletingRequest) async throws -> CheckServiceLinkedRoleForDeletingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkServiceLinkedRoleForDeletingWithOptions(request as! CheckServiceLinkedRoleForDeletingRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
