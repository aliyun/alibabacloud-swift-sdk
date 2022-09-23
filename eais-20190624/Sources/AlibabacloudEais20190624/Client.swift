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
            "ap-northeast-1": "eais.aliyuncs.com",
            "ap-northeast-2-pop": "eais.aliyuncs.com",
            "ap-south-1": "eais.aliyuncs.com",
            "ap-southeast-1": "eais.aliyuncs.com",
            "ap-southeast-2": "eais.aliyuncs.com",
            "ap-southeast-3": "eais.aliyuncs.com",
            "ap-southeast-5": "eais.aliyuncs.com",
            "cn-beijing-finance-1": "eais.aliyuncs.com",
            "cn-beijing-finance-pop": "eais.aliyuncs.com",
            "cn-beijing-gov-1": "eais.aliyuncs.com",
            "cn-beijing-nu16-b01": "eais.aliyuncs.com",
            "cn-edge-1": "eais.aliyuncs.com",
            "cn-fujian": "eais.aliyuncs.com",
            "cn-haidian-cm12-c01": "eais.aliyuncs.com",
            "cn-hangzhou-bj-b01": "eais.aliyuncs.com",
            "cn-hangzhou-finance": "eais.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "eais.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "eais.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "eais.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "eais.aliyuncs.com",
            "cn-hangzhou-test-306": "eais.aliyuncs.com",
            "cn-hongkong": "eais.aliyuncs.com",
            "cn-hongkong-finance-pop": "eais.aliyuncs.com",
            "cn-huhehaote": "eais.aliyuncs.com",
            "cn-huhehaote-nebula-1": "eais.aliyuncs.com",
            "cn-north-2-gov-1": "eais.aliyuncs.com",
            "cn-qingdao": "eais.aliyuncs.com",
            "cn-qingdao-nebula": "eais.aliyuncs.com",
            "cn-shanghai-et15-b01": "eais.aliyuncs.com",
            "cn-shanghai-et2-b01": "eais.aliyuncs.com",
            "cn-shanghai-finance-1": "eais.aliyuncs.com",
            "cn-shanghai-inner": "eais.aliyuncs.com",
            "cn-shanghai-internal-test-1": "eais.aliyuncs.com",
            "cn-shenzhen-finance-1": "eais.aliyuncs.com",
            "cn-shenzhen-inner": "eais.aliyuncs.com",
            "cn-shenzhen-st4-d01": "eais.aliyuncs.com",
            "cn-shenzhen-su18-b01": "eais.aliyuncs.com",
            "cn-wuhan": "eais.aliyuncs.com",
            "cn-wulanchabu": "eais.aliyuncs.com",
            "cn-yushanfang": "eais.aliyuncs.com",
            "cn-zhangbei": "eais.aliyuncs.com",
            "cn-zhangbei-na61-b01": "eais.aliyuncs.com",
            "cn-zhangjiakou": "eais.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "eais.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "eais.aliyuncs.com",
            "eu-central-1": "eais.aliyuncs.com",
            "eu-west-1": "eais.aliyuncs.com",
            "eu-west-1-oxs": "eais.aliyuncs.com",
            "me-east-1": "eais.aliyuncs.com",
            "rus-west-1-pop": "eais.aliyuncs.com",
            "us-east-1": "eais.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("eais", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func attachEaiWithOptions(_ request: AttachEaiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachEaiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientInstanceId)) {
            query["ClientInstanceId"] = request.clientInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticAcceleratedInstanceId)) {
            query["ElasticAcceleratedInstanceId"] = request.elasticAcceleratedInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachEai",
            "version": "2019-06-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachEaiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachEai(_ request: AttachEaiRequest) async throws -> AttachEaiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachEaiWithOptions(request as! AttachEaiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEaiWithOptions(_ request: CreateEaiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEaiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            query["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEai",
            "version": "2019-06-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEaiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEai(_ request: CreateEaiRequest) async throws -> CreateEaiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEaiWithOptions(request as! CreateEaiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEaiAllWithOptions(_ request: CreateEaiAllRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEaiAllResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientImageId)) {
            query["ClientImageId"] = request.clientImageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientInstanceName)) {
            query["ClientInstanceName"] = request.clientInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientInstanceType)) {
            query["ClientInstanceType"] = request.clientInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientInternetMaxBandwidthIn)) {
            query["ClientInternetMaxBandwidthIn"] = request.clientInternetMaxBandwidthIn!;
        }
        if (!TeaUtils.Client.isUnset(request.clientInternetMaxBandwidthOut)) {
            query["ClientInternetMaxBandwidthOut"] = request.clientInternetMaxBandwidthOut!;
        }
        if (!TeaUtils.Client.isUnset(request.clientPassword)) {
            query["ClientPassword"] = request.clientPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSecurityGroupId)) {
            query["ClientSecurityGroupId"] = request.clientSecurityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSystemDiskCategory)) {
            query["ClientSystemDiskCategory"] = request.clientSystemDiskCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSystemDiskSize)) {
            query["ClientSystemDiskSize"] = request.clientSystemDiskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVSwitchId)) {
            query["ClientVSwitchId"] = request.clientVSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientZoneId)) {
            query["ClientZoneId"] = request.clientZoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eaiInstanceType)) {
            query["EaiInstanceType"] = request.eaiInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEaiAll",
            "version": "2019-06-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEaiAllResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEaiAll(_ request: CreateEaiAllRequest) async throws -> CreateEaiAllResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEaiAllWithOptions(request as! CreateEaiAllRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEaiWithOptions(_ request: DeleteEaiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEaiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticAcceleratedInstanceId)) {
            query["ElasticAcceleratedInstanceId"] = request.elasticAcceleratedInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEai",
            "version": "2019-06-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEaiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEai(_ request: DeleteEaiRequest) async throws -> DeleteEaiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEaiWithOptions(request as! DeleteEaiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEaiAllWithOptions(_ request: DeleteEaiAllRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEaiAllResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientInstanceId)) {
            query["ClientInstanceId"] = request.clientInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticAcceleratedInstanceId)) {
            query["ElasticAcceleratedInstanceId"] = request.elasticAcceleratedInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEaiAll",
            "version": "2019-06-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEaiAllResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEaiAll(_ request: DeleteEaiAllRequest) async throws -> DeleteEaiAllResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEaiAllWithOptions(request as! DeleteEaiAllRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEaisWithOptions(_ request: DescribeEaisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEaisResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticAcceleratedInstanceIds)) {
            query["ElasticAcceleratedInstanceIds"] = request.elasticAcceleratedInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEais",
            "version": "2019-06-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEaisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEais(_ request: DescribeEaisRequest) async throws -> DescribeEaisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEaisWithOptions(request as! DescribeEaisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2019-06-24",
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
    public func describeRegions() async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachEaiWithOptions(_ request: DetachEaiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachEaiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.elasticAcceleratedInstanceId)) {
            query["ElasticAcceleratedInstanceId"] = request.elasticAcceleratedInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachEai",
            "version": "2019-06-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachEaiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachEai(_ request: DetachEaiRequest) async throws -> DetachEaiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachEaiWithOptions(request as! DetachEaiRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
