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
        self._endpoint = try getEndpoint("airegistry", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createNamespaceWithOptions(_ request: CreateNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanPolicy)) {
            query["ScanPolicy"] = request.scanPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNamespace",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNamespace(_ request: CreateNamespaceRequest) async throws -> CreateNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNamespaceWithOptions(request as! CreateNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPromptWithOptions(_ request: CreatePromptRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePromptResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizTags)) {
            query["BizTags"] = request.bizTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commitMsg)) {
            query["CommitMsg"] = request.commitMsg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptKey)) {
            query["PromptKey"] = request.promptKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetVersion)) {
            query["TargetVersion"] = request.targetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.template)) {
            query["Template"] = request.template ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variables)) {
            query["Variables"] = request.variables ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePrompt",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePromptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrompt(_ request: CreatePromptRequest) async throws -> CreatePromptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPromptWithOptions(request as! CreatePromptRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPromptVersionWithOptions(_ request: CreatePromptVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePromptVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.basedOnVersion)) {
            query["BasedOnVersion"] = request.basedOnVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commitMsg)) {
            query["CommitMsg"] = request.commitMsg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptKey)) {
            query["PromptKey"] = request.promptKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetVersion)) {
            query["TargetVersion"] = request.targetVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.template)) {
            query["Template"] = request.template ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variables)) {
            query["Variables"] = request.variables ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePromptVersion",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePromptVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPromptVersion(_ request: CreatePromptVersionRequest) async throws -> CreatePromptVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPromptVersionWithOptions(request as! CreatePromptVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSkillDraftWithOptions(_ request: CreateSkillDraftRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSkillDraftResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.basedOnVersion)) {
            query["BasedOnVersion"] = request.basedOnVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commitMsg)) {
            query["CommitMsg"] = request.commitMsg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillCard)) {
            query["SkillCard"] = request.skillCard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetVersion)) {
            query["TargetVersion"] = request.targetVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSkillDraft",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSkillDraftResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSkillDraft(_ request: CreateSkillDraftRequest) async throws -> CreateSkillDraftResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSkillDraftWithOptions(request as! CreateSkillDraftRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNamespaceWithOptions(_ request: DeleteNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNamespace",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNamespace(_ request: DeleteNamespaceRequest) async throws -> DeleteNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNamespaceWithOptions(request as! DeleteNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePromptWithOptions(_ request: DeletePromptRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePromptResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptKey)) {
            query["PromptKey"] = request.promptKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePrompt",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePromptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrompt(_ request: DeletePromptRequest) async throws -> DeletePromptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePromptWithOptions(request as! DeletePromptRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSkillWithOptions(_ request: DeleteSkillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSkillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSkill",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSkill(_ request: DeleteSkillRequest) async throws -> DeleteSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSkillWithOptions(request as! DeleteSkillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadSkillVersionViaOssWithOptions(_ request: DownloadSkillVersionViaOssRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DownloadSkillVersionViaOssResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillVersion)) {
            query["SkillVersion"] = request.skillVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DownloadSkillVersionViaOss",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DownloadSkillVersionViaOssResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadSkillVersionViaOss(_ request: DownloadSkillVersionViaOssRequest) async throws -> DownloadSkillVersionViaOssResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await downloadSkillVersionViaOssWithOptions(request as! DownloadSkillVersionViaOssRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func forcePublishSkillVersionWithOptions(_ request: ForcePublishSkillVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ForcePublishSkillVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillVersion)) {
            query["SkillVersion"] = request.skillVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateLatestLabel)) {
            query["UpdateLatestLabel"] = request.updateLatestLabel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ForcePublishSkillVersion",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ForcePublishSkillVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func forcePublishSkillVersion(_ request: ForcePublishSkillVersionRequest) async throws -> ForcePublishSkillVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await forcePublishSkillVersionWithOptions(request as! ForcePublishSkillVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNamespaceWithOptions(_ request: GetNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNamespace",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNamespace(_ request: GetNamespaceRequest) async throws -> GetNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNamespaceWithOptions(request as! GetNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPromptWithOptions(_ request: GetPromptRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPromptResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptKey)) {
            query["PromptKey"] = request.promptKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPrompt",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPromptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrompt(_ request: GetPromptRequest) async throws -> GetPromptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPromptWithOptions(request as! GetPromptRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPromptVersionWithOptions(_ request: GetPromptVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPromptVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptKey)) {
            query["PromptKey"] = request.promptKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptVersion)) {
            query["PromptVersion"] = request.promptVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPromptVersion",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPromptVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPromptVersion(_ request: GetPromptVersionRequest) async throws -> GetPromptVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPromptVersionWithOptions(request as! GetPromptVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillDetailWithOptions(_ request: GetSkillDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSkillDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSkillDetail",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSkillDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillDetail(_ request: GetSkillDetailRequest) async throws -> GetSkillDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSkillDetailWithOptions(request as! GetSkillDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillImportFileUrlWithOptions(_ request: GetSkillImportFileUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSkillImportFileUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentType)) {
            query["ContentType"] = request.contentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSkillImportFileUrl",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSkillImportFileUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillImportFileUrl(_ request: GetSkillImportFileUrlRequest) async throws -> GetSkillImportFileUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSkillImportFileUrlWithOptions(request as! GetSkillImportFileUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillVersionDetailWithOptions(_ request: GetSkillVersionDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSkillVersionDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillVersion)) {
            query["SkillVersion"] = request.skillVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSkillVersionDetail",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSkillVersionDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSkillVersionDetail(_ request: GetSkillVersionDetailRequest) async throws -> GetSkillVersionDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSkillVersionDetailWithOptions(request as! GetSkillVersionDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNamespacesWithOptions(_ request: ListNamespacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNamespacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNamespaces",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNamespacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNamespaces(_ request: ListNamespacesRequest) async throws -> ListNamespacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNamespacesWithOptions(request as! ListNamespacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPromptVersionsWithOptions(_ request: ListPromptVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPromptVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.promptKey)) {
            query["PromptKey"] = request.promptKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPromptVersions",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPromptVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPromptVersions(_ request: ListPromptVersionsRequest) async throws -> ListPromptVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPromptVersionsWithOptions(request as! ListPromptVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPromptsWithOptions(_ request: ListPromptsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPromptsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizTags)) {
            query["BizTags"] = request.bizTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.promptKey)) {
            query["PromptKey"] = request.promptKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["Search"] = request.search ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrompts",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPromptsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrompts(_ request: ListPromptsRequest) async throws -> ListPromptsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPromptsWithOptions(request as! ListPromptsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkillsWithOptions(_ request: ListSkillsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSkillsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.owner)) {
            query["Owner"] = request.owner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["Search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSkills",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSkillsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkills(_ request: ListSkillsRequest) async throws -> ListSkillsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSkillsWithOptions(request as! ListSkillsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineSkillWithOptions(_ request: OfflineSkillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineSkillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillVersion)) {
            query["SkillVersion"] = request.skillVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineSkill",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineSkill(_ request: OfflineSkillRequest) async throws -> OfflineSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await offlineSkillWithOptions(request as! OfflineSkillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineSkillWithOptions(_ request: OnlineSkillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OnlineSkillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillVersion)) {
            query["SkillVersion"] = request.skillVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OnlineSkill",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OnlineSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func onlineSkill(_ request: OnlineSkillRequest) async throws -> OnlineSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await onlineSkillWithOptions(request as! OnlineSkillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishSkillVersionWithOptions(_ request: PublishSkillVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishSkillVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillVersion)) {
            query["SkillVersion"] = request.skillVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateLatestLabel)) {
            query["UpdateLatestLabel"] = request.updateLatestLabel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishSkillVersion",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishSkillVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishSkillVersion(_ request: PublishSkillVersionRequest) async throws -> PublishSkillVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await publishSkillVersionWithOptions(request as! PublishSkillVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitPromptVersionWithOptions(_ request: SubmitPromptVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitPromptVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptKey)) {
            query["PromptKey"] = request.promptKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptVersion)) {
            query["PromptVersion"] = request.promptVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitPromptVersion",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitPromptVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitPromptVersion(_ request: SubmitPromptVersionRequest) async throws -> SubmitPromptVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitPromptVersionWithOptions(request as! SubmitPromptVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSkillVersionWithOptions(_ request: SubmitSkillVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSkillVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillVersion)) {
            query["SkillVersion"] = request.skillVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSkillVersion",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitSkillVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSkillVersion(_ request: SubmitSkillVersionRequest) async throws -> SubmitSkillVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitSkillVersionWithOptions(request as! SubmitSkillVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespaceWithOptions(_ request: UpdateNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanPolicy)) {
            query["ScanPolicy"] = request.scanPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNamespace",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespace(_ request: UpdateNamespaceRequest) async throws -> UpdateNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateNamespaceWithOptions(request as! UpdateNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePromptWithOptions(_ tmpReq: UpdatePromptRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePromptResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdatePromptShrinkRequest = UpdatePromptShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bizTags)) {
            request.bizTagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bizTags, "BizTags", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.labels)) {
            request.labelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.labels, "Labels", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizTagsShrink)) {
            query["BizTags"] = request.bizTagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelsShrink)) {
            query["Labels"] = request.labelsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptKey)) {
            query["PromptKey"] = request.promptKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePrompt",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePromptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrompt(_ request: UpdatePromptRequest) async throws -> UpdatePromptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePromptWithOptions(request as! UpdatePromptRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePromptVersionWithOptions(_ request: UpdatePromptVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePromptVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commitMsg)) {
            query["CommitMsg"] = request.commitMsg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptKey)) {
            query["PromptKey"] = request.promptKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.template)) {
            query["Template"] = request.template ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variables)) {
            query["Variables"] = request.variables ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePromptVersion",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePromptVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePromptVersion(_ request: UpdatePromptVersionRequest) async throws -> UpdatePromptVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePromptVersionWithOptions(request as! UpdatePromptVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSkillBizTagsWithOptions(_ request: UpdateSkillBizTagsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSkillBizTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizTags)) {
            query["BizTags"] = request.bizTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSkillBizTags",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSkillBizTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSkillBizTags(_ request: UpdateSkillBizTagsRequest) async throws -> UpdateSkillBizTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSkillBizTagsWithOptions(request as! UpdateSkillBizTagsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSkillDraftWithOptions(_ request: UpdateSkillDraftRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSkillDraftResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commitMsg)) {
            query["CommitMsg"] = request.commitMsg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillCard)) {
            query["SkillCard"] = request.skillCard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSkillDraft",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSkillDraftResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSkillDraft(_ request: UpdateSkillDraftRequest) async throws -> UpdateSkillDraftResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSkillDraftWithOptions(request as! UpdateSkillDraftRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSkillLabelsWithOptions(_ request: UpdateSkillLabelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSkillLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSkillLabels",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSkillLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSkillLabels(_ request: UpdateSkillLabelsRequest) async throws -> UpdateSkillLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSkillLabelsWithOptions(request as! UpdateSkillLabelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSkillScopeWithOptions(_ request: UpdateSkillScopeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSkillScopeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["SkillName"] = request.skillName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSkillScope",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSkillScopeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSkillScope(_ request: UpdateSkillScopeRequest) async throws -> UpdateSkillScopeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSkillScopeWithOptions(request as! UpdateSkillScopeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadSkillViaOssWithOptions(_ request: UploadSkillViaOssRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadSkillViaOssResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commitMsg)) {
            query["CommitMsg"] = request.commitMsg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossObjectName)) {
            query["OssObjectName"] = request.ossObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overwrite)) {
            query["Overwrite"] = request.overwrite!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadSkillViaOss",
            "version": "2026-03-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadSkillViaOssResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadSkillViaOss(_ request: UploadSkillViaOssRequest) async throws -> UploadSkillViaOssResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadSkillViaOssWithOptions(request as! UploadSkillViaOssRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
