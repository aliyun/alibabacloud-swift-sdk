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
        self._endpoint = try getEndpoint("bailianvoicebot", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func bridgeWebCallWithOptions(_ request: BridgeWebCallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BridgeWebCallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            query["ApplicationId"] = request.applicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessUnitId)) {
            query["BusinessUnitId"] = request.businessUnitId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sampleRate)) {
            query["SampleRate"] = request.sampleRate!;
        }
        if (!TeaUtils.Client.isUnset(request.sandbox)) {
            query["Sandbox"] = request.sandbox!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeoutSeconds)) {
            query["TimeoutSeconds"] = request.timeoutSeconds!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BridgeWebCall",
            "version": "2025-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BridgeWebCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bridgeWebCall(_ request: BridgeWebCallRequest) async throws -> BridgeWebCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bridgeWebCallWithOptions(request as! BridgeWebCallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplicationWithOptions(_ request: CreateApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessUnitId)) {
            query["BusinessUnitId"] = request.businessUnitId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.concurrency)) {
            query["Concurrency"] = request.concurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nluAccessType)) {
            query["NluAccessType"] = request.nluAccessType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApplication",
            "version": "2025-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplication(_ request: CreateApplicationRequest) async throws -> CreateApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApplicationWithOptions(request as! CreateApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplicationVersionWithOptions(_ tmpReq: CreateApplicationVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApplicationVersionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateApplicationVersionShrinkRequest = CreateApplicationVersionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.interactionConfig)) {
            request.interactionConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.interactionConfig, "InteractionConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.scriptProfile)) {
            request.scriptProfileShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scriptProfile, "ScriptProfile", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.synthesizerConfig)) {
            request.synthesizerConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.synthesizerConfig, "SynthesizerConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.transcriberConfig)) {
            request.transcriberConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.transcriberConfig, "TranscriberConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            query["ApplicationId"] = request.applicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessUnitId)) {
            query["BusinessUnitId"] = request.businessUnitId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.interactionConfigShrink)) {
            query["InteractionConfig"] = request.interactionConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scriptProfileShrink)) {
            query["ScriptProfile"] = request.scriptProfileShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceVersionId)) {
            query["SourceVersionId"] = request.sourceVersionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synthesizerConfigShrink)) {
            query["SynthesizerConfig"] = request.synthesizerConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transcriberConfigShrink)) {
            query["TranscriberConfig"] = request.transcriberConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApplicationVersion",
            "version": "2025-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApplicationVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplicationVersion(_ request: CreateApplicationVersionRequest) async throws -> CreateApplicationVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApplicationVersionWithOptions(request as! CreateApplicationVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApplicationWithOptions(_ request: DeleteApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            query["ApplicationId"] = request.applicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessUnitId)) {
            query["BusinessUnitId"] = request.businessUnitId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApplication",
            "version": "2025-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApplication(_ request: DeleteApplicationRequest) async throws -> DeleteApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApplicationWithOptions(request as! DeleteApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApplicationWithOptions(_ request: GetApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            query["ApplicationId"] = request.applicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessUnitId)) {
            query["BusinessUnitId"] = request.businessUnitId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApplication",
            "version": "2025-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApplication(_ request: GetApplicationRequest) async throws -> GetApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApplicationWithOptions(request as! GetApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationsWithOptions(_ request: ListApplicationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessUnitId)) {
            query["BusinessUnitId"] = request.businessUnitId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchPattern)) {
            query["SearchPattern"] = request.searchPattern ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplications",
            "version": "2025-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplications(_ request: ListApplicationsRequest) async throws -> ListApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApplicationsWithOptions(request as! ListApplicationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishApplicationVersionWithOptions(_ request: PublishApplicationVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishApplicationVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            query["ApplicationId"] = request.applicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessUnitId)) {
            query["BusinessUnitId"] = request.businessUnitId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishApplicationVersion",
            "version": "2025-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishApplicationVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishApplicationVersion(_ request: PublishApplicationVersionRequest) async throws -> PublishApplicationVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await publishApplicationVersionWithOptions(request as! PublishApplicationVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationWithOptions(_ request: UpdateApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            query["ApplicationId"] = request.applicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessUnitId)) {
            query["BusinessUnitId"] = request.businessUnitId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.concurrency)) {
            query["Concurrency"] = request.concurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApplication",
            "version": "2025-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplication(_ request: UpdateApplicationRequest) async throws -> UpdateApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateApplicationWithOptions(request as! UpdateApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationVersionWithOptions(_ tmpReq: UpdateApplicationVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApplicationVersionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateApplicationVersionShrinkRequest = UpdateApplicationVersionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.interactionConfig)) {
            request.interactionConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.interactionConfig, "InteractionConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.scriptProfile)) {
            request.scriptProfileShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scriptProfile, "ScriptProfile", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.synthesizerConfig)) {
            request.synthesizerConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.synthesizerConfig, "SynthesizerConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.transcriberConfig)) {
            request.transcriberConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.transcriberConfig, "TranscriberConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            query["ApplicationId"] = request.applicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessUnitId)) {
            query["BusinessUnitId"] = request.businessUnitId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.interactionConfigShrink)) {
            query["InteractionConfig"] = request.interactionConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scriptProfileShrink)) {
            query["ScriptProfile"] = request.scriptProfileShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synthesizerConfigShrink)) {
            query["SynthesizerConfig"] = request.synthesizerConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transcriberConfigShrink)) {
            query["TranscriberConfig"] = request.transcriberConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApplicationVersion",
            "version": "2025-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApplicationVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationVersion(_ request: UpdateApplicationVersionRequest) async throws -> UpdateApplicationVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateApplicationVersionWithOptions(request as! UpdateApplicationVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
