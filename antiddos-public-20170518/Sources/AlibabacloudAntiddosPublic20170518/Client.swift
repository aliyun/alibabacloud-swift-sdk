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
            "ap-northeast-1": "antiddos-openapi.ap-northeast-1.aliyuncs.com",
            "ap-northeast-2-pop": "antiddos.aliyuncs.com",
            "ap-south-1": "antiddos-openapi.ap-south-1.aliyuncs.com",
            "ap-southeast-1": "antiddos.aliyuncs.com",
            "ap-southeast-2": "antiddos-openapi.ap-southeast-2.aliyuncs.com",
            "ap-southeast-3": "antiddos-openapi.ap-southeast-3.aliyuncs.com",
            "ap-southeast-5": "antiddos-openapi-vpc.ap-southeast-5.aliyuncs.com",
            "cn-beijing": "antiddos-openapi-vpc.cn-beijing.aliyuncs.com",
            "cn-beijing-finance-1": "antiddos.aliyuncs.com",
            "cn-beijing-finance-pop": "antiddos.aliyuncs.com",
            "cn-beijing-gov-1": "antiddos.aliyuncs.com",
            "cn-beijing-nu16-b01": "antiddos.aliyuncs.com",
            "cn-chengdu": "antiddos-openapi.cn-chengdu.aliyuncs.com",
            "cn-edge-1": "antiddos.aliyuncs.com",
            "cn-fujian": "antiddos.aliyuncs.com",
            "cn-haidian-cm12-c01": "antiddos.aliyuncs.com",
            "cn-hangzhou": "antiddos-openapi-vpc.cn-hangzhou.aliyuncs.com",
            "cn-hangzhou-bj-b01": "antiddos.aliyuncs.com",
            "cn-hangzhou-finance": "antiddos.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "antiddos.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "antiddos.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "antiddos.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "antiddos.aliyuncs.com",
            "cn-hangzhou-test-306": "antiddos.aliyuncs.com",
            "cn-hongkong": "antiddos-openapi-vpc.cn-hongkong.aliyuncs.com",
            "cn-hongkong-finance-pop": "antiddos.aliyuncs.com",
            "cn-huhehaote": "antiddos-openapi.cn-huhehaote.aliyuncs.com",
            "cn-huhehaote-nebula-1": "antiddos.aliyuncs.com",
            "cn-north-2-gov-1": "antiddos.aliyuncs.com",
            "cn-qingdao": "antiddos-openapi-vpc.cn-qingdao.aliyuncs.com",
            "cn-qingdao-nebula": "antiddos.aliyuncs.com",
            "cn-shanghai": "antiddos-openapi-vpc.cn-shanghai.aliyuncs.com",
            "cn-shanghai-et15-b01": "antiddos.aliyuncs.com",
            "cn-shanghai-et2-b01": "antiddos.aliyuncs.com",
            "cn-shanghai-finance-1": "antiddos.aliyuncs.com",
            "cn-shanghai-inner": "antiddos.aliyuncs.com",
            "cn-shanghai-internal-test-1": "antiddos.aliyuncs.com",
            "cn-shenzhen": "antiddos.aliyuncs.com",
            "cn-shenzhen-finance-1": "antiddos.aliyuncs.com",
            "cn-shenzhen-inner": "antiddos.aliyuncs.com",
            "cn-shenzhen-st4-d01": "antiddos.aliyuncs.com",
            "cn-shenzhen-su18-b01": "antiddos.aliyuncs.com",
            "cn-wuhan": "antiddos.aliyuncs.com",
            "cn-wulanchabu": "antiddos-openapi.cn-wulanchabu.aliyuncs.com",
            "cn-yushanfang": "antiddos.aliyuncs.com",
            "cn-zhangbei": "antiddos.aliyuncs.com",
            "cn-zhangbei-na61-b01": "antiddos.aliyuncs.com",
            "cn-zhangjiakou": "antiddos-openapi.cn-zhangjiakou.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "antiddos.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "antiddos.aliyuncs.com",
            "eu-central-1": "antiddos-openapi.eu-central-1.aliyuncs.com",
            "eu-west-1": "antiddos-openapi.eu-west-1.aliyuncs.com",
            "eu-west-1-oxs": "antiddos.aliyuncs.com",
            "me-east-1": "antiddos-openapi.me-east-1.aliyuncs.com",
            "rus-west-1-pop": "antiddos.aliyuncs.com",
            "us-east-1": "antiddos.aliyuncs.com",
            "us-west-1": "antiddos.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("antiddos-public", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func describeBgpPackByIpWithOptions(_ request: DescribeBgpPackByIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBgpPackByIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBgpPackByIp",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBgpPackByIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBgpPackByIp(_ request: DescribeBgpPackByIpRequest) async throws -> DescribeBgpPackByIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBgpPackByIpWithOptions(request as! DescribeBgpPackByIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCapWithOptions(_ request: DescribeCapRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCapResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.begTime)) {
            query["BegTime"] = request.begTime!;
        }
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetIp)) {
            query["InternetIp"] = request.internetIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCap",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCapResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCap(_ request: DescribeCapRequest) async throws -> DescribeCapResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCapWithOptions(request as! DescribeCapRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDdosCountWithOptions(_ request: DescribeDdosCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDdosCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDdosCount",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDdosCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDdosCount(_ request: DescribeDdosCountRequest) async throws -> DescribeDdosCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDdosCountWithOptions(request as! DescribeDdosCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDdosCreditWithOptions(_ request: DescribeDdosCreditRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDdosCreditResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDdosCredit",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDdosCreditResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDdosCredit(_ request: DescribeDdosCreditRequest) async throws -> DescribeDdosCreditResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDdosCreditWithOptions(request as! DescribeDdosCreditRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDdosEventListWithOptions(_ request: DescribeDdosEventListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDdosEventListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetIp)) {
            query["InternetIp"] = request.internetIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDdosEventList",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDdosEventListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDdosEventList(_ request: DescribeDdosEventListRequest) async throws -> DescribeDdosEventListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDdosEventListWithOptions(request as! DescribeDdosEventListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDdosThresholdWithOptions(_ request: DescribeDdosThresholdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDdosThresholdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ddosType)) {
            query["DdosType"] = request.ddosType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDdosThreshold",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDdosThresholdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDdosThreshold(_ request: DescribeDdosThresholdRequest) async throws -> DescribeDdosThresholdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDdosThresholdWithOptions(request as! DescribeDdosThresholdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceWithOptions(_ request: DescribeInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ddosStatus)) {
            query["DdosStatus"] = request.ddosStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIp)) {
            query["InstanceIp"] = request.instanceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstance",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstance(_ request: DescribeInstanceRequest) async throws -> DescribeInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceWithOptions(request as! DescribeInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceIpAddressWithOptions(_ request: DescribeInstanceIpAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceIpAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ddosStatus)) {
            query["DdosStatus"] = request.ddosStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIp)) {
            query["InstanceIp"] = request.instanceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceIpAddress",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceIpAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceIpAddress(_ request: DescribeInstanceIpAddressRequest) async throws -> DescribeInstanceIpAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceIpAddressWithOptions(request as! DescribeInstanceIpAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpDdosThresholdWithOptions(_ request: DescribeIpDdosThresholdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIpDdosThresholdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ddosType)) {
            query["DdosType"] = request.ddosType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetIp)) {
            query["InternetIp"] = request.internetIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIpDdosThreshold",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIpDdosThresholdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpDdosThreshold(_ request: DescribeIpDdosThresholdRequest) async throws -> DescribeIpDdosThresholdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIpDdosThresholdWithOptions(request as! DescribeIpDdosThresholdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpLocationServiceWithOptions(_ request: DescribeIpLocationServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIpLocationServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.internetIp)) {
            query["InternetIp"] = request.internetIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIpLocationService",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIpLocationServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpLocationService(_ request: DescribeIpLocationServiceRequest) async throws -> DescribeIpLocationServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIpLocationServiceWithOptions(request as! DescribeIpLocationServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2017-05-18",
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
    public func modifyDefenseThresholdWithOptions(_ request: ModifyDefenseThresholdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDefenseThresholdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bps)) {
            query["Bps"] = request.bps!;
        }
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetIp)) {
            query["InternetIp"] = request.internetIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAuto)) {
            query["IsAuto"] = request.isAuto!;
        }
        if (!TeaUtils.Client.isUnset(request.pps)) {
            query["Pps"] = request.pps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDefenseThreshold",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDefenseThresholdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseThreshold(_ request: ModifyDefenseThresholdRequest) async throws -> ModifyDefenseThresholdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDefenseThresholdWithOptions(request as! ModifyDefenseThresholdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyIpDefenseThresholdWithOptions(_ request: ModifyIpDefenseThresholdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyIpDefenseThresholdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bps)) {
            query["Bps"] = request.bps!;
        }
        if (!TeaUtils.Client.isUnset(request.ddosRegionId)) {
            query["DdosRegionId"] = request.ddosRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internetIp)) {
            query["InternetIp"] = request.internetIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAuto)) {
            query["IsAuto"] = request.isAuto!;
        }
        if (!TeaUtils.Client.isUnset(request.pps)) {
            query["Pps"] = request.pps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyIpDefenseThreshold",
            "version": "2017-05-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyIpDefenseThresholdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyIpDefenseThreshold(_ request: ModifyIpDefenseThresholdRequest) async throws -> ModifyIpDefenseThresholdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyIpDefenseThresholdWithOptions(request as! ModifyIpDefenseThresholdRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
