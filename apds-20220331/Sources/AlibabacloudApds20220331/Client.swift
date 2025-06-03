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
        self._endpoint = try getEndpoint("apds", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createMigrationGroupWithOptions(_ request: CreateMigrationGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMigrationGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extra)) {
            body["extra"] = request.extra ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMigrationGroup",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/migration-group/save-migration-group",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMigrationGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMigrationGroup(_ request: CreateMigrationGroupRequest) async throws -> CreateMigrationGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMigrationGroupWithOptions(request as! CreateMigrationGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMigrationJobWithOptions(_ request: CreateMigrationJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.migrationJobList)) {
            body["migrationJobList"] = request.migrationJobList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMigrationJob",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/migration-job/create-migration-jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMigrationJob(_ request: CreateMigrationJobRequest) async throws -> CreateMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMigrationJobWithOptions(request as! CreateMigrationJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPayOrderCallbackWithOptions(_ request: CreatePayOrderCallbackRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePayOrderCallbackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["data"] = request.data ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePayOrderCallback",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/sys/user/pop/api/v1/payOrderCallback",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePayOrderCallbackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPayOrderCallback(_ request: CreatePayOrderCallbackRequest) async throws -> CreatePayOrderCallbackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPayOrderCallbackWithOptions(request as! CreatePayOrderCallbackRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRefundWithOptions(_ request: CreateRefundRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["data"] = request.data ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRefund",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/sys/user/pop/api/v1/refund",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRefund(_ request: CreateRefundRequest) async throws -> CreateRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRefundWithOptions(request as! CreateRefundRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSurveyJobWithOptions(_ request: CreateSurveyJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSurveyJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ak)) {
            body["ak"] = request.ak ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoConfirm)) {
            body["autoConfirm"] = request.autoConfirm!;
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cloudType)) {
            body["cloudType"] = request.cloudType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossObjectName)) {
            body["ossObjectName"] = request.ossObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["region"] = request.region ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypeList)) {
            body["resourceTypeList"] = request.resourceTypeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sk)) {
            body["sk"] = request.sk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zone)) {
            body["zone"] = request.zone ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSurveyJob",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/winback/add-survey-job",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSurveyJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSurveyJob(_ request: CreateSurveyJobRequest) async throws -> CreateSurveyJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSurveyJobWithOptions(request as! CreateSurveyJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSurveyJobOfflineWithOptions(_ request: CreateSurveyJobOfflineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSurveyJobOfflineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoConfirm)) {
            body["autoConfirm"] = request.autoConfirm!;
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cloudType)) {
            body["cloudType"] = request.cloudType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectName)) {
            body["objectName"] = request.objectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSurveyJobOffline",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/winback/add-import-survey-job",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSurveyJobOfflineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSurveyJobOffline(_ request: CreateSurveyJobOfflineRequest) async throws -> CreateSurveyJobOfflineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSurveyJobOfflineWithOptions(request as! CreateSurveyJobOfflineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMigrationJobWithOptions(_ request: DeleteMigrationJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMigrationJob",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/migration-job/remove-migration-job",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMigrationJob(_ request: DeleteMigrationJobRequest) async throws -> DeleteMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMigrationJobWithOptions(request as! DeleteMigrationJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOssFileWithOptions(_ request: DeleteOssFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteOssFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.objectName)) {
            query["objectName"] = request.objectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteOssFile",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/file-job/delete-file",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteOssFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOssFile(_ request: DeleteOssFileRequest) async throws -> DeleteOssFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteOssFileWithOptions(request as! DeleteOssFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSurveyJobWithOptions(_ request: DeleteSurveyJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSurveyJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSurveyJob",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/winback/delete-survey-job",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSurveyJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSurveyJob(_ request: DeleteSurveyJobRequest) async throws -> DeleteSurveyJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSurveyJobWithOptions(request as! DeleteSurveyJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSurveyResourcesWithOptions(_ request: DeleteSurveyResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSurveyResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ids)) {
            query["ids"] = request.ids ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSurveyResources",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/confirm-resource/destroy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSurveyResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSurveyResources(_ request: DeleteSurveyResourcesRequest) async throws -> DeleteSurveyResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSurveyResourcesWithOptions(request as! DeleteSurveyResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobConfigWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMigrationJobConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMigrationJobConfig",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/migration-job/describe-migration-job-config",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMigrationJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobConfig() async throws -> DescribeMigrationJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeMigrationJobConfigWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobCountWithOptions(_ request: DescribeMigrationJobCountRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMigrationJobCountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchTaskGroupId)) {
            body["batchTaskGroupId"] = request.batchTaskGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.cutoverPlanId)) {
            body["cutoverPlanId"] = request.cutoverPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSideId)) {
            body["outSideId"] = request.outSideId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.surveyResourceId)) {
            body["surveyResourceId"] = request.surveyResourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tagList)) {
            body["tagList"] = request.tagList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.typeList)) {
            body["typeList"] = request.typeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.usedType)) {
            body["usedType"] = request.usedType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMigrationJobCount",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/migration-job/count-migration-jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMigrationJobCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobCount(_ request: DescribeMigrationJobCountRequest) async throws -> DescribeMigrationJobCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeMigrationJobCountWithOptions(request as! DescribeMigrationJobCountRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssStsWithOptions(_ request: DescribeOssStsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOssStsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ak)) {
            query["ak"] = request.ak ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cloudType)) {
            query["cloudType"] = request.cloudType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sk)) {
            query["sk"] = request.sk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOssSts",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/file-job/sts",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOssStsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssSts(_ request: DescribeOssStsRequest) async throws -> DescribeOssStsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeOssStsWithOptions(request as! DescribeOssStsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSummaryByStatusWithOptions(_ request: DescribeSummaryByStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSummaryByStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSummaryByStatus",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/summary/summary-by-status",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSummaryByStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSummaryByStatus(_ request: DescribeSummaryByStatusRequest) async throws -> DescribeSummaryByStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSummaryByStatusWithOptions(request as! DescribeSummaryByStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSummaryByStatusAndGroupWithOptions(_ request: DescribeSummaryByStatusAndGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSummaryByStatusAndGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSummaryByStatusAndGroup",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/summary/summary-by-status-and-region",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSummaryByStatusAndGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSummaryByStatusAndGroup(_ request: DescribeSummaryByStatusAndGroupRequest) async throws -> DescribeSummaryByStatusAndGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSummaryByStatusAndGroupWithOptions(request as! DescribeSummaryByStatusAndGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSurveyJobWithOptions(_ request: DescribeSurveyJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSurveyJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSurveyJob",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/winback/query-survey-job",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSurveyJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSurveyJob(_ request: DescribeSurveyJobRequest) async throws -> DescribeSurveyJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSurveyJobWithOptions(request as! DescribeSurveyJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSurveyJobCountWithOptions(_ request: DescribeSurveyJobCountRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSurveyJobCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelList)) {
            body["channelList"] = request.channelList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.cloudTypeList)) {
            body["cloudTypeList"] = request.cloudTypeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSurveyJobCount",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/winback/count-survey-job",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSurveyJobCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSurveyJobCount(_ request: DescribeSurveyJobCountRequest) async throws -> DescribeSurveyJobCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSurveyJobCountWithOptions(request as! DescribeSurveyJobCountRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSurveyResourceTagWithOptions(_ request: DescribeSurveyResourceTagRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSurveyResourceTagResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceUserIdList)) {
            body["sourceUserIdList"] = request.sourceUserIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSurveyResourceTag",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/confirm-resource/get-resource-tag",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSurveyResourceTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSurveyResourceTag(_ request: DescribeSurveyResourceTagRequest) async throws -> DescribeSurveyResourceTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSurveyResourceTagWithOptions(request as! DescribeSurveyResourceTagRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSurveyTemplateWithOptions(_ request: DescribeSurveyTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSurveyTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSurveyTemplate",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/survey-template/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSurveyTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSurveyTemplate(_ request: DescribeSurveyTemplateRequest) async throws -> DescribeSurveyTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSurveyTemplateWithOptions(request as! DescribeSurveyTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableMetaInfoWithOptions(_ request: GetTableMetaInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableMetaInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceDialect)) {
            body["sourceDialect"] = request.sourceDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceSqlScript)) {
            body["sourceSqlScript"] = request.sourceSqlScript ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDialect)) {
            body["targetDialect"] = request.targetDialect ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableMetaInfo",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/sql-translator/open/single/get-table-info",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableMetaInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableMetaInfo(_ request: GetTableMetaInfoRequest) async throws -> GetTableMetaInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableMetaInfoWithOptions(request as! GetTableMetaInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskDetailWithOptions(_ request: GetTaskDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTaskDetail",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/jobMigrate/sqlTranslator/task/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskDetail(_ request: GetTaskDetailRequest) async throws -> GetTaskDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTaskDetailWithOptions(request as! GetTaskDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppDownloadHistoryWithOptions(_ request: ListAppDownloadHistoryRequest, _ headers: ListAppDownloadHistoryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppDownloadHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["startDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantUid)) {
            body["tenantUid"] = request.tenantUid ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.bizModuleCode)) {
            realHeaders["biz-module-code"] = TeaUtils.Client.toJSONString(headers.bizModuleCode);
        }
        if (!TeaUtils.Client.isUnset(headers.tenantProxyUid)) {
            realHeaders["tenant-proxy-uid"] = TeaUtils.Client.toJSONString(headers.tenantProxyUid);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAppDownloadHistory",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/abm/app/manager/api/v1/fetchAppDownloadHistory",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppDownloadHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppDownloadHistory(_ request: ListAppDownloadHistoryRequest) async throws -> ListAppDownloadHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListAppDownloadHistoryHeaders = ListAppDownloadHistoryHeaders([:])
        return try await listAppDownloadHistoryWithOptions(request as! ListAppDownloadHistoryRequest, headers as! ListAppDownloadHistoryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMigrationJobsWithOptions(_ request: ListMigrationJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMigrationJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchTaskGroupId)) {
            body["batchTaskGroupId"] = request.batchTaskGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.cutoverPlanId)) {
            body["cutoverPlanId"] = request.cutoverPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSideId)) {
            body["outSideId"] = request.outSideId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortCol)) {
            body["sortCol"] = request.sortCol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            body["sortType"] = request.sortType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.surveyResourceId)) {
            body["surveyResourceId"] = request.surveyResourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.tagList)) {
            body["tagList"] = request.tagList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.typeList)) {
            body["typeList"] = request.typeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.usedType)) {
            body["usedType"] = request.usedType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMigrationJobs",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/migration-job/describe-migration-jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMigrationJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMigrationJobs(_ request: ListMigrationJobsRequest) async throws -> ListMigrationJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMigrationJobsWithOptions(request as! ListMigrationJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyJobDownLoadJobsWithOptions(_ request: ListSurveyJobDownLoadJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSurveyJobDownLoadJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortCol)) {
            body["sortCol"] = request.sortCol ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            body["sortType"] = request.sortType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSurveyJobDownLoadJobs",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/file-job/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSurveyJobDownLoadJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyJobDownLoadJobs(_ request: ListSurveyJobDownLoadJobsRequest) async throws -> ListSurveyJobDownLoadJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSurveyJobDownLoadJobsWithOptions(request as! ListSurveyJobDownLoadJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyJobsWithOptions(_ request: ListSurveyJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSurveyJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelList)) {
            body["channelList"] = request.channelList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.cloudTypeList)) {
            body["cloudTypeList"] = request.cloudTypeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["region"] = request.region ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.surveyRange)) {
            body["surveyRange"] = request.surveyRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSurveyJobs",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/winback/query-survey-jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSurveyJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyJobs(_ request: ListSurveyJobsRequest) async throws -> ListSurveyJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSurveyJobsWithOptions(request as! ListSurveyJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyResourceByMigrationGroupsWithOptions(_ tmpReq: ListSurveyResourceByMigrationGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSurveyResourceByMigrationGroupsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListSurveyResourceByMigrationGroupsShrinkRequest = ListSurveyResourceByMigrationGroupsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            query["body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSurveyResourceByMigrationGroups",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/migration-group/get-survey-resource",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSurveyResourceByMigrationGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyResourceByMigrationGroups(_ request: ListSurveyResourceByMigrationGroupsRequest) async throws -> ListSurveyResourceByMigrationGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSurveyResourceByMigrationGroupsWithOptions(request as! ListSurveyResourceByMigrationGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyResourceConnectionsWithOptions(_ request: ListSurveyResourceConnectionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSurveyResourceConnectionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ids)) {
            body["ids"] = request.ids ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSurveyResourceConnections",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/resource-connects",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSurveyResourceConnectionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyResourceConnections(_ request: ListSurveyResourceConnectionsRequest) async throws -> ListSurveyResourceConnectionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSurveyResourceConnectionsWithOptions(request as! ListSurveyResourceConnectionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyResourceTypesWithOptions(_ request: ListSurveyResourceTypesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSurveyResourceTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ak)) {
            query["ak"] = request.ak ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cloudType)) {
            query["cloudType"] = request.cloudType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sk)) {
            query["sk"] = request.sk ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSurveyResourceTypes",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/winback/query-resource-type",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSurveyResourceTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyResourceTypes(_ request: ListSurveyResourceTypesRequest) async throws -> ListSurveyResourceTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSurveyResourceTypesWithOptions(request as! ListSurveyResourceTypesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyResourcesDetailWithOptions(_ request: ListSurveyResourcesDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSurveyResourcesDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ip)) {
            body["ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["jobId"] = request.jobId!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subProjectId)) {
            body["subProjectId"] = request.subProjectId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSurveyResourcesDetail",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/survey-detail/query",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSurveyResourcesDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSurveyResourcesDetail(_ request: ListSurveyResourcesDetailRequest) async throws -> ListSurveyResourcesDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSurveyResourcesDetailWithOptions(request as! ListSurveyResourcesDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateTaskWithOptions(_ request: PopCreateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PopCreateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataTypeMappingFile)) {
            body["dataTypeMappingFile"] = request.dataTypeMappingFile!;
        }
        if (!TeaUtils.Client.isUnset(request.dataTypeOssFileName)) {
            body["dataTypeOssFileName"] = request.dataTypeOssFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataTypeOssObjectName)) {
            body["dataTypeOssObjectName"] = request.dataTypeOssObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataTypeRealFileName)) {
            body["dataTypeRealFileName"] = request.dataTypeRealFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dqlAssociationDDLTaskList)) {
            body["dqlAssociationDDLTaskList"] = request.dqlAssociationDDLTaskList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dqlRelateTargetDatasourceId)) {
            body["dqlRelateTargetDatasourceId"] = request.dqlRelateTargetDatasourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dqlTestDatasourceId)) {
            body["dqlTestDatasourceId"] = request.dqlTestDatasourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dqlTestProject)) {
            body["dqlTestProject"] = request.dqlTestProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.globalParams)) {
            body["globalParams"] = request.globalParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            body["identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossObjectName)) {
            body["ossObjectName"] = request.ossObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realFileName)) {
            body["realFileName"] = request.realFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDdlContentOssFileName)) {
            body["relatedDdlContentOssFileName"] = request.relatedDdlContentOssFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDdlContentOssObjectName)) {
            body["relatedDdlContentOssObjectName"] = request.relatedDdlContentOssObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDdlContentRealFileName)) {
            body["relatedDdlContentRealFileName"] = request.relatedDdlContentRealFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDatasourceId)) {
            body["sourceDatasourceId"] = request.sourceDatasourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDialect)) {
            body["sourceDialect"] = request.sourceDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceProject)) {
            body["sourceProject"] = request.sourceProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableNameMappingFile)) {
            body["tableNameMappingFile"] = request.tableNameMappingFile!;
        }
        if (!TeaUtils.Client.isUnset(request.tableNameOssFileName)) {
            body["tableNameOssFileName"] = request.tableNameOssFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableNameOssObjectName)) {
            body["tableNameOssObjectName"] = request.tableNameOssObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableNameRealFileName)) {
            body["tableNameRealFileName"] = request.tableNameRealFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDatasourceId)) {
            body["targetDatasourceId"] = request.targetDatasourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDialect)) {
            body["targetDialect"] = request.targetDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetProject)) {
            body["targetProject"] = request.targetProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDescription)) {
            body["taskDescription"] = request.taskDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["taskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["taskType"] = request.taskType!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transformSchema)) {
            body["transformSchema"] = request.transformSchema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            body["uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopCreateTask",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/jobMigrate/sqlTranslator/task/popAdd",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopCreateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popCreateTask(_ request: PopCreateTaskRequest) async throws -> PopCreateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await popCreateTaskWithOptions(request as! PopCreateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popDownloadTemplateWithOptions(_ request: PopDownloadTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PopDownloadTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.targetDialect)) {
            query["targetDialect"] = request.targetDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopDownloadTemplate",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/jobMigrate/sqlTranslator/task/popDownload/TableNameMappingTemplate",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopDownloadTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popDownloadTemplate(_ request: PopDownloadTemplateRequest) async throws -> PopDownloadTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await popDownloadTemplateWithOptions(request as! PopDownloadTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popEditTaskWithOptions(_ request: PopEditTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PopEditTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configuration)) {
            body["configuration"] = request.configuration!;
        }
        if (!TeaUtils.Client.isUnset(request.dataTypeMappingFile)) {
            body["dataTypeMappingFile"] = request.dataTypeMappingFile!;
        }
        if (!TeaUtils.Client.isUnset(request.dataTypeOssFileName)) {
            body["dataTypeOssFileName"] = request.dataTypeOssFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataTypeOssObjectName)) {
            body["dataTypeOssObjectName"] = request.dataTypeOssObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataTypeRealFileName)) {
            body["dataTypeRealFileName"] = request.dataTypeRealFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dqlAssociationDDLTaskList)) {
            body["dqlAssociationDDLTaskList"] = request.dqlAssociationDDLTaskList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dqlRelateTargetDatasourceId)) {
            body["dqlRelateTargetDatasourceId"] = request.dqlRelateTargetDatasourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dqlTestDatasourceId)) {
            body["dqlTestDatasourceId"] = request.dqlTestDatasourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dqlTestProject)) {
            body["dqlTestProject"] = request.dqlTestProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.globalParams)) {
            body["globalParams"] = request.globalParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            body["identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossObjectName)) {
            body["ossObjectName"] = request.ossObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realFileName)) {
            body["realFileName"] = request.realFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDdlContentOssFileName)) {
            body["relatedDdlContentOssFileName"] = request.relatedDdlContentOssFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDdlContentOssObjectName)) {
            body["relatedDdlContentOssObjectName"] = request.relatedDdlContentOssObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedDdlContentRealFileName)) {
            body["relatedDdlContentRealFileName"] = request.relatedDdlContentRealFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDatasourceId)) {
            body["sourceDatasourceId"] = request.sourceDatasourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDialect)) {
            body["sourceDialect"] = request.sourceDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceProject)) {
            body["sourceProject"] = request.sourceProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableNameMappingFile)) {
            body["tableNameMappingFile"] = request.tableNameMappingFile!;
        }
        if (!TeaUtils.Client.isUnset(request.tableNameOssFileName)) {
            body["tableNameOssFileName"] = request.tableNameOssFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableNameOssObjectName)) {
            body["tableNameOssObjectName"] = request.tableNameOssObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableNameRealFileName)) {
            body["tableNameRealFileName"] = request.tableNameRealFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDatasourceId)) {
            body["targetDatasourceId"] = request.targetDatasourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDialect)) {
            body["targetDialect"] = request.targetDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetProject)) {
            body["targetProject"] = request.targetProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDescription)) {
            body["taskDescription"] = request.taskDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["taskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["taskType"] = request.taskType!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transformSchema)) {
            body["transformSchema"] = request.transformSchema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            body["uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PopEditTask",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/jobMigrate/sqlTranslator/task/popEdit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PopEditTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func popEditTask(_ request: PopEditTaskRequest) async throws -> PopEditTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await popEditTaskWithOptions(request as! PopEditTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recoverMigrationJobWithOptions(_ request: RecoverMigrationJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RecoverMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecoverMigrationJob",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/migration-job/recover-migration-job",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecoverMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recoverMigrationJob(_ request: RecoverMigrationJobRequest) async throws -> RecoverMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await recoverMigrationJobWithOptions(request as! RecoverMigrationJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func singleScriptSyncTranslateWithOptions(_ request: SingleScriptSyncTranslateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SingleScriptSyncTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceDialect)) {
            body["sourceDialect"] = request.sourceDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceSqlScript)) {
            body["sourceSqlScript"] = request.sourceSqlScript ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableMapping)) {
            body["tableMapping"] = request.tableMapping ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetDialect)) {
            body["targetDialect"] = request.targetDialect ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SingleScriptSyncTranslate",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/sql-translator/open/single/translate-sync",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SingleScriptSyncTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func singleScriptSyncTranslate(_ request: SingleScriptSyncTranslateRequest) async throws -> SingleScriptSyncTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await singleScriptSyncTranslateWithOptions(request as! SingleScriptSyncTranslateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSyncMigrationJobWithOptions(_ request: StopSyncMigrationJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopSyncMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            query["jobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopSyncMigrationJob",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/migration-job/unsync-migration-job",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopSyncMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSyncMigrationJob(_ request: StopSyncMigrationJobRequest) async throws -> StopSyncMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopSyncMigrationJobWithOptions(request as! StopSyncMigrationJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncMigrationJobWithOptions(_ request: SyncMigrationJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            query["jobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            query["operationType"] = request.operationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regions)) {
            query["regions"] = request.regions ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncMigrationJob",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/okss-services/migration-job/sync-migration-job",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncMigrationJob(_ request: SyncMigrationJobRequest) async throws -> SyncMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await syncMigrationJobWithOptions(request as! SyncMigrationJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePushAppWithOptions(_ request: UpdatePushAppRequest, _ headers: UpdatePushAppHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePushAppResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["AppId"] = request.appId!;
        }
        if (!TeaUtils.Client.isUnset(request.downloadLink)) {
            body["DownloadLink"] = request.downloadLink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.tenantProxyUid)) {
            realHeaders["tenant-proxy-uid"] = TeaUtils.Client.toJSONString(headers.tenantProxyUid);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePushApp",
            "version": "2022-03-31",
            "protocol": "HTTPS",
            "pathname": "/abm/app/manager/api/v1/push",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePushAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePushApp(_ request: UpdatePushAppRequest) async throws -> UpdatePushAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdatePushAppHeaders = UpdatePushAppHeaders([:])
        return try await updatePushAppWithOptions(request as! UpdatePushAppRequest, headers as! UpdatePushAppHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
