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
        self._endpoint = try getEndpoint("mseap", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func activateLicenseWithOptions(_ request: ActivateLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ActivateLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseCode)) {
            query["LicenseCode"] = request.licenseCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseNo)) {
            query["LicenseNo"] = request.licenseNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licensePublisher)) {
            query["LicensePublisher"] = request.licensePublisher ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActivateLicense",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActivateLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activateLicense(_ request: ActivateLicenseRequest) async throws -> ActivateLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await activateLicenseWithOptions(request as! ActivateLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func callbackTaskWithOptions(_ request: CallbackTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CallbackTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizCode)) {
            query["BizCode"] = request.bizCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outTaskId)) {
            query["OutTaskId"] = request.outTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalKey)) {
            query["PrincipalKey"] = request.principalKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskData)) {
            query["TaskData"] = request.taskData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerSecurityTransport)) {
            query["UserCallerSecurityTransport"] = request.userCallerSecurityTransport!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CallbackTask",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CallbackTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func callbackTask(_ request: CallbackTaskRequest) async throws -> CallbackTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await callbackTaskWithOptions(request as! CallbackTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAgreementStatusWithOptions(_ request: DescribeAgreementStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAgreementStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreementCode)) {
            query["AgreementCode"] = request.agreementCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAgreementStatus",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAgreementStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAgreementStatus(_ request: DescribeAgreementStatusRequest) async throws -> DescribeAgreementStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAgreementStatusWithOptions(request as! DescribeAgreementStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateUploadFilePolicyForPartnerWithOptions(_ request: GenerateUploadFilePolicyForPartnerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateUploadFilePolicyForPartnerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            query["FileType"] = request.fileType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateUploadFilePolicyForPartner",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateUploadFilePolicyForPartnerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateUploadFilePolicyForPartner(_ request: GenerateUploadFilePolicyForPartnerRequest) async throws -> GenerateUploadFilePolicyForPartnerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateUploadFilePolicyForPartnerWithOptions(request as! GenerateUploadFilePolicyForPartnerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeByFlowIdWithOptions(_ request: GetNodeByFlowIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeByFlowIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            query["FlowId"] = request.flowId!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerSecurityTransport)) {
            query["UserCallerSecurityTransport"] = request.userCallerSecurityTransport!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeByFlowId",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeByFlowIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeByFlowId(_ request: GetNodeByFlowIdRequest) async throws -> GetNodeByFlowIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeByFlowIdWithOptions(request as! GetNodeByFlowIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeByTemplateIdWithOptions(_ request: GetNodeByTemplateIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNodeByTemplateIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerSecurityTransport)) {
            query["UserCallerSecurityTransport"] = request.userCallerSecurityTransport!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNodeByTemplateId",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNodeByTemplateIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNodeByTemplateId(_ request: GetNodeByTemplateIdRequest) async throws -> GetNodeByTemplateIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNodeByTemplateIdWithOptions(request as! GetNodeByTemplateIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProxyByTypeWithOptions(_ request: GetProxyByTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProxyByTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerSecurityTransport)) {
            query["UserCallerSecurityTransport"] = request.userCallerSecurityTransport!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProxyByType",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProxyByTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProxyByType(_ request: GetProxyByTypeRequest) async throws -> GetProxyByTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProxyByTypeWithOptions(request as! GetProxyByTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRedisValueWithOptions(_ request: GetRedisValueRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRedisValueResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerSecurityTransport)) {
            query["UserCallerSecurityTransport"] = request.userCallerSecurityTransport!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            query["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRedisValue",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRedisValueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRedisValue(_ request: GetRedisValueRequest) async throws -> GetRedisValueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRedisValueWithOptions(request as! GetRedisValueRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVariableWithOptions(_ request: GetVariableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVariableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerSecurityTransport)) {
            query["UserCallerSecurityTransport"] = request.userCallerSecurityTransport!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVariable",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVariableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVariable(_ request: GetVariableRequest) async throws -> GetVariableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVariableWithOptions(request as! GetVariableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func identifyCodeWithOptions(_ request: IdentifyCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IdentifyCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            query["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerSecurityTransport)) {
            query["UserCallerSecurityTransport"] = request.userCallerSecurityTransport!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IdentifyCode",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IdentifyCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func identifyCode(_ request: IdentifyCodeRequest) async throws -> IdentifyCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await identifyCodeWithOptions(request as! IdentifyCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pullRpaModelWithOptions(_ request: PullRpaModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PullRpaModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PullRpaModel",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PullRpaModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pullRpaModel(_ request: PullRpaModelRequest) async throws -> PullRpaModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pullRpaModelWithOptions(request as! PullRpaModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pullTaskWithOptions(_ request: PullTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PullTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizCode)) {
            query["BizCode"] = request.bizCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalKey)) {
            query["PrincipalKey"] = request.principalKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerSecurityTransport)) {
            query["UserCallerSecurityTransport"] = request.userCallerSecurityTransport!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PullTask",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PullTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pullTask(_ request: PullTaskRequest) async throws -> PullTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pullTaskWithOptions(request as! PullTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushRpaTaskWithOptions(_ request: PushRpaTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushRpaTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["ModelId"] = request.modelId!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.request)) {
            query["Request"] = request.request ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushRpaTask",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushRpaTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushRpaTask(_ request: PushRpaTaskRequest) async throws -> PushRpaTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushRpaTaskWithOptions(request as! PushRpaTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushRpaTaskDetailWithOptions(_ request: PushRpaTaskDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushRpaTaskDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputData)) {
            query["InputData"] = request.inputData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputHtml)) {
            query["InputHtml"] = request.inputHtml ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputScreenshot)) {
            query["InputScreenshot"] = request.inputScreenshot ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelDetailId)) {
            query["ModelDetailId"] = request.modelDetailId!;
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputData)) {
            query["OutputData"] = request.outputData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputHtml)) {
            query["OutputHtml"] = request.outputHtml ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputScreenshot)) {
            query["OutputScreenshot"] = request.outputScreenshot ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.taskDetailId)) {
            query["TaskDetailId"] = request.taskDetailId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushRpaTaskDetail",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushRpaTaskDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushRpaTaskDetail(_ request: PushRpaTaskDetailRequest) async throws -> PushRpaTaskDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushRpaTaskDetailWithOptions(request as! PushRpaTaskDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendNotificationForPartnerWithOptions(_ tmpReq: SendNotificationForPartnerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendNotificationForPartnerResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendNotificationForPartnerShrinkRequest = SendNotificationForPartnerShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.paramMap)) {
            request.paramMapShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.paramMap, "ParamMap", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.smartSubChannels)) {
            request.smartSubChannelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.smartSubChannels, "SmartSubChannels", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelType)) {
            query["ChannelType"] = request.channelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyType)) {
            query["NotifyType"] = request.notifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifycationEventType)) {
            query["NotifycationEventType"] = request.notifycationEventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramMapShrink)) {
            query["ParamMap"] = request.paramMapShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendTarget)) {
            query["SendTarget"] = request.sendTarget ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smartSubChannelsShrink)) {
            query["SmartSubChannels"] = request.smartSubChannelsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trackId)) {
            query["TrackId"] = request.trackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendNotificationForPartner",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendNotificationForPartnerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendNotificationForPartner(_ request: SendNotificationForPartnerRequest) async throws -> SendNotificationForPartnerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendNotificationForPartnerWithOptions(request as! SendNotificationForPartnerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setRedisValueWithOptions(_ request: SetRedisValueRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetRedisValueResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalRequest)) {
            query["OriginalRequest"] = request.originalRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.userAccessKeyId)) {
            query["UserAccessKeyId"] = request.userAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userBid)) {
            query["UserBid"] = request.userBid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCallerParentId)) {
            query["UserCallerParentId"] = request.userCallerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.userCallerType)) {
            query["UserCallerType"] = request.userCallerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userKp)) {
            query["UserKp"] = request.userKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMfaPresent)) {
            query["UserMfaPresent"] = request.userMfaPresent!;
        }
        if (!TeaUtils.Client.isUnset(request.userSecurityToken)) {
            query["UserSecurityToken"] = request.userSecurityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            query["Value"] = request.value ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetRedisValue",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetRedisValueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setRedisValue(_ request: SetRedisValueRequest) async throws -> SetRedisValueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setRedisValueWithOptions(request as! SetRedisValueRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgreementStatusWithOptions(_ request: UpdateAgreementStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAgreementStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreementCode)) {
            query["AgreementCode"] = request.agreementCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAgreementStatus",
            "version": "2021-01-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAgreementStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgreementStatus(_ request: UpdateAgreementStatusRequest) async throws -> UpdateAgreementStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAgreementStatusWithOptions(request as! UpdateAgreementStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
