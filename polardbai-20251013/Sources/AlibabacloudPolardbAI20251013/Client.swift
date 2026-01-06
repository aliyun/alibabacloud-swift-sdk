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
        self._endpoint = try getEndpoint("polardbai", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func chatBIConfigCreateWithOptions(_ request: ChatBIConfigCreateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIConfigCreateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIConfigCreate",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIConfigCreateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigCreate(_ request: ChatBIConfigCreateRequest) async throws -> ChatBIConfigCreateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIConfigCreateWithOptions(request as! ChatBIConfigCreateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigDeleteWithOptions(_ request: ChatBIConfigDeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIConfigDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIConfigDelete",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIConfigDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigDelete(_ request: ChatBIConfigDeleteRequest) async throws -> ChatBIConfigDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIConfigDeleteWithOptions(request as! ChatBIConfigDeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigDeleteEntryWithOptions(_ request: ChatBIConfigDeleteEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIConfigDeleteEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIConfigDeleteEntry",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIConfigDeleteEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigDeleteEntry(_ request: ChatBIConfigDeleteEntryRequest) async throws -> ChatBIConfigDeleteEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIConfigDeleteEntryWithOptions(request as! ChatBIConfigDeleteEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigQueryEntriesWithOptions(_ request: ChatBIConfigQueryEntriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIConfigQueryEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIConfigQueryEntries",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIConfigQueryEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigQueryEntries(_ request: ChatBIConfigQueryEntriesRequest) async throws -> ChatBIConfigQueryEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIConfigQueryEntriesWithOptions(request as! ChatBIConfigQueryEntriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigQueryTablesWithOptions(_ request: ChatBIConfigQueryTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIConfigQueryTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputField)) {
            query["InputField"] = request.inputField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIConfigQueryTables",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIConfigQueryTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigQueryTables(_ request: ChatBIConfigQueryTablesRequest) async throws -> ChatBIConfigQueryTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIConfigQueryTablesWithOptions(request as! ChatBIConfigQueryTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigUpdateEntryWithOptions(_ request: ChatBIConfigUpdateEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIConfigUpdateEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formulaFunction)) {
            query["FormulaFunction"] = request.formulaFunction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isFunctional)) {
            query["IsFunctional"] = request.isFunctional!;
        }
        if (!TeaUtils.Client.isUnset(request.queryFunction)) {
            query["QueryFunction"] = request.queryFunction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sqlCondition)) {
            query["SqlCondition"] = request.sqlCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sqlFunction)) {
            query["SqlFunction"] = request.sqlFunction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textCondition)) {
            query["TextCondition"] = request.textCondition ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIConfigUpdateEntry",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIConfigUpdateEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIConfigUpdateEntry(_ request: ChatBIConfigUpdateEntryRequest) async throws -> ChatBIConfigUpdateEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIConfigUpdateEntryWithOptions(request as! ChatBIConfigUpdateEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIFileTemplateDownloadWithOptions(_ request: ChatBIFileTemplateDownloadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIFileTemplateDownloadResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableType)) {
            query["TableType"] = request.tableType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIFileTemplateDownload",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIFileTemplateDownloadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIFileTemplateDownload(_ request: ChatBIFileTemplateDownloadRequest) async throws -> ChatBIFileTemplateDownloadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIFileTemplateDownloadWithOptions(request as! ChatBIFileTemplateDownloadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIFileUploadWithOptions(_ request: ChatBIFileUploadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIFileUploadResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIFileUpload",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIFileUploadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIFileUpload(_ request: ChatBIFileUploadRequest) async throws -> ChatBIFileUploadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIFileUploadWithOptions(request as! ChatBIFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIFileUploadCallbackWithOptions(_ request: ChatBIFileUploadCallbackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIFileUploadCallbackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.characterSetName)) {
            query["CharacterSetName"] = request.characterSetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableType)) {
            query["TableType"] = request.tableType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIFileUploadCallback",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIFileUploadCallbackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIFileUploadCallback(_ request: ChatBIFileUploadCallbackRequest) async throws -> ChatBIFileUploadCallbackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIFileUploadCallbackWithOptions(request as! ChatBIFileUploadCallbackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternCreateWithOptions(_ request: ChatBIPatternCreateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIPatternCreateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableNameSuffix)) {
            query["TableNameSuffix"] = request.tableNameSuffix ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIPatternCreate",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIPatternCreateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternCreate(_ request: ChatBIPatternCreateRequest) async throws -> ChatBIPatternCreateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIPatternCreateWithOptions(request as! ChatBIPatternCreateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternDeleteWithOptions(_ request: ChatBIPatternDeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIPatternDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIPatternDelete",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIPatternDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternDelete(_ request: ChatBIPatternDeleteRequest) async throws -> ChatBIPatternDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIPatternDeleteWithOptions(request as! ChatBIPatternDeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternDeleteEntryWithOptions(_ request: ChatBIPatternDeleteEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIPatternDeleteEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIPatternDeleteEntry",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIPatternDeleteEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternDeleteEntry(_ request: ChatBIPatternDeleteEntryRequest) async throws -> ChatBIPatternDeleteEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIPatternDeleteEntryWithOptions(request as! ChatBIPatternDeleteEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternIndexCreateWithOptions(_ request: ChatBIPatternIndexCreateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIPatternIndexCreateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.patternTableName)) {
            query["PatternTableName"] = request.patternTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableNameSuffix)) {
            query["TableNameSuffix"] = request.tableNameSuffix ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIPatternIndexCreate",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIPatternIndexCreateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternIndexCreate(_ request: ChatBIPatternIndexCreateRequest) async throws -> ChatBIPatternIndexCreateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIPatternIndexCreateWithOptions(request as! ChatBIPatternIndexCreateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternIndexDeleteWithOptions(_ request: ChatBIPatternIndexDeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIPatternIndexDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIPatternIndexDelete",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIPatternIndexDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternIndexDelete(_ request: ChatBIPatternIndexDeleteRequest) async throws -> ChatBIPatternIndexDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIPatternIndexDeleteWithOptions(request as! ChatBIPatternIndexDeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternIndexQueryTablesWithOptions(_ request: ChatBIPatternIndexQueryTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIPatternIndexQueryTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputField)) {
            query["InputField"] = request.inputField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIPatternIndexQueryTables",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIPatternIndexQueryTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternIndexQueryTables(_ request: ChatBIPatternIndexQueryTablesRequest) async throws -> ChatBIPatternIndexQueryTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIPatternIndexQueryTablesWithOptions(request as! ChatBIPatternIndexQueryTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternQueryEntriesWithOptions(_ request: ChatBIPatternQueryEntriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIPatternQueryEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIPatternQueryEntries",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIPatternQueryEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternQueryEntries(_ request: ChatBIPatternQueryEntriesRequest) async throws -> ChatBIPatternQueryEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIPatternQueryEntriesWithOptions(request as! ChatBIPatternQueryEntriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternQueryTablesWithOptions(_ request: ChatBIPatternQueryTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIPatternQueryTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputField)) {
            query["InputField"] = request.inputField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIPatternQueryTables",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIPatternQueryTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternQueryTables(_ request: ChatBIPatternQueryTablesRequest) async throws -> ChatBIPatternQueryTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIPatternQueryTablesWithOptions(request as! ChatBIPatternQueryTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternUpdateEntryWithOptions(_ request: ChatBIPatternUpdateEntryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIPatternUpdateEntryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.patternDescription)) {
            query["PatternDescription"] = request.patternDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.patternParams)) {
            query["PatternParams"] = request.patternParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.patternQuestion)) {
            query["PatternQuestion"] = request.patternQuestion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.patternSql)) {
            query["PatternSql"] = request.patternSql ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIPatternUpdateEntry",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIPatternUpdateEntryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPatternUpdateEntry(_ request: ChatBIPatternUpdateEntryRequest) async throws -> ChatBIPatternUpdateEntryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIPatternUpdateEntryWithOptions(request as! ChatBIPatternUpdateEntryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPredictSseWithOptions(_ tmpReq: ChatBIPredictSseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIPredictSseResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ChatBIPredictSseShrinkRequest = ChatBIPredictSseShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.parameters)) {
            request.parametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.parameters, "Parameters", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateChart)) {
            query["GenerateChart"] = request.generateChart!;
        }
        if (!TeaUtils.Client.isUnset(request.generateSummary)) {
            query["GenerateSummary"] = request.generateSummary!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parametersShrink)) {
            query["Parameters"] = request.parametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.patternIndexTableName)) {
            query["PatternIndexTableName"] = request.patternIndexTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.question)) {
            query["Question"] = request.question ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaIndexTableName)) {
            query["SchemaIndexTableName"] = request.schemaIndexTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selectData)) {
            query["SelectData"] = request.selectData!;
        }
        if (!TeaUtils.Client.isUnset(request.thinkingMode)) {
            query["ThinkingMode"] = request.thinkingMode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIPredictSse",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIPredictSseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIPredictSse(_ request: ChatBIPredictSseRequest) async throws -> ChatBIPredictSseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIPredictSseWithOptions(request as! ChatBIPredictSseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBISchemaIndexCreateWithOptions(_ request: ChatBISchemaIndexCreateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBISchemaIndexCreateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnsExcluded)) {
            query["ColumnsExcluded"] = request.columnsExcluded ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableNameSuffix)) {
            query["TableNameSuffix"] = request.tableNameSuffix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tablesIncluded)) {
            query["TablesIncluded"] = request.tablesIncluded ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toSample)) {
            query["ToSample"] = request.toSample!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBISchemaIndexCreate",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBISchemaIndexCreateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBISchemaIndexCreate(_ request: ChatBISchemaIndexCreateRequest) async throws -> ChatBISchemaIndexCreateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBISchemaIndexCreateWithOptions(request as! ChatBISchemaIndexCreateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBISchemaIndexDeleteWithOptions(_ request: ChatBISchemaIndexDeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBISchemaIndexDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBISchemaIndexDelete",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBISchemaIndexDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBISchemaIndexDelete(_ request: ChatBISchemaIndexDeleteRequest) async throws -> ChatBISchemaIndexDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBISchemaIndexDeleteWithOptions(request as! ChatBISchemaIndexDeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBISchemaIndexQueryTablesWithOptions(_ request: ChatBISchemaIndexQueryTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBISchemaIndexQueryTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputField)) {
            query["InputField"] = request.inputField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBISchemaIndexQueryTables",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBISchemaIndexQueryTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBISchemaIndexQueryTables(_ request: ChatBISchemaIndexQueryTablesRequest) async throws -> ChatBISchemaIndexQueryTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBISchemaIndexQueryTablesWithOptions(request as! ChatBISchemaIndexQueryTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIUpdateTableValidationColumnsWithOptions(_ request: ChatBIUpdateTableValidationColumnsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatBIUpdateTableValidationColumnsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableType)) {
            query["TableType"] = request.tableType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatBIUpdateTableValidationColumns",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatBIUpdateTableValidationColumnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatBIUpdateTableValidationColumns(_ request: ChatBIUpdateTableValidationColumnsRequest) async throws -> ChatBIUpdateTableValidationColumnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatBIUpdateTableValidationColumnsWithOptions(request as! ChatBIUpdateTableValidationColumnsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMultimodalDatasetWithOptions(_ request: CreateMultimodalDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMultimodalDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetDescription)) {
            query["DatasetDescription"] = request.datasetDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMultimodalDataset",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMultimodalDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMultimodalDataset(_ request: CreateMultimodalDatasetRequest) async throws -> CreateMultimodalDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMultimodalDatasetWithOptions(request as! CreateMultimodalDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMultimodalDatasetEmbeddingWithOptions(_ request: CreateMultimodalDatasetEmbeddingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMultimodalDatasetEmbeddingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMultimodalDatasetEmbedding",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMultimodalDatasetEmbeddingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMultimodalDatasetEmbedding(_ request: CreateMultimodalDatasetEmbeddingRequest) async throws -> CreateMultimodalDatasetEmbeddingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMultimodalDatasetEmbeddingWithOptions(request as! CreateMultimodalDatasetEmbeddingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMultimodalSearchTaskWithOptions(_ tmpReq: CreateMultimodalSearchTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMultimodalSearchTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateMultimodalSearchTaskShrinkRequest = CreateMultimodalSearchTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.datasetIds)) {
            request.datasetIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.datasetIds, "DatasetIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetIdsShrink)) {
            query["DatasetIds"] = request.datasetIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.embeddingModel)) {
            query["EmbeddingModel"] = request.embeddingModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchModel)) {
            query["SearchModel"] = request.searchModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topK)) {
            query["TopK"] = request.topK!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMultimodalSearchTask",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMultimodalSearchTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMultimodalSearchTask(_ request: CreateMultimodalSearchTaskRequest) async throws -> CreateMultimodalSearchTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMultimodalSearchTaskWithOptions(request as! CreateMultimodalSearchTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMultimodalDatasetWithOptions(_ request: DeleteMultimodalDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMultimodalDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMultimodalDataset",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMultimodalDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMultimodalDataset(_ request: DeleteMultimodalDatasetRequest) async throws -> DeleteMultimodalDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMultimodalDatasetWithOptions(request as! DeleteMultimodalDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMultimodalEmbeddingWithOptions(_ request: DeleteMultimodalEmbeddingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMultimodalEmbeddingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.embedding)) {
            query["Embedding"] = request.embedding ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMultimodalEmbedding",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMultimodalEmbeddingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMultimodalEmbedding(_ request: DeleteMultimodalEmbeddingRequest) async throws -> DeleteMultimodalEmbeddingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMultimodalEmbeddingWithOptions(request as! DeleteMultimodalEmbeddingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadMultimodalSearchTaskResultMetadataWithOptions(_ request: DownloadMultimodalSearchTaskResultMetadataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DownloadMultimodalSearchTaskResultMetadataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DownloadMultimodalSearchTaskResultMetadata",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DownloadMultimodalSearchTaskResultMetadataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadMultimodalSearchTaskResultMetadata(_ request: DownloadMultimodalSearchTaskResultMetadataRequest) async throws -> DownloadMultimodalSearchTaskResultMetadataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await downloadMultimodalSearchTaskResultMetadataWithOptions(request as! DownloadMultimodalSearchTaskResultMetadataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserTokenWithOptions(_ request: GetUserTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserToken",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserToken(_ request: GetUserTokenRequest) async throws -> GetUserTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserTokenWithOptions(request as! GetUserTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultimodalDatasetWithOptions(_ request: ListMultimodalDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMultimodalDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputField)) {
            query["InputField"] = request.inputField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMultimodalDataset",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMultimodalDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultimodalDataset(_ request: ListMultimodalDatasetRequest) async throws -> ListMultimodalDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMultimodalDatasetWithOptions(request as! ListMultimodalDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultimodalEmbeddingModelWithOptions(_ request: ListMultimodalEmbeddingModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMultimodalEmbeddingModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMultimodalEmbeddingModel",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMultimodalEmbeddingModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultimodalEmbeddingModel(_ request: ListMultimodalEmbeddingModelRequest) async throws -> ListMultimodalEmbeddingModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMultimodalEmbeddingModelWithOptions(request as! ListMultimodalEmbeddingModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultimodalSearchTaskWithOptions(_ request: ListMultimodalSearchTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMultimodalSearchTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMultimodalSearchTask",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMultimodalSearchTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultimodalSearchTask(_ request: ListMultimodalSearchTaskRequest) async throws -> ListMultimodalSearchTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMultimodalSearchTaskWithOptions(request as! ListMultimodalSearchTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultimodalSearchTaskResultWithOptions(_ request: ListMultimodalSearchTaskResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMultimodalSearchTaskResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMultimodalSearchTaskResult",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMultimodalSearchTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultimodalSearchTaskResult(_ request: ListMultimodalSearchTaskResultRequest) async throws -> ListMultimodalSearchTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMultimodalSearchTaskResultWithOptions(request as! ListMultimodalSearchTaskResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMultimodalDatasetWithOptions(_ request: UpdateMultimodalDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMultimodalDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetDescription)) {
            query["DatasetDescription"] = request.datasetDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMultimodalDataset",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMultimodalDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMultimodalDataset(_ request: UpdateMultimodalDatasetRequest) async throws -> UpdateMultimodalDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMultimodalDatasetWithOptions(request as! UpdateMultimodalDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadOSSMultimodalDatasetWithOptions(_ request: UploadOSSMultimodalDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadOSSMultimodalDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossUrl)) {
            query["OssUrl"] = request.ossUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadOSSMultimodalDataset",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadOSSMultimodalDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadOSSMultimodalDataset(_ request: UploadOSSMultimodalDatasetRequest) async throws -> UploadOSSMultimodalDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadOSSMultimodalDatasetWithOptions(request as! UploadOSSMultimodalDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateDatabaseUserTokenWithOptions(_ request: ValidateDatabaseUserTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateDatabaseUserTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBName)) {
            query["DBName"] = request.DBName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateDatabaseUserToken",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateDatabaseUserTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateDatabaseUserToken(_ request: ValidateDatabaseUserTokenRequest) async throws -> ValidateDatabaseUserTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateDatabaseUserTokenWithOptions(request as! ValidateDatabaseUserTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateUserTokenWithOptions(_ request: ValidateUserTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateUserTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authMessage)) {
            query["AuthMessage"] = request.authMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBClusterId)) {
            query["DBClusterId"] = request.DBClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateUserToken",
            "version": "2025-10-13",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateUserTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateUserToken(_ request: ValidateUserTokenRequest) async throws -> ValidateUserTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateUserTokenWithOptions(request as! ValidateUserTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
