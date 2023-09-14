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
        self._endpoint = try getEndpoint("rds-data", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func batchExecuteStatementWithOptions(_ tmpReq: BatchExecuteStatementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchExecuteStatementResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchExecuteStatementShrinkRequest = BatchExecuteStatementShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.parameterSets)) {
            request.parameterSetsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.parameterSets, "ParameterSets", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.database)) {
            body["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameterSetsShrink)) {
            body["ParameterSets"] = request.parameterSetsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["ResourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretArn)) {
            body["SecretArn"] = request.secretArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sql)) {
            body["Sql"] = request.sql ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            body["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchExecuteStatement",
            "version": "2022-03-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchExecuteStatementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchExecuteStatement(_ request: BatchExecuteStatementRequest) async throws -> BatchExecuteStatementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchExecuteStatementWithOptions(request as! BatchExecuteStatementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func beginTransactionWithOptions(_ request: BeginTransactionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BeginTransactionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.database)) {
            body["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["ResourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretArn)) {
            body["SecretArn"] = request.secretArn ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BeginTransaction",
            "version": "2022-03-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BeginTransactionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func beginTransaction(_ request: BeginTransactionRequest) async throws -> BeginTransactionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await beginTransactionWithOptions(request as! BeginTransactionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commitTransactionWithOptions(_ request: CommitTransactionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CommitTransactionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["ResourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretArn)) {
            body["SecretArn"] = request.secretArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            body["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CommitTransaction",
            "version": "2022-03-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CommitTransactionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commitTransaction(_ request: CommitTransactionRequest) async throws -> CommitTransactionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await commitTransactionWithOptions(request as! CommitTransactionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWithOptions(_ tmpReq: DeleteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteShrinkRequest = DeleteShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.database)) {
            body["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            body["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["ResourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretArn)) {
            body["SecretArn"] = request.secretArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["Table"] = request.table ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            body["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Delete",
            "version": "2022-03-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delete(_ request: DeleteRequest) async throws -> DeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWithOptions(request as! DeleteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeStatementWithOptions(_ tmpReq: ExecuteStatementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteStatementResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExecuteStatementShrinkRequest = ExecuteStatementShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.parameters)) {
            request.parametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.parameters, "Parameters", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.resultSetOptions)) {
            request.resultSetOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resultSetOptions, "ResultSetOptions", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.continueAfterTimeout)) {
            body["ContinueAfterTimeout"] = request.continueAfterTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.database)) {
            body["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formatRecordsAs)) {
            body["FormatRecordsAs"] = request.formatRecordsAs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeResultMetadata)) {
            body["IncludeResultMetadata"] = request.includeResultMetadata!;
        }
        if (!TeaUtils.Client.isUnset(request.parametersShrink)) {
            body["Parameters"] = request.parametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["ResourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultSetOptionsShrink)) {
            body["ResultSetOptions"] = request.resultSetOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretArn)) {
            body["SecretArn"] = request.secretArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sql)) {
            body["Sql"] = request.sql ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            body["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteStatement",
            "version": "2022-03-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteStatementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeStatement(_ request: ExecuteStatementRequest) async throws -> ExecuteStatementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeStatementWithOptions(request as! ExecuteStatementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertWithOptions(_ tmpReq: InsertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertShrinkRequest = InsertShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.record)) {
            request.recordShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.record, "Record", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.database)) {
            body["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordShrink)) {
            body["Record"] = request.recordShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["ResourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretArn)) {
            body["SecretArn"] = request.secretArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["Table"] = request.table ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            body["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Insert",
            "version": "2022-03-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insert(_ request: InsertRequest) async throws -> InsertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await insertWithOptions(request as! InsertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertListWithOptions(_ tmpReq: InsertListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertListShrinkRequest = InsertListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.records)) {
            request.recordsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.records, "Records", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.database)) {
            body["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordsShrink)) {
            body["Records"] = request.recordsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["ResourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretArn)) {
            body["SecretArn"] = request.secretArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["Table"] = request.table ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            body["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertList",
            "version": "2022-03-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertList(_ request: InsertListRequest) async throws -> InsertListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await insertListWithOptions(request as! InsertListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackTransactionWithOptions(_ request: RollbackTransactionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RollbackTransactionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["ResourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretArn)) {
            body["SecretArn"] = request.secretArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            body["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RollbackTransaction",
            "version": "2022-03-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RollbackTransactionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackTransaction(_ request: RollbackTransactionRequest) async throws -> RollbackTransactionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rollbackTransactionWithOptions(request as! RollbackTransactionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func selectWithOptions(_ tmpReq: SelectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SelectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SelectShrinkRequest = SelectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.database)) {
            body["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            body["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["ResourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretArn)) {
            body["SecretArn"] = request.secretArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["Table"] = request.table ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            body["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Select",
            "version": "2022-03-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SelectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func select(_ request: SelectRequest) async throws -> SelectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await selectWithOptions(request as! SelectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWithOptions(_ tmpReq: UpdateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateShrinkRequest = UpdateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.record)) {
            request.recordShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.record, "Record", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.database)) {
            body["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            body["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordShrink)) {
            body["Record"] = request.recordShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceArn)) {
            body["ResourceArn"] = request.resourceArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secretArn)) {
            body["SecretArn"] = request.secretArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            body["Table"] = request.table ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            body["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Update",
            "version": "2022-03-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func update(_ request: UpdateRequest) async throws -> UpdateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWithOptions(request as! UpdateRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
