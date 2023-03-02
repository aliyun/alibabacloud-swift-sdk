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
            "ap-northeast-1": "ltl.aliyuncs.com",
            "ap-northeast-2-pop": "ltl.aliyuncs.com",
            "ap-south-1": "ltl.aliyuncs.com",
            "ap-southeast-1": "ltl.aliyuncs.com",
            "ap-southeast-2": "ltl.aliyuncs.com",
            "ap-southeast-3": "ltl.aliyuncs.com",
            "ap-southeast-5": "ltl.aliyuncs.com",
            "cn-beijing": "ltl.aliyuncs.com",
            "cn-beijing-finance-1": "ltl.aliyuncs.com",
            "cn-beijing-finance-pop": "ltl.aliyuncs.com",
            "cn-beijing-gov-1": "ltl.aliyuncs.com",
            "cn-beijing-nu16-b01": "ltl.aliyuncs.com",
            "cn-chengdu": "ltl.aliyuncs.com",
            "cn-edge-1": "ltl.aliyuncs.com",
            "cn-fujian": "ltl.aliyuncs.com",
            "cn-haidian-cm12-c01": "ltl.aliyuncs.com",
            "cn-hangzhou-bj-b01": "ltl.aliyuncs.com",
            "cn-hangzhou-finance": "ltl.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "ltl.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "ltl.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "ltl.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "ltl.aliyuncs.com",
            "cn-hangzhou-test-306": "ltl.aliyuncs.com",
            "cn-hongkong": "ltl.aliyuncs.com",
            "cn-hongkong-finance-pop": "ltl.aliyuncs.com",
            "cn-huhehaote": "ltl.aliyuncs.com",
            "cn-huhehaote-nebula-1": "ltl.aliyuncs.com",
            "cn-north-2-gov-1": "ltl.aliyuncs.com",
            "cn-qingdao": "ltl.aliyuncs.com",
            "cn-qingdao-nebula": "ltl.aliyuncs.com",
            "cn-shanghai-et15-b01": "ltl.aliyuncs.com",
            "cn-shanghai-et2-b01": "ltl.aliyuncs.com",
            "cn-shanghai-finance-1": "ltl.aliyuncs.com",
            "cn-shanghai-inner": "ltl.aliyuncs.com",
            "cn-shanghai-internal-test-1": "ltl.aliyuncs.com",
            "cn-shenzhen": "ltl.aliyuncs.com",
            "cn-shenzhen-finance-1": "ltl.aliyuncs.com",
            "cn-shenzhen-inner": "ltl.aliyuncs.com",
            "cn-shenzhen-st4-d01": "ltl.aliyuncs.com",
            "cn-shenzhen-su18-b01": "ltl.aliyuncs.com",
            "cn-wuhan": "ltl.aliyuncs.com",
            "cn-wulanchabu": "ltl.aliyuncs.com",
            "cn-yushanfang": "ltl.aliyuncs.com",
            "cn-zhangbei": "ltl.aliyuncs.com",
            "cn-zhangbei-na61-b01": "ltl.aliyuncs.com",
            "cn-zhangjiakou": "ltl.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "ltl.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "ltl.aliyuncs.com",
            "eu-central-1": "ltl.aliyuncs.com",
            "eu-west-1": "ltl.aliyuncs.com",
            "eu-west-1-oxs": "ltl.aliyuncs.com",
            "me-east-1": "ltl.aliyuncs.com",
            "rus-west-1-pop": "ltl.aliyuncs.com",
            "us-east-1": "ltl.aliyuncs.com",
            "us-west-1": "ltl.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("ltl", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func applyDataModelConfigInfoWithOptions(_ request: ApplyDataModelConfigInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyDataModelConfigInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            query["Configuration"] = request.configuration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataModelCode)) {
            query["DataModelCode"] = request.dataModelCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyDataModelConfigInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyDataModelConfigInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyDataModelConfigInfo(_ request: ApplyDataModelConfigInfoRequest) async throws -> ApplyDataModelConfigInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyDataModelConfigInfoWithOptions(request as! ApplyDataModelConfigInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDataWithOptions(_ request: AttachDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessId)) {
            query["BusinessId"] = request.businessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            query["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachData",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachData(_ request: AttachDataRequest) async throws -> AttachDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachDataWithOptions(request as! AttachDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDataWithSignatureWithOptions(_ request: AttachDataWithSignatureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachDataWithSignatureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessId)) {
            query["BusinessId"] = request.businessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotAuthType)) {
            query["IotAuthType"] = request.iotAuthType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotDataDigest)) {
            query["IotDataDigest"] = request.iotDataDigest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdServiceProvider)) {
            query["IotIdServiceProvider"] = request.iotIdServiceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdSource)) {
            query["IotIdSource"] = request.iotIdSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotSignature)) {
            query["IotSignature"] = request.iotSignature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            query["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachDataWithSignature",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachDataWithSignatureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDataWithSignature(_ request: AttachDataWithSignatureRequest) async throws -> AttachDataWithSignatureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachDataWithSignatureWithOptions(request as! AttachDataWithSignatureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeDeviceWithOptions(_ request: AuthorizeDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceGroupId)) {
            query["DeviceGroupId"] = request.deviceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeDevice",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeDevice(_ request: AuthorizeDeviceRequest) async throws -> AuthorizeDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authorizeDeviceWithOptions(request as! AuthorizeDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeDeviceGroupWithOptions(_ request: AuthorizeDeviceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeDeviceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceGroupId)) {
            query["DeviceGroupId"] = request.deviceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeDeviceGroup",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeDeviceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeDeviceGroup(_ request: AuthorizeDeviceGroupRequest) async throws -> AuthorizeDeviceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authorizeDeviceGroupWithOptions(request as! AuthorizeDeviceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUploadMPCoSPhaseDigestInfoWithOptions(_ tmpReq: BatchUploadMPCoSPhaseDigestInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchUploadMPCoSPhaseDigestInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchUploadMPCoSPhaseDigestInfoShrinkRequest = BatchUploadMPCoSPhaseDigestInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.phaseDataList)) {
            request.phaseDataListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.phaseDataList, "PhaseDataList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseDataListShrink)) {
            query["PhaseDataList"] = request.phaseDataListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchUploadMPCoSPhaseDigestInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchUploadMPCoSPhaseDigestInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUploadMPCoSPhaseDigestInfo(_ request: BatchUploadMPCoSPhaseDigestInfoRequest) async throws -> BatchUploadMPCoSPhaseDigestInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchUploadMPCoSPhaseDigestInfoWithOptions(request as! BatchUploadMPCoSPhaseDigestInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUploadMPCoSPhaseDigestInfoByDeviceWithOptions(_ tmpReq: BatchUploadMPCoSPhaseDigestInfoByDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchUploadMPCoSPhaseDigestInfoByDeviceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchUploadMPCoSPhaseDigestInfoByDeviceShrinkRequest = BatchUploadMPCoSPhaseDigestInfoByDeviceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.phaseDataList)) {
            request.phaseDataListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.phaseDataList, "PhaseDataList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotAuthType)) {
            query["IotAuthType"] = request.iotAuthType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotDataDigest)) {
            query["IotDataDigest"] = request.iotDataDigest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdServiceProvider)) {
            query["IotIdServiceProvider"] = request.iotIdServiceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdSource)) {
            query["IotIdSource"] = request.iotIdSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotSignature)) {
            query["IotSignature"] = request.iotSignature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseDataListShrink)) {
            query["PhaseDataList"] = request.phaseDataListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchUploadMPCoSPhaseDigestInfoByDevice",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchUploadMPCoSPhaseDigestInfoByDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUploadMPCoSPhaseDigestInfoByDevice(_ request: BatchUploadMPCoSPhaseDigestInfoByDeviceRequest) async throws -> BatchUploadMPCoSPhaseDigestInfoByDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchUploadMPCoSPhaseDigestInfoByDeviceWithOptions(request as! BatchUploadMPCoSPhaseDigestInfoByDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUploadMPCoSPhaseTextInfoWithOptions(_ tmpReq: BatchUploadMPCoSPhaseTextInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchUploadMPCoSPhaseTextInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchUploadMPCoSPhaseTextInfoShrinkRequest = BatchUploadMPCoSPhaseTextInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.phaseDataList)) {
            request.phaseDataListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.phaseDataList, "PhaseDataList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseDataListShrink)) {
            query["PhaseDataList"] = request.phaseDataListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchUploadMPCoSPhaseTextInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchUploadMPCoSPhaseTextInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUploadMPCoSPhaseTextInfo(_ request: BatchUploadMPCoSPhaseTextInfoRequest) async throws -> BatchUploadMPCoSPhaseTextInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchUploadMPCoSPhaseTextInfoWithOptions(request as! BatchUploadMPCoSPhaseTextInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUploadMPCoSPhaseTextInfoByDeviceWithOptions(_ tmpReq: BatchUploadMPCoSPhaseTextInfoByDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchUploadMPCoSPhaseTextInfoByDeviceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchUploadMPCoSPhaseTextInfoByDeviceShrinkRequest = BatchUploadMPCoSPhaseTextInfoByDeviceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.phaseDataList)) {
            request.phaseDataListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.phaseDataList, "PhaseDataList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotAuthType)) {
            query["IotAuthType"] = request.iotAuthType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotDataDigest)) {
            query["IotDataDigest"] = request.iotDataDigest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdServiceProvider)) {
            query["IotIdServiceProvider"] = request.iotIdServiceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdSource)) {
            query["IotIdSource"] = request.iotIdSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotSignature)) {
            query["IotSignature"] = request.iotSignature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseDataListShrink)) {
            query["PhaseDataList"] = request.phaseDataListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchUploadMPCoSPhaseTextInfoByDevice",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchUploadMPCoSPhaseTextInfoByDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUploadMPCoSPhaseTextInfoByDevice(_ request: BatchUploadMPCoSPhaseTextInfoByDeviceRequest) async throws -> BatchUploadMPCoSPhaseTextInfoByDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchUploadMPCoSPhaseTextInfoByDeviceWithOptions(request as! BatchUploadMPCoSPhaseTextInfoByDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMPCoSPhaseWithOptions(_ request: CreateMPCoSPhaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMPCoSPhaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMPCoSPhase",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMPCoSPhaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMPCoSPhase(_ request: CreateMPCoSPhaseRequest) async throws -> CreateMPCoSPhaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMPCoSPhaseWithOptions(request as! CreateMPCoSPhaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMPCoSPhaseGroupWithOptions(_ request: CreateMPCoSPhaseGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMPCoSPhaseGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMPCoSPhaseGroup",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMPCoSPhaseGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMPCoSPhaseGroup(_ request: CreateMPCoSPhaseGroupRequest) async throws -> CreateMPCoSPhaseGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMPCoSPhaseGroupWithOptions(request as! CreateMPCoSPhaseGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMemberWithOptions(_ request: CreateMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberContact)) {
            query["MemberContact"] = request.memberContact ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberName)) {
            query["MemberName"] = request.memberName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberPhone)) {
            query["MemberPhone"] = request.memberPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberUid)) {
            query["MemberUid"] = request.memberUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMember",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMember(_ request: CreateMemberRequest) async throws -> CreateMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMemberWithOptions(request as! CreateMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCapacityInfoWithOptions(_ request: DescribeCapacityInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCapacityInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCapacityInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCapacityInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCapacityInfo(_ request: DescribeCapacityInfoRequest) async throws -> DescribeCapacityInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCapacityInfoWithOptions(request as! DescribeCapacityInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMPCoSAuthorizedInfoWithOptions(_ request: DescribeMPCoSAuthorizedInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMPCoSAuthorizedInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberId)) {
            query["MemberId"] = request.memberId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMPCoSAuthorizedInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMPCoSAuthorizedInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMPCoSAuthorizedInfo(_ request: DescribeMPCoSAuthorizedInfoRequest) async throws -> DescribeMPCoSAuthorizedInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMPCoSAuthorizedInfoWithOptions(request as! DescribeMPCoSAuthorizedInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMPCoSPhaseInfoWithOptions(_ request: DescribeMPCoSPhaseInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMPCoSPhaseInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataKey)) {
            query["DataKey"] = request.dataKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSeq)) {
            query["DataSeq"] = request.dataSeq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMPCoSPhaseInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMPCoSPhaseInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMPCoSPhaseInfo(_ request: DescribeMPCoSPhaseInfoRequest) async throws -> DescribeMPCoSPhaseInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMPCoSPhaseInfoWithOptions(request as! DescribeMPCoSPhaseInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMPCoSResourceInfoWithOptions(_ request: DescribeMPCoSResourceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMPCoSResourceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMPCoSResourceInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMPCoSResourceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMPCoSResourceInfo(_ request: DescribeMPCoSResourceInfoRequest) async throws -> DescribeMPCoSResourceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMPCoSResourceInfoWithOptions(request as! DescribeMPCoSResourceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMemberCapacityInfoWithOptions(_ request: DescribeMemberCapacityInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMemberCapacityInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMemberCapacityInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMemberCapacityInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMemberCapacityInfo(_ request: DescribeMemberCapacityInfoRequest) async throws -> DescribeMemberCapacityInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMemberCapacityInfoWithOptions(request as! DescribeMemberCapacityInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceInfoWithOptions(_ request: DescribeResourceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceInfo(_ request: DescribeResourceInfoRequest) async throws -> DescribeResourceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceInfoWithOptions(request as! DescribeResourceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBlockChainInfoWithOptions(_ request: GetBlockChainInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBlockChainInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessId)) {
            query["BusinessId"] = request.businessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBlockChainInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBlockChainInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBlockChainInfo(_ request: GetBlockChainInfoRequest) async throws -> GetBlockChainInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBlockChainInfoWithOptions(request as! GetBlockChainInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataWithOptions(_ request: GetDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessId)) {
            query["BusinessId"] = request.businessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetData",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getData(_ request: GetDataRequest) async throws -> GetDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataWithOptions(request as! GetDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataModelConfigInfoWithOptions(_ request: GetDataModelConfigInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataModelConfigInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataModelCode)) {
            query["DataModelCode"] = request.dataModelCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataModelConfigInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataModelConfigInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataModelConfigInfo(_ request: GetDataModelConfigInfoRequest) async throws -> GetDataModelConfigInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataModelConfigInfoWithOptions(request as! GetDataModelConfigInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHistoryDataCountWithOptions(_ request: GetHistoryDataCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHistoryDataCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHistoryDataCount",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHistoryDataCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHistoryDataCount(_ request: GetHistoryDataCountRequest) async throws -> GetHistoryDataCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getHistoryDataCountWithOptions(request as! GetHistoryDataCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHistoryDataListWithOptions(_ request: GetHistoryDataListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHistoryDataListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHistoryDataList",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHistoryDataListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHistoryDataList(_ request: GetHistoryDataListRequest) async throws -> GetHistoryDataListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getHistoryDataListWithOptions(request as! GetHistoryDataListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDependentDataModelsWithOptions(_ request: ListDependentDataModelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDependentDataModelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDependentDataModels",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDependentDataModelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDependentDataModels(_ request: ListDependentDataModelsRequest) async throws -> ListDependentDataModelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDependentDataModelsWithOptions(request as! ListDependentDataModelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceWithOptions(_ request: ListDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceGroupId)) {
            query["DeviceGroupId"] = request.deviceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.num)) {
            query["Num"] = request.num!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDevice",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDevice(_ request: ListDeviceRequest) async throws -> ListDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDeviceWithOptions(request as! ListDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceGroupWithOptions(_ request: ListDeviceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeviceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.num)) {
            query["Num"] = request.num!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeviceGroup",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeviceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeviceGroup(_ request: ListDeviceGroupRequest) async throws -> ListDeviceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDeviceGroupWithOptions(request as! ListDeviceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMPCoSPhaseWithOptions(_ request: ListMPCoSPhaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMPCoSPhaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.num)) {
            query["Num"] = request.num!;
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMPCoSPhase",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMPCoSPhaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMPCoSPhase(_ request: ListMPCoSPhaseRequest) async throws -> ListMPCoSPhaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMPCoSPhaseWithOptions(request as! ListMPCoSPhaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMPCoSPhaseGroupWithOptions(_ request: ListMPCoSPhaseGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMPCoSPhaseGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.num)) {
            query["Num"] = request.num!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMPCoSPhaseGroup",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMPCoSPhaseGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMPCoSPhaseGroup(_ request: ListMPCoSPhaseGroupRequest) async throws -> ListMPCoSPhaseGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMPCoSPhaseGroupWithOptions(request as! ListMPCoSPhaseGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMPCoSPhaseHistoryWithOptions(_ request: ListMPCoSPhaseHistoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMPCoSPhaseHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataKey)) {
            query["DataKey"] = request.dataKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.num)) {
            query["Num"] = request.num!;
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMPCoSPhaseHistory",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMPCoSPhaseHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMPCoSPhaseHistory(_ request: ListMPCoSPhaseHistoryRequest) async throws -> ListMPCoSPhaseHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMPCoSPhaseHistoryWithOptions(request as! ListMPCoSPhaseHistoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMemberWithOptions(_ request: ListMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberUid)) {
            query["MemberUid"] = request.memberUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.num)) {
            query["Num"] = request.num!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMember",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMember(_ request: ListMemberRequest) async throws -> ListMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMemberWithOptions(request as! ListMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultiPartyCollaborationChainWithOptions(_ request: ListMultiPartyCollaborationChainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMultiPartyCollaborationChainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.num)) {
            query["Num"] = request.num!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMultiPartyCollaborationChain",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMultiPartyCollaborationChainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultiPartyCollaborationChain(_ request: ListMultiPartyCollaborationChainRequest) async throws -> ListMultiPartyCollaborationChainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMultiPartyCollaborationChainWithOptions(request as! ListMultiPartyCollaborationChainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPSMemberDataTypeCodeWithOptions(_ request: ListPSMemberDataTypeCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPSMemberDataTypeCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberUid)) {
            query["MemberUid"] = request.memberUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.num)) {
            query["Num"] = request.num!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPSMemberDataTypeCode",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPSMemberDataTypeCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPSMemberDataTypeCode(_ request: ListPSMemberDataTypeCodeRequest) async throws -> ListPSMemberDataTypeCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPSMemberDataTypeCodeWithOptions(request as! ListPSMemberDataTypeCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProofChainWithOptions(_ request: ListProofChainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProofChainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.num)) {
            query["Num"] = request.num!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            query["Size"] = request.size!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProofChain",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProofChainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProofChain(_ request: ListProofChainRequest) async throws -> ListProofChainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProofChainWithOptions(request as! ListProofChainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockMemberWithOptions(_ request: LockMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LockMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberId)) {
            query["MemberId"] = request.memberId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LockMember",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LockMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockMember(_ request: LockMemberRequest) async throws -> LockMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await lockMemberWithOptions(request as! LockMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMPCoSPhaseWithOptions(_ request: ModifyMPCoSPhaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyMPCoSPhaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyMPCoSPhase",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyMPCoSPhaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMPCoSPhase(_ request: ModifyMPCoSPhaseRequest) async throws -> ModifyMPCoSPhaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyMPCoSPhaseWithOptions(request as! ModifyMPCoSPhaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMPCoSPhaseGroupWithOptions(_ request: ModifyMPCoSPhaseGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyMPCoSPhaseGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyMPCoSPhaseGroup",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyMPCoSPhaseGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMPCoSPhaseGroup(_ request: ModifyMPCoSPhaseGroupRequest) async throws -> ModifyMPCoSPhaseGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyMPCoSPhaseGroupWithOptions(request as! ModifyMPCoSPhaseGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMemberWithOptions(_ request: ModifyMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberContact)) {
            query["MemberContact"] = request.memberContact ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberId)) {
            query["MemberId"] = request.memberId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberName)) {
            query["MemberName"] = request.memberName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberPhone)) {
            query["MemberPhone"] = request.memberPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberUid)) {
            query["MemberUid"] = request.memberUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyMember",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMember(_ request: ModifyMemberRequest) async throws -> ModifyMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyMemberWithOptions(request as! ModifyMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerDeviceGroupWithOptions(_ request: RegisterDeviceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterDeviceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizeType)) {
            query["AuthorizeType"] = request.authorizeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceGroupName)) {
            query["DeviceGroupName"] = request.deviceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterDeviceGroup",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterDeviceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerDeviceGroup(_ request: RegisterDeviceGroupRequest) async throws -> RegisterDeviceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerDeviceGroupWithOptions(request as! RegisterDeviceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDataWithOptions(_ request: SetDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            query["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetData",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setData(_ request: SetDataRequest) async throws -> SetDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDataWithOptions(request as! SetDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDataWithSignatureWithOptions(_ request: SetDataWithSignatureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDataWithSignatureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotAuthType)) {
            query["IotAuthType"] = request.iotAuthType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotDataDigest)) {
            query["IotDataDigest"] = request.iotDataDigest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdServiceProvider)) {
            query["IotIdServiceProvider"] = request.iotIdServiceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdSource)) {
            query["IotIdSource"] = request.iotIdSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotSignature)) {
            query["IotSignature"] = request.iotSignature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["ProductKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            query["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDataWithSignature",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDataWithSignatureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDataWithSignature(_ request: SetDataWithSignatureRequest) async throws -> SetDataWithSignatureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDataWithSignatureWithOptions(request as! SetDataWithSignatureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unAuthorizeDeviceWithOptions(_ request: UnAuthorizeDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnAuthorizeDeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceGroupId)) {
            query["DeviceGroupId"] = request.deviceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnAuthorizeDevice",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnAuthorizeDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unAuthorizeDevice(_ request: UnAuthorizeDeviceRequest) async throws -> UnAuthorizeDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unAuthorizeDeviceWithOptions(request as! UnAuthorizeDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unAuthorizeDeviceGroupWithOptions(_ request: UnAuthorizeDeviceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnAuthorizeDeviceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceGroupId)) {
            query["DeviceGroupId"] = request.deviceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnAuthorizeDeviceGroup",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnAuthorizeDeviceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unAuthorizeDeviceGroup(_ request: UnAuthorizeDeviceGroupRequest) async throws -> UnAuthorizeDeviceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unAuthorizeDeviceGroupWithOptions(request as! UnAuthorizeDeviceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unLockMemberWithOptions(_ request: UnLockMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnLockMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberId)) {
            query["MemberId"] = request.memberId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnLockMember",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnLockMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unLockMember(_ request: UnLockMemberRequest) async throws -> UnLockMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unLockMemberWithOptions(request as! UnLockMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMPCoSAuthorizedInfoWithOptions(_ tmpReq: UpdateMPCoSAuthorizedInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMPCoSAuthorizedInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateMPCoSAuthorizedInfoShrinkRequest = UpdateMPCoSAuthorizedInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.authorizedPhaseList)) {
            request.authorizedPhaseListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.authorizedPhaseList, "AuthorizedPhaseList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizedPhaseListShrink)) {
            query["AuthorizedPhaseList"] = request.authorizedPhaseListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberId)) {
            query["MemberId"] = request.memberId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMPCoSAuthorizedInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMPCoSAuthorizedInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMPCoSAuthorizedInfo(_ request: UpdateMPCoSAuthorizedInfoRequest) async throws -> UpdateMPCoSAuthorizedInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMPCoSAuthorizedInfoWithOptions(request as! UpdateMPCoSAuthorizedInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMPCoSPhaseDigestInfoWithOptions(_ tmpReq: UploadMPCoSPhaseDigestInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadMPCoSPhaseDigestInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UploadMPCoSPhaseDigestInfoShrinkRequest = UploadMPCoSPhaseDigestInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.relatedDataList)) {
            request.relatedDataListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedDataList, "RelatedDataList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataKey)) {
            query["DataKey"] = request.dataKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSeq)) {
            query["DataSeq"] = request.dataSeq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseData)) {
            query["PhaseData"] = request.phaseData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDataListShrink)) {
            query["RelatedDataList"] = request.relatedDataListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadMPCoSPhaseDigestInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadMPCoSPhaseDigestInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMPCoSPhaseDigestInfo(_ request: UploadMPCoSPhaseDigestInfoRequest) async throws -> UploadMPCoSPhaseDigestInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadMPCoSPhaseDigestInfoWithOptions(request as! UploadMPCoSPhaseDigestInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMPCoSPhaseDigestInfoByDeviceWithOptions(_ tmpReq: UploadMPCoSPhaseDigestInfoByDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadMPCoSPhaseDigestInfoByDeviceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UploadMPCoSPhaseDigestInfoByDeviceShrinkRequest = UploadMPCoSPhaseDigestInfoByDeviceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.relatedDataList)) {
            request.relatedDataListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedDataList, "RelatedDataList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataKey)) {
            query["DataKey"] = request.dataKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSeq)) {
            query["DataSeq"] = request.dataSeq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotAuthType)) {
            query["IotAuthType"] = request.iotAuthType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotDataDigest)) {
            query["IotDataDigest"] = request.iotDataDigest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdServiceProvider)) {
            query["IotIdServiceProvider"] = request.iotIdServiceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdSource)) {
            query["IotIdSource"] = request.iotIdSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotSignature)) {
            query["IotSignature"] = request.iotSignature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseData)) {
            query["PhaseData"] = request.phaseData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDataListShrink)) {
            query["RelatedDataList"] = request.relatedDataListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadMPCoSPhaseDigestInfoByDevice",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadMPCoSPhaseDigestInfoByDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMPCoSPhaseDigestInfoByDevice(_ request: UploadMPCoSPhaseDigestInfoByDeviceRequest) async throws -> UploadMPCoSPhaseDigestInfoByDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadMPCoSPhaseDigestInfoByDeviceWithOptions(request as! UploadMPCoSPhaseDigestInfoByDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMPCoSPhaseTextInfoWithOptions(_ tmpReq: UploadMPCoSPhaseTextInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadMPCoSPhaseTextInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UploadMPCoSPhaseTextInfoShrinkRequest = UploadMPCoSPhaseTextInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.relatedDataList)) {
            request.relatedDataListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedDataList, "RelatedDataList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataKey)) {
            query["DataKey"] = request.dataKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSeq)) {
            query["DataSeq"] = request.dataSeq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseData)) {
            query["PhaseData"] = request.phaseData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDataListShrink)) {
            query["RelatedDataList"] = request.relatedDataListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadMPCoSPhaseTextInfo",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadMPCoSPhaseTextInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMPCoSPhaseTextInfo(_ request: UploadMPCoSPhaseTextInfoRequest) async throws -> UploadMPCoSPhaseTextInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadMPCoSPhaseTextInfoWithOptions(request as! UploadMPCoSPhaseTextInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMPCoSPhaseTextInfoByDeviceWithOptions(_ tmpReq: UploadMPCoSPhaseTextInfoByDeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadMPCoSPhaseTextInfoByDeviceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UploadMPCoSPhaseTextInfoByDeviceShrinkRequest = UploadMPCoSPhaseTextInfoByDeviceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.relatedDataList)) {
            request.relatedDataListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.relatedDataList, "RelatedDataList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizChainId)) {
            query["BizChainId"] = request.bizChainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataKey)) {
            query["DataKey"] = request.dataKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSeq)) {
            query["DataSeq"] = request.dataSeq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotAuthType)) {
            query["IotAuthType"] = request.iotAuthType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotDataDigest)) {
            query["IotDataDigest"] = request.iotDataDigest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotId)) {
            query["IotId"] = request.iotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdServiceProvider)) {
            query["IotIdServiceProvider"] = request.iotIdServiceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotIdSource)) {
            query["IotIdSource"] = request.iotIdSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iotSignature)) {
            query["IotSignature"] = request.iotSignature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseData)) {
            query["PhaseData"] = request.phaseData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseGroupId)) {
            query["PhaseGroupId"] = request.phaseGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phaseId)) {
            query["PhaseId"] = request.phaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDataListShrink)) {
            query["RelatedDataList"] = request.relatedDataListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadMPCoSPhaseTextInfoByDevice",
            "version": "2019-05-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadMPCoSPhaseTextInfoByDeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadMPCoSPhaseTextInfoByDevice(_ request: UploadMPCoSPhaseTextInfoByDeviceRequest) async throws -> UploadMPCoSPhaseTextInfoByDeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadMPCoSPhaseTextInfoByDeviceWithOptions(request as! UploadMPCoSPhaseTextInfoByDeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
