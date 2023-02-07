import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._signatureAlgorithm = "v2"
        self._endpointRule = "central"
        self._endpointMap = [
            "cn-beijing": "adcp.cn-beijing.aliyuncs.com",
            "cn-zhangjiakou": "adcp.cn-zhangjiakou.aliyuncs.com",
            "cn-hangzhou": "adcp.cn-hangzhou.aliyuncs.com",
            "cn-shanghai": "adcp.cn-shanghai.aliyuncs.com",
            "cn-shenzhen": "adcp.cn-shenzhen.aliyuncs.com",
            "cn-heyuan": "adcp.cn-heyuan.aliyuncs.com",
            "cn-hongkong": "adcp.cn-hongkong.aliyuncs.com",
            "ap-northeast-1": "adcp.ap-northeast-1.aliyuncs.com",
            "ap-southeast-1": "adcp.ap-southeast-1.aliyuncs.com",
            "ap-southeast-5": "adcp.ap-southeast-5.aliyuncs.com",
            "ap-south-1": "adcp.ap-south-1.aliyuncs.com",
            "ap-southeast-2": "adcp.ap-southeast-2.aliyuncs.com",
            "ap-southeast-3": "adcp.ap-southeast-3.aliyuncs.com",
            "cn-chengdu": "adcp-vpc.cn-chengdu.aliyuncs.com",
            "cn-huhehaote": "adcp.cn-huhehaote.aliyuncs.com",
            "cn-qingdao": "adcp.cn-qingdao.aliyuncs.com",
            "cn-shanghai-finance-1": "adcp-vpc.cn-shanghai-finance-1.aliyuncs.com",
            "cn-wulanchabu": "adcp.cn-wulanchabu.aliyuncs.com",
            "eu-central-1": "adcp.eu-central-1.aliyuncs.com",
            "eu-west-1": "adcp-vpc.eu-west-1.aliyuncs.com",
            "me-east-1": "adcp.me-east-1.aliyuncs.com",
            "us-east-1": "adcp.us-east-1.aliyuncs.com",
            "us-west-1": "adcp.us-west-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("adcp", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func attachClusterToHubWithOptions(_ request: AttachClusterToHubRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachClusterToHubResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attachToMesh)) {
            query["AttachToMesh"] = request.attachToMesh!;
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterIds)) {
            body["ClusterIds"] = request.clusterIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachClusterToHub",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachClusterToHubResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachClusterToHub(_ request: AttachClusterToHubRequest) async throws -> AttachClusterToHubResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachClusterToHubWithOptions(request as! AttachClusterToHubRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHubClusterWithOptions(_ request: CreateHubClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHubClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiServerPublicEip)) {
            body["ApiServerPublicEip"] = request.apiServerPublicEip!;
        }
        if (!TeaUtils.Client.isUnset(request.argoServerEnabled)) {
            body["ArgoServerEnabled"] = request.argoServerEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.auditLogEnabled)) {
            body["AuditLogEnabled"] = request.auditLogEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.isEnterpriseSecurityGroup)) {
            body["IsEnterpriseSecurityGroup"] = request.isEnterpriseSecurityGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priceLimit)) {
            body["PriceLimit"] = request.priceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profile)) {
            body["Profile"] = request.profile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitches)) {
            body["VSwitches"] = request.vSwitches ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            body["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowScheduleMode)) {
            body["WorkflowScheduleMode"] = request.workflowScheduleMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHubCluster",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHubClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHubCluster(_ request: CreateHubClusterRequest) async throws -> CreateHubClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHubClusterWithOptions(request as! CreateHubClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHubClusterWithOptions(_ tmpReq: DeleteHubClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHubClusterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteHubClusterShrinkRequest = DeleteHubClusterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.retainResources)) {
            request.retainResourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.retainResources, "RetainResources", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.retainResourcesShrink)) {
            query["RetainResources"] = request.retainResourcesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHubCluster",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHubClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHubCluster(_ request: DeleteHubClusterRequest) async throws -> DeleteHubClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteHubClusterWithOptions(request as! DeleteHubClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHubClusterDetailsWithOptions(_ request: DescribeHubClusterDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHubClusterDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHubClusterDetails",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHubClusterDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHubClusterDetails(_ request: DescribeHubClusterDetailsRequest) async throws -> DescribeHubClusterDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHubClusterDetailsWithOptions(request as! DescribeHubClusterDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHubClusterKubeconfigWithOptions(_ request: DescribeHubClusterKubeconfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHubClusterKubeconfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateIpAddress)) {
            query["PrivateIpAddress"] = request.privateIpAddress!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHubClusterKubeconfig",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHubClusterKubeconfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHubClusterKubeconfig(_ request: DescribeHubClusterKubeconfigRequest) async throws -> DescribeHubClusterKubeconfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHubClusterKubeconfigWithOptions(request as! DescribeHubClusterKubeconfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHubClusterLogsWithOptions(_ request: DescribeHubClusterLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHubClusterLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHubClusterLogs",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHubClusterLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHubClusterLogs(_ request: DescribeHubClusterLogsRequest) async throws -> DescribeHubClusterLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHubClusterLogsWithOptions(request as! DescribeHubClusterLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHubClustersWithOptions(_ request: DescribeHubClustersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHubClustersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.profile)) {
            query["Profile"] = request.profile ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHubClusters",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHubClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHubClusters(_ request: DescribeHubClustersRequest) async throws -> DescribeHubClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHubClustersWithOptions(request as! DescribeHubClustersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeManagedClustersWithOptions(_ request: DescribeManagedClustersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeManagedClustersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeManagedClusters",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeManagedClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeManagedClusters(_ request: DescribeManagedClustersRequest) async throws -> DescribeManagedClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeManagedClustersWithOptions(request as! DescribeManagedClustersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
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
    public func detachClusterFromHubWithOptions(_ request: DetachClusterFromHubRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachClusterFromHubResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detachFromMesh)) {
            query["DetachFromMesh"] = request.detachFromMesh!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterIds)) {
            body["ClusterIds"] = request.clusterIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachClusterFromHub",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachClusterFromHubResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachClusterFromHub(_ request: DetachClusterFromHubRequest) async throws -> DetachClusterFromHubResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachClusterFromHubWithOptions(request as! DetachClusterFromHubRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHubClusterFeatureWithOptions(_ tmpReq: UpdateHubClusterFeatureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHubClusterFeatureResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateHubClusterFeatureShrinkRequest = UpdateHubClusterFeatureShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.vSwitches)) {
            request.vSwitchesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.vSwitches, "VSwitches", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiServerEipId)) {
            query["ApiServerEipId"] = request.apiServerEipId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.argoCDEnabled)) {
            query["ArgoCDEnabled"] = request.argoCDEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.argoServerEnabled)) {
            query["ArgoServerEnabled"] = request.argoServerEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.auditLogEnabled)) {
            query["AuditLogEnabled"] = request.auditLogEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deletionProtection)) {
            query["DeletionProtection"] = request.deletionProtection!;
        }
        if (!TeaUtils.Client.isUnset(request.enableMesh)) {
            query["EnableMesh"] = request.enableMesh!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priceLimit)) {
            query["PriceLimit"] = request.priceLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicApiServerEnabled)) {
            query["PublicApiServerEnabled"] = request.publicApiServerEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchesShrink)) {
            query["VSwitches"] = request.vSwitchesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowScheduleMode)) {
            query["WorkflowScheduleMode"] = request.workflowScheduleMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHubClusterFeature",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHubClusterFeatureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHubClusterFeature(_ request: UpdateHubClusterFeatureRequest) async throws -> UpdateHubClusterFeatureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateHubClusterFeatureWithOptions(request as! UpdateHubClusterFeatureRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
