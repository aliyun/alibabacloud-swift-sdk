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
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("paimodelgallery", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createJobPlanWithOptions(_ request: CreateJobPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateJobPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobPlanName)) {
            body["JobPlanName"] = request.jobPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobPlanSteps)) {
            body["JobPlanSteps"] = request.jobPlanSteps ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.jobPlanType)) {
            body["JobPlanType"] = request.jobPlanType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateJobPlan",
            "version": "2025-06-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobplans",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateJobPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createJobPlan(_ request: CreateJobPlanRequest) async throws -> CreateJobPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createJobPlanWithOptions(request as! CreateJobPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteJobPlanWithOptions(_ JobPlanId: String, _ request: DeleteJobPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteJobPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteJobPlan",
            "version": "2025-06-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobplans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobPlanId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteJobPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteJobPlan(_ JobPlanId: String, _ request: DeleteJobPlanRequest) async throws -> DeleteJobPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteJobPlanWithOptions(JobPlanId as! String, request as! DeleteJobPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDistillationTemplateWithOptions(_ TemplateId: String, _ request: GetDistillationTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDistillationTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDistillationTemplate",
            "version": "2025-06-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/distillationtemplates/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TemplateId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDistillationTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDistillationTemplate(_ TemplateId: String, _ request: GetDistillationTemplateRequest) async throws -> GetDistillationTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDistillationTemplateWithOptions(TemplateId as! String, request as! GetDistillationTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobPlanWithOptions(_ JobPlanId: String, _ request: GetJobPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJobPlan",
            "version": "2025-06-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobplans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobPlanId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJobPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobPlan(_ JobPlanId: String, _ request: GetJobPlanRequest) async throws -> GetJobPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJobPlanWithOptions(JobPlanId as! String, request as! GetJobPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDistillationTemplatesWithOptions(_ request: ListDistillationTemplatesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDistillationTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDistillationTemplates",
            "version": "2025-06-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/distillationtemplates",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDistillationTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDistillationTemplates(_ request: ListDistillationTemplatesRequest) async throws -> ListDistillationTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDistillationTemplatesWithOptions(request as! ListDistillationTemplatesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobPlansWithOptions(_ tmpReq: ListJobPlansRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobPlansResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListJobPlansShrinkRequest = ListJobPlansShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hasTemplate)) {
            query["HasTemplate"] = request.hasTemplate!;
        }
        if (!TeaUtils.Client.isUnset(request.jobPlanName)) {
            query["JobPlanName"] = request.jobPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobPlanType)) {
            query["JobPlanType"] = request.jobPlanType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobPlans",
            "version": "2025-06-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobplans",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobPlans(_ request: ListJobPlansRequest) async throws -> ListJobPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJobPlansWithOptions(request as! ListJobPlansRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelGalleryModelsWithOptions(_ tmpReq: ListModelGalleryModelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModelGalleryModelsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListModelGalleryModelsShrinkRequest = ListModelGalleryModelsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.conditions)) {
            request.conditionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.conditions, "Conditions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.collections)) {
            query["Collections"] = request.collections ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compressible)) {
            query["Compressible"] = request.compressible!;
        }
        if (!TeaUtils.Client.isUnset(request.conditionsShrink)) {
            query["Conditions"] = request.conditionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deepThink)) {
            query["DeepThink"] = request.deepThink!;
        }
        if (!TeaUtils.Client.isUnset(request.demonstrable)) {
            query["Demonstrable"] = request.demonstrable!;
        }
        if (!TeaUtils.Client.isUnset(request.deployable)) {
            query["Deployable"] = request.deployable!;
        }
        if (!TeaUtils.Client.isUnset(request.distillable)) {
            query["Distillable"] = request.distillable!;
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.evaluable)) {
            query["Evaluable"] = request.evaluable!;
        }
        if (!TeaUtils.Client.isUnset(request.functionCall)) {
            query["FunctionCall"] = request.functionCall!;
        }
        if (!TeaUtils.Client.isUnset(request.modelName)) {
            query["ModelName"] = request.modelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelSeries)) {
            query["ModelSeries"] = request.modelSeries ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelType)) {
            query["ModelType"] = request.modelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["Origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportedCompressionResource)) {
            query["SupportedCompressionResource"] = request.supportedCompressionResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportedDistillationResource)) {
            query["SupportedDistillationResource"] = request.supportedDistillationResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportedEvaluationResource)) {
            query["SupportedEvaluationResource"] = request.supportedEvaluationResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportedInferenceResource)) {
            query["SupportedInferenceResource"] = request.supportedInferenceResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportedTrainingResource)) {
            query["SupportedTrainingResource"] = request.supportedTrainingResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.task)) {
            query["Task"] = request.task ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainable)) {
            query["Trainable"] = request.trainable!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListModelGalleryModels",
            "version": "2025-06-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/modelgallery/models",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModelGalleryModelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelGalleryModels(_ request: ListModelGalleryModelsRequest) async throws -> ListModelGalleryModelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listModelGalleryModelsWithOptions(request as! ListModelGalleryModelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateJobPlanWithOptions(_ JobPlanId: String, _ request: UpdateJobPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateJobPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobPlanCurrentStep)) {
            body["JobPlanCurrentStep"] = request.jobPlanCurrentStep ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateJobPlan",
            "version": "2025-06-30",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobplans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobPlanId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateJobPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateJobPlan(_ JobPlanId: String, _ request: UpdateJobPlanRequest) async throws -> UpdateJobPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateJobPlanWithOptions(JobPlanId as! String, request as! UpdateJobPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
