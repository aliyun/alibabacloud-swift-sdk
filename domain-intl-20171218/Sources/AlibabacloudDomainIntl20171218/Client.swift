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
        self._endpoint = try getEndpoint("domain-intl", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func acknowledgeTaskResultWithOptions(_ request: AcknowledgeTaskResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AcknowledgeTaskResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDetailNo)) {
            query["TaskDetailNo"] = request.taskDetailNo ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AcknowledgeTaskResult",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AcknowledgeTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acknowledgeTaskResult(_ request: AcknowledgeTaskResultRequest) async throws -> AcknowledgeTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await acknowledgeTaskResultWithOptions(request as! AcknowledgeTaskResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchFuzzyMatchDomainSensitiveWordWithOptions(_ request: BatchFuzzyMatchDomainSensitiveWordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchFuzzyMatchDomainSensitiveWordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchFuzzyMatchDomainSensitiveWord",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchFuzzyMatchDomainSensitiveWordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchFuzzyMatchDomainSensitiveWord(_ request: BatchFuzzyMatchDomainSensitiveWordRequest) async throws -> BatchFuzzyMatchDomainSensitiveWordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchFuzzyMatchDomainSensitiveWordWithOptions(request as! BatchFuzzyMatchDomainSensitiveWordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelDomainVerificationWithOptions(_ request: CancelDomainVerificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelDomainVerificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionType)) {
            query["ActionType"] = request.actionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelDomainVerification",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelDomainVerificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelDomainVerification(_ request: CancelDomainVerificationRequest) async throws -> CancelDomainVerificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelDomainVerificationWithOptions(request as! CancelDomainVerificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelTaskWithOptions(_ request: CancelTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskNo)) {
            query["TaskNo"] = request.taskNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelTask",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelTask(_ request: CancelTaskRequest) async throws -> CancelTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelTaskWithOptions(request as! CancelTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDomainWithOptions(_ request: CheckDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.feeCommand)) {
            query["FeeCommand"] = request.feeCommand ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.feeCurrency)) {
            query["FeeCurrency"] = request.feeCurrency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.feePeriod)) {
            query["FeePeriod"] = request.feePeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDomain",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDomain(_ request: CheckDomainRequest) async throws -> CheckDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDomainWithOptions(request as! CheckDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDomainSunriseClaimWithOptions(_ request: CheckDomainSunriseClaimRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDomainSunriseClaimResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDomainSunriseClaim",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDomainSunriseClaimResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDomainSunriseClaim(_ request: CheckDomainSunriseClaimRequest) async throws -> CheckDomainSunriseClaimResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDomainSunriseClaimWithOptions(request as! CheckDomainSunriseClaimRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkTransferInFeasibilityWithOptions(_ request: CheckTransferInFeasibilityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckTransferInFeasibilityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transferAuthorizationCode)) {
            query["TransferAuthorizationCode"] = request.transferAuthorizationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckTransferInFeasibility",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckTransferInFeasibilityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkTransferInFeasibility(_ request: CheckTransferInFeasibilityRequest) async throws -> CheckTransferInFeasibilityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkTransferInFeasibilityWithOptions(request as! CheckTransferInFeasibilityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmTransferInEmailWithOptions(_ request: ConfirmTransferInEmailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmTransferInEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmTransferInEmail",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmTransferInEmailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmTransferInEmail(_ request: ConfirmTransferInEmailRequest) async throws -> ConfirmTransferInEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmTransferInEmailWithOptions(request as! ConfirmTransferInEmailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEmailVerificationWithOptions(_ request: DeleteEmailVerificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEmailVerificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEmailVerification",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEmailVerificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEmailVerification(_ request: DeleteEmailVerificationRequest) async throws -> DeleteEmailVerificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEmailVerificationWithOptions(request as! DeleteEmailVerificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRegistrantProfileWithOptions(_ request: DeleteRegistrantProfileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRegistrantProfileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileId)) {
            query["RegistrantProfileId"] = request.registrantProfileId!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRegistrantProfile",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRegistrantProfileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRegistrantProfile(_ request: DeleteRegistrantProfileRequest) async throws -> DeleteRegistrantProfileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRegistrantProfileWithOptions(request as! DeleteRegistrantProfileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func emailVerifiedWithOptions(_ request: EmailVerifiedRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EmailVerifiedResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EmailVerified",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EmailVerifiedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func emailVerified(_ request: EmailVerifiedRequest) async throws -> EmailVerifiedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await emailVerifiedWithOptions(request as! EmailVerifiedRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fuzzyMatchDomainSensitiveWordWithOptions(_ request: FuzzyMatchDomainSensitiveWordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FuzzyMatchDomainSensitiveWordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FuzzyMatchDomainSensitiveWord",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FuzzyMatchDomainSensitiveWordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fuzzyMatchDomainSensitiveWord(_ request: FuzzyMatchDomainSensitiveWordRequest) async throws -> FuzzyMatchDomainSensitiveWordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await fuzzyMatchDomainSensitiveWordWithOptions(request as! FuzzyMatchDomainSensitiveWordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEmailVerificationWithOptions(_ request: ListEmailVerificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEmailVerificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginCreateTime)) {
            query["BeginCreateTime"] = request.beginCreateTime!;
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endCreateTime)) {
            query["EndCreateTime"] = request.endCreateTime!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verificationStatus)) {
            query["VerificationStatus"] = request.verificationStatus!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEmailVerification",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEmailVerificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEmailVerification(_ request: ListEmailVerificationRequest) async throws -> ListEmailVerificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEmailVerificationWithOptions(request as! ListEmailVerificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lookupTmchNoticeWithOptions(_ request: LookupTmchNoticeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LookupTmchNoticeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.claimKey)) {
            query["ClaimKey"] = request.claimKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LookupTmchNotice",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LookupTmchNoticeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lookupTmchNotice(_ request: LookupTmchNoticeRequest) async throws -> LookupTmchNoticeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await lookupTmchNoticeWithOptions(request as! LookupTmchNoticeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pollTaskResultWithOptions(_ request: PollTaskResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PollTaskResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.taskNo)) {
            query["TaskNo"] = request.taskNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskResultStatus)) {
            query["TaskResultStatus"] = request.taskResultStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PollTaskResult",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PollTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pollTaskResult(_ request: PollTaskResultRequest) async throws -> PollTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pollTaskResultWithOptions(request as! PollTaskResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryArtExtensionWithOptions(_ request: QueryArtExtensionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryArtExtensionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryArtExtension",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryArtExtensionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryArtExtension(_ request: QueryArtExtensionRequest) async throws -> QueryArtExtensionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryArtExtensionWithOptions(request as! QueryArtExtensionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChangeLogListWithOptions(_ request: QueryChangeLogListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryChangeLogListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryChangeLogList",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryChangeLogListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChangeLogList(_ request: QueryChangeLogListRequest) async throws -> QueryChangeLogListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryChangeLogListWithOptions(request as! QueryChangeLogListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryContactInfoWithOptions(_ request: QueryContactInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryContactInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contactType)) {
            query["ContactType"] = request.contactType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryContactInfo",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryContactInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryContactInfo(_ request: QueryContactInfoRequest) async throws -> QueryContactInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryContactInfoWithOptions(request as! QueryContactInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDSRecordWithOptions(_ request: QueryDSRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDSRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDSRecord",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDSRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDSRecord(_ request: QueryDSRecordRequest) async throws -> QueryDSRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDSRecordWithOptions(request as! QueryDSRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDnsHostWithOptions(_ request: QueryDnsHostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDnsHostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDnsHost",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDnsHostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDnsHost(_ request: QueryDnsHostRequest) async throws -> QueryDnsHostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDnsHostWithOptions(request as! QueryDnsHostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainByDomainNameWithOptions(_ request: QueryDomainByDomainNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDomainByDomainNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDomainByDomainName",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDomainByDomainNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainByDomainName(_ request: QueryDomainByDomainNameRequest) async throws -> QueryDomainByDomainNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDomainByDomainNameWithOptions(request as! QueryDomainByDomainNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainByInstanceIdWithOptions(_ request: QueryDomainByInstanceIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDomainByInstanceIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDomainByInstanceId",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDomainByInstanceIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainByInstanceId(_ request: QueryDomainByInstanceIdRequest) async throws -> QueryDomainByInstanceIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDomainByInstanceIdWithOptions(request as! QueryDomainByInstanceIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainListWithOptions(_ request: QueryDomainListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDomainListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ccompany)) {
            query["Ccompany"] = request.ccompany ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endExpirationDate)) {
            query["EndExpirationDate"] = request.endExpirationDate!;
        }
        if (!TeaUtils.Client.isUnset(request.endRegistrationDate)) {
            query["EndRegistrationDate"] = request.endRegistrationDate!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderByType)) {
            query["OrderByType"] = request.orderByType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderKeyType)) {
            query["OrderKeyType"] = request.orderKeyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productDomainType)) {
            query["ProductDomainType"] = request.productDomainType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startExpirationDate)) {
            query["StartExpirationDate"] = request.startExpirationDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startRegistrationDate)) {
            query["StartRegistrationDate"] = request.startRegistrationDate!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDomainList",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDomainListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainList(_ request: QueryDomainListRequest) async throws -> QueryDomainListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDomainListWithOptions(request as! QueryDomainListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainRealNameVerificationInfoWithOptions(_ request: QueryDomainRealNameVerificationInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDomainRealNameVerificationInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fetchImage)) {
            query["FetchImage"] = request.fetchImage!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDomainRealNameVerificationInfo",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDomainRealNameVerificationInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainRealNameVerificationInfo(_ request: QueryDomainRealNameVerificationInfoRequest) async throws -> QueryDomainRealNameVerificationInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDomainRealNameVerificationInfoWithOptions(request as! QueryDomainRealNameVerificationInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEnsAssociationWithOptions(_ request: QueryEnsAssociationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEnsAssociationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEnsAssociation",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEnsAssociationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEnsAssociation(_ request: QueryEnsAssociationRequest) async throws -> QueryEnsAssociationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEnsAssociationWithOptions(request as! QueryEnsAssociationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFailReasonForDomainRealNameVerificationWithOptions(_ request: QueryFailReasonForDomainRealNameVerificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFailReasonForDomainRealNameVerificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realNameVerificationAction)) {
            query["RealNameVerificationAction"] = request.realNameVerificationAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFailReasonForDomainRealNameVerification",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFailReasonForDomainRealNameVerificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFailReasonForDomainRealNameVerification(_ request: QueryFailReasonForDomainRealNameVerificationRequest) async throws -> QueryFailReasonForDomainRealNameVerificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFailReasonForDomainRealNameVerificationWithOptions(request as! QueryFailReasonForDomainRealNameVerificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFailReasonForRegistrantProfileRealNameVerificationWithOptions(_ request: QueryFailReasonForRegistrantProfileRealNameVerificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFailReasonForRegistrantProfileRealNameVerificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileID)) {
            query["RegistrantProfileID"] = request.registrantProfileID!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFailReasonForRegistrantProfileRealNameVerification",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFailReasonForRegistrantProfileRealNameVerificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFailReasonForRegistrantProfileRealNameVerification(_ request: QueryFailReasonForRegistrantProfileRealNameVerificationRequest) async throws -> QueryFailReasonForRegistrantProfileRealNameVerificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFailReasonForRegistrantProfileRealNameVerificationWithOptions(request as! QueryFailReasonForRegistrantProfileRealNameVerificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLocalEnsAssociationWithOptions(_ request: QueryLocalEnsAssociationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLocalEnsAssociationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLocalEnsAssociation",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLocalEnsAssociationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLocalEnsAssociation(_ request: QueryLocalEnsAssociationRequest) async throws -> QueryLocalEnsAssociationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryLocalEnsAssociationWithOptions(request as! QueryLocalEnsAssociationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRegistrantProfileRealNameVerificationInfoWithOptions(_ request: QueryRegistrantProfileRealNameVerificationInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRegistrantProfileRealNameVerificationInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fetchImage)) {
            query["FetchImage"] = request.fetchImage!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileId)) {
            query["RegistrantProfileId"] = request.registrantProfileId!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRegistrantProfileRealNameVerificationInfo",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRegistrantProfileRealNameVerificationInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRegistrantProfileRealNameVerificationInfo(_ request: QueryRegistrantProfileRealNameVerificationInfoRequest) async throws -> QueryRegistrantProfileRealNameVerificationInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRegistrantProfileRealNameVerificationInfoWithOptions(request as! QueryRegistrantProfileRealNameVerificationInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRegistrantProfilesWithOptions(_ request: QueryRegistrantProfilesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRegistrantProfilesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defaultRegistrantProfile)) {
            query["DefaultRegistrantProfile"] = request.defaultRegistrantProfile!;
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.realNameStatus)) {
            query["RealNameStatus"] = request.realNameStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantOrganization)) {
            query["RegistrantOrganization"] = request.registrantOrganization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileId)) {
            query["RegistrantProfileId"] = request.registrantProfileId!;
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileType)) {
            query["RegistrantProfileType"] = request.registrantProfileType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantType)) {
            query["RegistrantType"] = request.registrantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRegistrantProfiles",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRegistrantProfilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRegistrantProfiles(_ request: QueryRegistrantProfilesRequest) async throws -> QueryRegistrantProfilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRegistrantProfilesWithOptions(request as! QueryRegistrantProfilesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskDetailHistoryWithOptions(_ request: QueryTaskDetailHistoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTaskDetailHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainNameCursor)) {
            query["DomainNameCursor"] = request.domainNameCursor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.taskDetailNoCursor)) {
            query["TaskDetailNoCursor"] = request.taskDetailNoCursor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskNo)) {
            query["TaskNo"] = request.taskNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            query["TaskStatus"] = request.taskStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTaskDetailHistory",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTaskDetailHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskDetailHistory(_ request: QueryTaskDetailHistoryRequest) async throws -> QueryTaskDetailHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTaskDetailHistoryWithOptions(request as! QueryTaskDetailHistoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskDetailListWithOptions(_ request: QueryTaskDetailListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTaskDetailListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.taskNo)) {
            query["TaskNo"] = request.taskNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            query["TaskStatus"] = request.taskStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTaskDetailList",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTaskDetailListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskDetailList(_ request: QueryTaskDetailListRequest) async throws -> QueryTaskDetailListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTaskDetailListWithOptions(request as! QueryTaskDetailListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskInfoHistoryWithOptions(_ request: QueryTaskInfoHistoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTaskInfoHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginCreateTime)) {
            query["BeginCreateTime"] = request.beginCreateTime!;
        }
        if (!TeaUtils.Client.isUnset(request.createTimeCursor)) {
            query["CreateTimeCursor"] = request.createTimeCursor!;
        }
        if (!TeaUtils.Client.isUnset(request.endCreateTime)) {
            query["EndCreateTime"] = request.endCreateTime!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.taskNoCursor)) {
            query["TaskNoCursor"] = request.taskNoCursor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTaskInfoHistory",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTaskInfoHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskInfoHistory(_ request: QueryTaskInfoHistoryRequest) async throws -> QueryTaskInfoHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTaskInfoHistoryWithOptions(request as! QueryTaskInfoHistoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskListWithOptions(_ request: QueryTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginCreateTime)) {
            query["BeginCreateTime"] = request.beginCreateTime!;
        }
        if (!TeaUtils.Client.isUnset(request.endCreateTime)) {
            query["EndCreateTime"] = request.endCreateTime!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTaskList",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskList(_ request: QueryTaskListRequest) async throws -> QueryTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTaskListWithOptions(request as! QueryTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTransferInByInstanceIdWithOptions(_ request: QueryTransferInByInstanceIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTransferInByInstanceIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTransferInByInstanceId",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTransferInByInstanceIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTransferInByInstanceId(_ request: QueryTransferInByInstanceIdRequest) async throws -> QueryTransferInByInstanceIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTransferInByInstanceIdWithOptions(request as! QueryTransferInByInstanceIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTransferInListWithOptions(_ request: QueryTransferInListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTransferInListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.simpleTransferInStatus)) {
            query["SimpleTransferInStatus"] = request.simpleTransferInStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.submissionEndDate)) {
            query["SubmissionEndDate"] = request.submissionEndDate!;
        }
        if (!TeaUtils.Client.isUnset(request.submissionStartDate)) {
            query["SubmissionStartDate"] = request.submissionStartDate!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTransferInList",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTransferInListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTransferInList(_ request: QueryTransferInListRequest) async throws -> QueryTransferInListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTransferInListWithOptions(request as! QueryTransferInListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTransferOutInfoWithOptions(_ request: QueryTransferOutInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTransferOutInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTransferOutInfo",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTransferOutInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTransferOutInfo(_ request: QueryTransferOutInfoRequest) async throws -> QueryTransferOutInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTransferOutInfoWithOptions(request as! QueryTransferOutInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registrantProfileRealNameVerificationWithOptions(_ request: RegistrantProfileRealNameVerificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegistrantProfileRealNameVerificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identityCredentialNo)) {
            query["IdentityCredentialNo"] = request.identityCredentialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityCredentialType)) {
            query["IdentityCredentialType"] = request.identityCredentialType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileID)) {
            query["RegistrantProfileID"] = request.registrantProfileID!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identityCredential)) {
            body["IdentityCredential"] = request.identityCredential ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegistrantProfileRealNameVerification",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegistrantProfileRealNameVerificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registrantProfileRealNameVerification(_ request: RegistrantProfileRealNameVerificationRequest) async throws -> RegistrantProfileRealNameVerificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registrantProfileRealNameVerificationWithOptions(request as! RegistrantProfileRealNameVerificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resendEmailVerificationWithOptions(_ request: ResendEmailVerificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResendEmailVerificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResendEmailVerification",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResendEmailVerificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resendEmailVerification(_ request: ResendEmailVerificationRequest) async throws -> ResendEmailVerificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resendEmailVerificationWithOptions(request as! ResendEmailVerificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForCreatingOrderActivateWithOptions(_ request: SaveBatchTaskForCreatingOrderActivateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForCreatingOrderActivateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.couponNo)) {
            query["CouponNo"] = request.couponNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderActivateParam)) {
            query["OrderActivateParam"] = request.orderActivateParam ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.promotionNo)) {
            query["PromotionNo"] = request.promotionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useCoupon)) {
            query["UseCoupon"] = request.useCoupon!;
        }
        if (!TeaUtils.Client.isUnset(request.usePromotion)) {
            query["UsePromotion"] = request.usePromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForCreatingOrderActivate",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForCreatingOrderActivateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForCreatingOrderActivate(_ request: SaveBatchTaskForCreatingOrderActivateRequest) async throws -> SaveBatchTaskForCreatingOrderActivateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForCreatingOrderActivateWithOptions(request as! SaveBatchTaskForCreatingOrderActivateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForCreatingOrderRedeemWithOptions(_ request: SaveBatchTaskForCreatingOrderRedeemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForCreatingOrderRedeemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.couponNo)) {
            query["CouponNo"] = request.couponNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderRedeemParam)) {
            query["OrderRedeemParam"] = request.orderRedeemParam ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.promotionNo)) {
            query["PromotionNo"] = request.promotionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useCoupon)) {
            query["UseCoupon"] = request.useCoupon!;
        }
        if (!TeaUtils.Client.isUnset(request.usePromotion)) {
            query["UsePromotion"] = request.usePromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForCreatingOrderRedeem",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForCreatingOrderRedeemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForCreatingOrderRedeem(_ request: SaveBatchTaskForCreatingOrderRedeemRequest) async throws -> SaveBatchTaskForCreatingOrderRedeemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForCreatingOrderRedeemWithOptions(request as! SaveBatchTaskForCreatingOrderRedeemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForCreatingOrderRenewWithOptions(_ request: SaveBatchTaskForCreatingOrderRenewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForCreatingOrderRenewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.couponNo)) {
            query["CouponNo"] = request.couponNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderRenewParam)) {
            query["OrderRenewParam"] = request.orderRenewParam ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.promotionNo)) {
            query["PromotionNo"] = request.promotionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useCoupon)) {
            query["UseCoupon"] = request.useCoupon!;
        }
        if (!TeaUtils.Client.isUnset(request.usePromotion)) {
            query["UsePromotion"] = request.usePromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForCreatingOrderRenew",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForCreatingOrderRenewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForCreatingOrderRenew(_ request: SaveBatchTaskForCreatingOrderRenewRequest) async throws -> SaveBatchTaskForCreatingOrderRenewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForCreatingOrderRenewWithOptions(request as! SaveBatchTaskForCreatingOrderRenewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForCreatingOrderTransferWithOptions(_ request: SaveBatchTaskForCreatingOrderTransferRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForCreatingOrderTransferResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.couponNo)) {
            query["CouponNo"] = request.couponNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderTransferParam)) {
            query["OrderTransferParam"] = request.orderTransferParam ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.promotionNo)) {
            query["PromotionNo"] = request.promotionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useCoupon)) {
            query["UseCoupon"] = request.useCoupon!;
        }
        if (!TeaUtils.Client.isUnset(request.usePromotion)) {
            query["UsePromotion"] = request.usePromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForCreatingOrderTransfer",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForCreatingOrderTransferResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForCreatingOrderTransfer(_ request: SaveBatchTaskForCreatingOrderTransferRequest) async throws -> SaveBatchTaskForCreatingOrderTransferResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForCreatingOrderTransferWithOptions(request as! SaveBatchTaskForCreatingOrderTransferRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForDomainNameProxyServiceWithOptions(_ request: SaveBatchTaskForDomainNameProxyServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForDomainNameProxyServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForDomainNameProxyService",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForDomainNameProxyServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForDomainNameProxyService(_ request: SaveBatchTaskForDomainNameProxyServiceRequest) async throws -> SaveBatchTaskForDomainNameProxyServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForDomainNameProxyServiceWithOptions(request as! SaveBatchTaskForDomainNameProxyServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForModifyingDomainDnsWithOptions(_ request: SaveBatchTaskForModifyingDomainDnsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForModifyingDomainDnsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunDns)) {
            query["AliyunDns"] = request.aliyunDns!;
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.domainNameServer)) {
            query["DomainNameServer"] = request.domainNameServer ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForModifyingDomainDns",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForModifyingDomainDnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForModifyingDomainDns(_ request: SaveBatchTaskForModifyingDomainDnsRequest) async throws -> SaveBatchTaskForModifyingDomainDnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForModifyingDomainDnsWithOptions(request as! SaveBatchTaskForModifyingDomainDnsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForReserveDropListDomainWithOptions(_ request: SaveBatchTaskForReserveDropListDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForReserveDropListDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contactTemplateId)) {
            query["ContactTemplateId"] = request.contactTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domains)) {
            query["Domains"] = request.domains ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForReserveDropListDomain",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForReserveDropListDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForReserveDropListDomain(_ request: SaveBatchTaskForReserveDropListDomainRequest) async throws -> SaveBatchTaskForReserveDropListDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForReserveDropListDomainWithOptions(request as! SaveBatchTaskForReserveDropListDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForTransferProhibitionLockWithOptions(_ request: SaveBatchTaskForTransferProhibitionLockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForTransferProhibitionLockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForTransferProhibitionLock",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForTransferProhibitionLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForTransferProhibitionLock(_ request: SaveBatchTaskForTransferProhibitionLockRequest) async throws -> SaveBatchTaskForTransferProhibitionLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForTransferProhibitionLockWithOptions(request as! SaveBatchTaskForTransferProhibitionLockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForUpdateProhibitionLockWithOptions(_ request: SaveBatchTaskForUpdateProhibitionLockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForUpdateProhibitionLockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForUpdateProhibitionLock",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForUpdateProhibitionLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForUpdateProhibitionLock(_ request: SaveBatchTaskForUpdateProhibitionLockRequest) async throws -> SaveBatchTaskForUpdateProhibitionLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForUpdateProhibitionLockWithOptions(request as! SaveBatchTaskForUpdateProhibitionLockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForUpdatingContactInfoWithOptions(_ request: SaveBatchTaskForUpdatingContactInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForUpdatingContactInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addTransferLock)) {
            query["AddTransferLock"] = request.addTransferLock!;
        }
        if (!TeaUtils.Client.isUnset(request.contactType)) {
            query["ContactType"] = request.contactType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileId)) {
            query["RegistrantProfileId"] = request.registrantProfileId!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForUpdatingContactInfo",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForUpdatingContactInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForUpdatingContactInfo(_ request: SaveBatchTaskForUpdatingContactInfoRequest) async throws -> SaveBatchTaskForUpdatingContactInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForUpdatingContactInfoWithOptions(request as! SaveBatchTaskForUpdatingContactInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForUpdatingContactInfoByNewContactWithOptions(_ request: SaveBatchTaskForUpdatingContactInfoByNewContactRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveBatchTaskForUpdatingContactInfoByNewContactResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactType)) {
            query["ContactType"] = request.contactType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postalCode)) {
            query["PostalCode"] = request.postalCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantName)) {
            query["RegistrantName"] = request.registrantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantOrganization)) {
            query["RegistrantOrganization"] = request.registrantOrganization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telArea)) {
            query["TelArea"] = request.telArea ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telExt)) {
            query["TelExt"] = request.telExt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telephone)) {
            query["Telephone"] = request.telephone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transferOutProhibited)) {
            query["TransferOutProhibited"] = request.transferOutProhibited!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveBatchTaskForUpdatingContactInfoByNewContact",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveBatchTaskForUpdatingContactInfoByNewContactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveBatchTaskForUpdatingContactInfoByNewContact(_ request: SaveBatchTaskForUpdatingContactInfoByNewContactRequest) async throws -> SaveBatchTaskForUpdatingContactInfoByNewContactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveBatchTaskForUpdatingContactInfoByNewContactWithOptions(request as! SaveBatchTaskForUpdatingContactInfoByNewContactRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveRegistrantProfileWithOptions(_ request: SaveRegistrantProfileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveRegistrantProfileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultRegistrantProfile)) {
            query["DefaultRegistrantProfile"] = request.defaultRegistrantProfile!;
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postalCode)) {
            query["PostalCode"] = request.postalCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantName)) {
            query["RegistrantName"] = request.registrantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantOrganization)) {
            query["RegistrantOrganization"] = request.registrantOrganization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileId)) {
            query["RegistrantProfileId"] = request.registrantProfileId!;
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileType)) {
            query["RegistrantProfileType"] = request.registrantProfileType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantType)) {
            query["RegistrantType"] = request.registrantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telArea)) {
            query["TelArea"] = request.telArea ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telExt)) {
            query["TelExt"] = request.telExt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telephone)) {
            query["Telephone"] = request.telephone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveRegistrantProfile",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveRegistrantProfileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveRegistrantProfile(_ request: SaveRegistrantProfileRequest) async throws -> SaveRegistrantProfileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveRegistrantProfileWithOptions(request as! SaveRegistrantProfileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForAddingDSRecordWithOptions(_ request: SaveSingleTaskForAddingDSRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForAddingDSRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm!;
        }
        if (!TeaUtils.Client.isUnset(request.digest)) {
            query["Digest"] = request.digest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digestType)) {
            query["DigestType"] = request.digestType!;
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyTag)) {
            query["KeyTag"] = request.keyTag!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForAddingDSRecord",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForAddingDSRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForAddingDSRecord(_ request: SaveSingleTaskForAddingDSRecordRequest) async throws -> SaveSingleTaskForAddingDSRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForAddingDSRecordWithOptions(request as! SaveSingleTaskForAddingDSRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForApprovingTransferOutWithOptions(_ request: SaveSingleTaskForApprovingTransferOutRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForApprovingTransferOutResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForApprovingTransferOut",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForApprovingTransferOutResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForApprovingTransferOut(_ request: SaveSingleTaskForApprovingTransferOutRequest) async throws -> SaveSingleTaskForApprovingTransferOutResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForApprovingTransferOutWithOptions(request as! SaveSingleTaskForApprovingTransferOutRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForAssociatingEnsWithOptions(_ request: SaveSingleTaskForAssociatingEnsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForAssociatingEnsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForAssociatingEns",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForAssociatingEnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForAssociatingEns(_ request: SaveSingleTaskForAssociatingEnsRequest) async throws -> SaveSingleTaskForAssociatingEnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForAssociatingEnsWithOptions(request as! SaveSingleTaskForAssociatingEnsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCancelingTransferInWithOptions(_ request: SaveSingleTaskForCancelingTransferInRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForCancelingTransferInResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForCancelingTransferIn",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForCancelingTransferInResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCancelingTransferIn(_ request: SaveSingleTaskForCancelingTransferInRequest) async throws -> SaveSingleTaskForCancelingTransferInResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForCancelingTransferInWithOptions(request as! SaveSingleTaskForCancelingTransferInRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCancelingTransferOutWithOptions(_ request: SaveSingleTaskForCancelingTransferOutRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForCancelingTransferOutResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForCancelingTransferOut",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForCancelingTransferOutResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCancelingTransferOut(_ request: SaveSingleTaskForCancelingTransferOutRequest) async throws -> SaveSingleTaskForCancelingTransferOutResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForCancelingTransferOutWithOptions(request as! SaveSingleTaskForCancelingTransferOutRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCreatingDnsHostWithOptions(_ request: SaveSingleTaskForCreatingDnsHostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForCreatingDnsHostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dnsName)) {
            query["DnsName"] = request.dnsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForCreatingDnsHost",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForCreatingDnsHostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCreatingDnsHost(_ request: SaveSingleTaskForCreatingDnsHostRequest) async throws -> SaveSingleTaskForCreatingDnsHostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForCreatingDnsHostWithOptions(request as! SaveSingleTaskForCreatingDnsHostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCreatingOrderActivateWithOptions(_ request: SaveSingleTaskForCreatingOrderActivateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForCreatingOrderActivateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliyunDns)) {
            query["AliyunDns"] = request.aliyunDns!;
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.couponNo)) {
            query["CouponNo"] = request.couponNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dns1)) {
            query["Dns1"] = request.dns1 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dns2)) {
            query["Dns2"] = request.dns2 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableDomainProxy)) {
            query["EnableDomainProxy"] = request.enableDomainProxy!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permitPremiumActivation)) {
            query["PermitPremiumActivation"] = request.permitPremiumActivation!;
        }
        if (!TeaUtils.Client.isUnset(request.postalCode)) {
            query["PostalCode"] = request.postalCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionNo)) {
            query["PromotionNo"] = request.promotionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantName)) {
            query["RegistrantName"] = request.registrantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantOrganization)) {
            query["RegistrantOrganization"] = request.registrantOrganization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileId)) {
            query["RegistrantProfileId"] = request.registrantProfileId!;
        }
        if (!TeaUtils.Client.isUnset(request.registrantType)) {
            query["RegistrantType"] = request.registrantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionDuration)) {
            query["SubscriptionDuration"] = request.subscriptionDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.telArea)) {
            query["TelArea"] = request.telArea ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telExt)) {
            query["TelExt"] = request.telExt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telephone)) {
            query["Telephone"] = request.telephone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkDomainActivation)) {
            query["TrademarkDomainActivation"] = request.trademarkDomainActivation!;
        }
        if (!TeaUtils.Client.isUnset(request.useCoupon)) {
            query["UseCoupon"] = request.useCoupon!;
        }
        if (!TeaUtils.Client.isUnset(request.usePromotion)) {
            query["UsePromotion"] = request.usePromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForCreatingOrderActivate",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForCreatingOrderActivateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCreatingOrderActivate(_ request: SaveSingleTaskForCreatingOrderActivateRequest) async throws -> SaveSingleTaskForCreatingOrderActivateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForCreatingOrderActivateWithOptions(request as! SaveSingleTaskForCreatingOrderActivateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCreatingOrderRedeemWithOptions(_ request: SaveSingleTaskForCreatingOrderRedeemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForCreatingOrderRedeemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.couponNo)) {
            query["CouponNo"] = request.couponNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentExpirationDate)) {
            query["CurrentExpirationDate"] = request.currentExpirationDate!;
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionNo)) {
            query["PromotionNo"] = request.promotionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useCoupon)) {
            query["UseCoupon"] = request.useCoupon!;
        }
        if (!TeaUtils.Client.isUnset(request.usePromotion)) {
            query["UsePromotion"] = request.usePromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForCreatingOrderRedeem",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForCreatingOrderRedeemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCreatingOrderRedeem(_ request: SaveSingleTaskForCreatingOrderRedeemRequest) async throws -> SaveSingleTaskForCreatingOrderRedeemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForCreatingOrderRedeemWithOptions(request as! SaveSingleTaskForCreatingOrderRedeemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCreatingOrderRenewWithOptions(_ request: SaveSingleTaskForCreatingOrderRenewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForCreatingOrderRenewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.couponNo)) {
            query["CouponNo"] = request.couponNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentExpirationDate)) {
            query["CurrentExpirationDate"] = request.currentExpirationDate!;
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionNo)) {
            query["PromotionNo"] = request.promotionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionDuration)) {
            query["SubscriptionDuration"] = request.subscriptionDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.useCoupon)) {
            query["UseCoupon"] = request.useCoupon!;
        }
        if (!TeaUtils.Client.isUnset(request.usePromotion)) {
            query["UsePromotion"] = request.usePromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForCreatingOrderRenew",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForCreatingOrderRenewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCreatingOrderRenew(_ request: SaveSingleTaskForCreatingOrderRenewRequest) async throws -> SaveSingleTaskForCreatingOrderRenewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForCreatingOrderRenewWithOptions(request as! SaveSingleTaskForCreatingOrderRenewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCreatingOrderTransferWithOptions(_ request: SaveSingleTaskForCreatingOrderTransferRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForCreatingOrderTransferResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizationCode)) {
            query["AuthorizationCode"] = request.authorizationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.couponNo)) {
            query["CouponNo"] = request.couponNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permitPremiumTransfer)) {
            query["PermitPremiumTransfer"] = request.permitPremiumTransfer!;
        }
        if (!TeaUtils.Client.isUnset(request.promotionNo)) {
            query["PromotionNo"] = request.promotionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileId)) {
            query["RegistrantProfileId"] = request.registrantProfileId!;
        }
        if (!TeaUtils.Client.isUnset(request.useCoupon)) {
            query["UseCoupon"] = request.useCoupon!;
        }
        if (!TeaUtils.Client.isUnset(request.usePromotion)) {
            query["UsePromotion"] = request.usePromotion!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForCreatingOrderTransfer",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForCreatingOrderTransferResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForCreatingOrderTransfer(_ request: SaveSingleTaskForCreatingOrderTransferRequest) async throws -> SaveSingleTaskForCreatingOrderTransferResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForCreatingOrderTransferWithOptions(request as! SaveSingleTaskForCreatingOrderTransferRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForDeletingDSRecordWithOptions(_ request: SaveSingleTaskForDeletingDSRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForDeletingDSRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyTag)) {
            query["KeyTag"] = request.keyTag!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForDeletingDSRecord",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForDeletingDSRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForDeletingDSRecord(_ request: SaveSingleTaskForDeletingDSRecordRequest) async throws -> SaveSingleTaskForDeletingDSRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForDeletingDSRecordWithOptions(request as! SaveSingleTaskForDeletingDSRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForDeletingDnsHostWithOptions(_ request: SaveSingleTaskForDeletingDnsHostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForDeletingDnsHostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dnsName)) {
            query["DnsName"] = request.dnsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForDeletingDnsHost",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForDeletingDnsHostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForDeletingDnsHost(_ request: SaveSingleTaskForDeletingDnsHostRequest) async throws -> SaveSingleTaskForDeletingDnsHostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForDeletingDnsHostWithOptions(request as! SaveSingleTaskForDeletingDnsHostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForDisassociatingEnsWithOptions(_ request: SaveSingleTaskForDisassociatingEnsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForDisassociatingEnsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForDisassociatingEns",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForDisassociatingEnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForDisassociatingEns(_ request: SaveSingleTaskForDisassociatingEnsRequest) async throws -> SaveSingleTaskForDisassociatingEnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForDisassociatingEnsWithOptions(request as! SaveSingleTaskForDisassociatingEnsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForDomainNameProxyServiceWithOptions(_ request: SaveSingleTaskForDomainNameProxyServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForDomainNameProxyServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForDomainNameProxyService",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForDomainNameProxyServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForDomainNameProxyService(_ request: SaveSingleTaskForDomainNameProxyServiceRequest) async throws -> SaveSingleTaskForDomainNameProxyServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForDomainNameProxyServiceWithOptions(request as! SaveSingleTaskForDomainNameProxyServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForModifyingDSRecordWithOptions(_ request: SaveSingleTaskForModifyingDSRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForModifyingDSRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm!;
        }
        if (!TeaUtils.Client.isUnset(request.digest)) {
            query["Digest"] = request.digest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digestType)) {
            query["DigestType"] = request.digestType!;
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyTag)) {
            query["KeyTag"] = request.keyTag!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForModifyingDSRecord",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForModifyingDSRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForModifyingDSRecord(_ request: SaveSingleTaskForModifyingDSRecordRequest) async throws -> SaveSingleTaskForModifyingDSRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForModifyingDSRecordWithOptions(request as! SaveSingleTaskForModifyingDSRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForModifyingDnsHostWithOptions(_ request: SaveSingleTaskForModifyingDnsHostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForModifyingDnsHostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dnsName)) {
            query["DnsName"] = request.dnsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForModifyingDnsHost",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForModifyingDnsHostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForModifyingDnsHost(_ request: SaveSingleTaskForModifyingDnsHostRequest) async throws -> SaveSingleTaskForModifyingDnsHostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForModifyingDnsHostWithOptions(request as! SaveSingleTaskForModifyingDnsHostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForQueryingTransferAuthorizationCodeWithOptions(_ request: SaveSingleTaskForQueryingTransferAuthorizationCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForQueryingTransferAuthorizationCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForQueryingTransferAuthorizationCode",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForQueryingTransferAuthorizationCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForQueryingTransferAuthorizationCode(_ request: SaveSingleTaskForQueryingTransferAuthorizationCodeRequest) async throws -> SaveSingleTaskForQueryingTransferAuthorizationCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForQueryingTransferAuthorizationCodeWithOptions(request as! SaveSingleTaskForQueryingTransferAuthorizationCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForSaveArtExtensionWithOptions(_ request: SaveSingleTaskForSaveArtExtensionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForSaveArtExtensionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateOrPeriod)) {
            query["DateOrPeriod"] = request.dateOrPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dimensions)) {
            query["Dimensions"] = request.dimensions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.features)) {
            query["Features"] = request.features ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inscriptionsAndMarkings)) {
            query["InscriptionsAndMarkings"] = request.inscriptionsAndMarkings ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maker)) {
            query["Maker"] = request.maker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialsAndTechniques)) {
            query["MaterialsAndTechniques"] = request.materialsAndTechniques ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            query["ObjectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reference)) {
            query["Reference"] = request.reference ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            query["Subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForSaveArtExtension",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForSaveArtExtensionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForSaveArtExtension(_ request: SaveSingleTaskForSaveArtExtensionRequest) async throws -> SaveSingleTaskForSaveArtExtensionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForSaveArtExtensionWithOptions(request as! SaveSingleTaskForSaveArtExtensionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForSynchronizingDSRecordWithOptions(_ request: SaveSingleTaskForSynchronizingDSRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForSynchronizingDSRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForSynchronizingDSRecord",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForSynchronizingDSRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForSynchronizingDSRecord(_ request: SaveSingleTaskForSynchronizingDSRecordRequest) async throws -> SaveSingleTaskForSynchronizingDSRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForSynchronizingDSRecordWithOptions(request as! SaveSingleTaskForSynchronizingDSRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForSynchronizingDnsHostWithOptions(_ request: SaveSingleTaskForSynchronizingDnsHostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForSynchronizingDnsHostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForSynchronizingDnsHost",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForSynchronizingDnsHostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForSynchronizingDnsHost(_ request: SaveSingleTaskForSynchronizingDnsHostRequest) async throws -> SaveSingleTaskForSynchronizingDnsHostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForSynchronizingDnsHostWithOptions(request as! SaveSingleTaskForSynchronizingDnsHostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForTransferProhibitionLockWithOptions(_ request: SaveSingleTaskForTransferProhibitionLockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForTransferProhibitionLockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForTransferProhibitionLock",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForTransferProhibitionLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForTransferProhibitionLock(_ request: SaveSingleTaskForTransferProhibitionLockRequest) async throws -> SaveSingleTaskForTransferProhibitionLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForTransferProhibitionLockWithOptions(request as! SaveSingleTaskForTransferProhibitionLockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForUpdateProhibitionLockWithOptions(_ request: SaveSingleTaskForUpdateProhibitionLockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForUpdateProhibitionLockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForUpdateProhibitionLock",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForUpdateProhibitionLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForUpdateProhibitionLock(_ request: SaveSingleTaskForUpdateProhibitionLockRequest) async throws -> SaveSingleTaskForUpdateProhibitionLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForUpdateProhibitionLockWithOptions(request as! SaveSingleTaskForUpdateProhibitionLockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForUpdatingContactInfoWithOptions(_ request: SaveSingleTaskForUpdatingContactInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSingleTaskForUpdatingContactInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addTransferLock)) {
            query["AddTransferLock"] = request.addTransferLock!;
        }
        if (!TeaUtils.Client.isUnset(request.contactType)) {
            query["ContactType"] = request.contactType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileId)) {
            query["RegistrantProfileId"] = request.registrantProfileId!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSingleTaskForUpdatingContactInfo",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSingleTaskForUpdatingContactInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSingleTaskForUpdatingContactInfo(_ request: SaveSingleTaskForUpdatingContactInfoRequest) async throws -> SaveSingleTaskForUpdatingContactInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSingleTaskForUpdatingContactInfoWithOptions(request as! SaveSingleTaskForUpdatingContactInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForSubmittingDomainDeleteWithOptions(_ request: SaveTaskForSubmittingDomainDeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForSubmittingDomainDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForSubmittingDomainDelete",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForSubmittingDomainDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForSubmittingDomainDelete(_ request: SaveTaskForSubmittingDomainDeleteRequest) async throws -> SaveTaskForSubmittingDomainDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForSubmittingDomainDeleteWithOptions(request as! SaveTaskForSubmittingDomainDeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialWithOptions(_ request: SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.identityCredentialNo)) {
            query["IdentityCredentialNo"] = request.identityCredentialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityCredentialType)) {
            query["IdentityCredentialType"] = request.identityCredentialType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identityCredential)) {
            body["IdentityCredential"] = request.identityCredential ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredential",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForSubmittingDomainRealNameVerificationByIdentityCredential(_ request: SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialRequest) async throws -> SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialWithOptions(request as! SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDWithOptions(_ request: SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileId)) {
            query["RegistrantProfileId"] = request.registrantProfileId!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileID",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileID(_ request: SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDRequest) async throws -> SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDWithOptions(request as! SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForUpdatingRegistrantInfoByIdentityCredentialWithOptions(_ request: SaveTaskForUpdatingRegistrantInfoByIdentityCredentialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForUpdatingRegistrantInfoByIdentityCredentialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityCredentialNo)) {
            query["IdentityCredentialNo"] = request.identityCredentialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityCredentialType)) {
            query["IdentityCredentialType"] = request.identityCredentialType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postalCode)) {
            query["PostalCode"] = request.postalCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantName)) {
            query["RegistrantName"] = request.registrantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantOrganization)) {
            query["RegistrantOrganization"] = request.registrantOrganization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantType)) {
            query["RegistrantType"] = request.registrantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telArea)) {
            query["TelArea"] = request.telArea ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telExt)) {
            query["TelExt"] = request.telExt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telephone)) {
            query["Telephone"] = request.telephone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transferOutProhibited)) {
            query["TransferOutProhibited"] = request.transferOutProhibited!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identityCredential)) {
            body["IdentityCredential"] = request.identityCredential ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForUpdatingRegistrantInfoByIdentityCredential",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForUpdatingRegistrantInfoByIdentityCredentialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForUpdatingRegistrantInfoByIdentityCredential(_ request: SaveTaskForUpdatingRegistrantInfoByIdentityCredentialRequest) async throws -> SaveTaskForUpdatingRegistrantInfoByIdentityCredentialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForUpdatingRegistrantInfoByIdentityCredentialWithOptions(request as! SaveTaskForUpdatingRegistrantInfoByIdentityCredentialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForUpdatingRegistrantInfoByRegistrantProfileIDWithOptions(_ request: SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantProfileId)) {
            query["RegistrantProfileId"] = request.registrantProfileId!;
        }
        if (!TeaUtils.Client.isUnset(request.transferOutProhibited)) {
            query["TransferOutProhibited"] = request.transferOutProhibited!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForUpdatingRegistrantInfoByRegistrantProfileID",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForUpdatingRegistrantInfoByRegistrantProfileID(_ request: SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDRequest) async throws -> SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForUpdatingRegistrantInfoByRegistrantProfileIDWithOptions(request as! SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitEmailVerificationWithOptions(_ request: SubmitEmailVerificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitEmailVerificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendIfExist)) {
            query["SendIfExist"] = request.sendIfExist!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitEmailVerification",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitEmailVerificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitEmailVerification(_ request: SubmitEmailVerificationRequest) async throws -> SubmitEmailVerificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitEmailVerificationWithOptions(request as! SubmitEmailVerificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferInCheckMailTokenWithOptions(_ request: TransferInCheckMailTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferInCheckMailTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferInCheckMailToken",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferInCheckMailTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferInCheckMailToken(_ request: TransferInCheckMailTokenRequest) async throws -> TransferInCheckMailTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await transferInCheckMailTokenWithOptions(request as! TransferInCheckMailTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferInReenterTransferAuthorizationCodeWithOptions(_ request: TransferInReenterTransferAuthorizationCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferInReenterTransferAuthorizationCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transferAuthorizationCode)) {
            query["TransferAuthorizationCode"] = request.transferAuthorizationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferInReenterTransferAuthorizationCode",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferInReenterTransferAuthorizationCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferInReenterTransferAuthorizationCode(_ request: TransferInReenterTransferAuthorizationCodeRequest) async throws -> TransferInReenterTransferAuthorizationCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await transferInReenterTransferAuthorizationCodeWithOptions(request as! TransferInReenterTransferAuthorizationCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferInRefetchWhoisEmailWithOptions(_ request: TransferInRefetchWhoisEmailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferInRefetchWhoisEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferInRefetchWhoisEmail",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferInRefetchWhoisEmailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferInRefetchWhoisEmail(_ request: TransferInRefetchWhoisEmailRequest) async throws -> TransferInRefetchWhoisEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await transferInRefetchWhoisEmailWithOptions(request as! TransferInRefetchWhoisEmailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferInResendMailTokenWithOptions(_ request: TransferInResendMailTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferInResendMailTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferInResendMailToken",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferInResendMailTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferInResendMailToken(_ request: TransferInResendMailTokenRequest) async throws -> TransferInResendMailTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await transferInResendMailTokenWithOptions(request as! TransferInResendMailTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyContactFieldWithOptions(_ request: VerifyContactFieldRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyContactFieldResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postalCode)) {
            query["PostalCode"] = request.postalCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantName)) {
            query["RegistrantName"] = request.registrantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantOrganization)) {
            query["RegistrantOrganization"] = request.registrantOrganization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrantType)) {
            query["RegistrantType"] = request.registrantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telArea)) {
            query["TelArea"] = request.telArea ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telExt)) {
            query["TelExt"] = request.telExt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telephone)) {
            query["Telephone"] = request.telephone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyContactField",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyContactFieldResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyContactField(_ request: VerifyContactFieldRequest) async throws -> VerifyContactFieldResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyContactFieldWithOptions(request as! VerifyContactFieldRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyEmailWithOptions(_ request: VerifyEmailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyEmail",
            "version": "2017-12-18",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyEmailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyEmail(_ request: VerifyEmailRequest) async throws -> VerifyEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyEmailWithOptions(request as! VerifyEmailRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
