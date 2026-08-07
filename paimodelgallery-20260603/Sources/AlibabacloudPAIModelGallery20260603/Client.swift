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
            "us-west-1": "paimodelgallery.us-west-1.aliyuncs.com",
            "us-east-1": "paimodelgallery.us-east-1.aliyuncs.com",
            "eu-central-1": "paimodelgallery.eu-central-1.aliyuncs.com",
            "cn-wulanchabu": "paimodelgallery.cn-wulanchabu.aliyuncs.com",
            "cn-shenzhen": "paimodelgallery.cn-shenzhen.aliyuncs.com",
            "cn-shanghai": "paimodelgallery.cn-shanghai.aliyuncs.com",
            "cn-hongkong": "paimodelgallery.cn-hongkong.aliyuncs.com",
            "cn-hangzhou": "paimodelgallery.cn-hangzhou.aliyuncs.com",
            "cn-guangzhou": "paimodelgallery.cn-guangzhou.aliyuncs.com",
            "cn-beijing": "paimodelgallery.cn-beijing.aliyuncs.com",
            "ap-southeast-5": "paimodelgallery.ap-southeast-5.aliyuncs.com",
            "ap-southeast-3": "paimodelgallery.ap-southeast-3.aliyuncs.com",
            "ap-southeast-1": "paimodelgallery.ap-southeast-1.aliyuncs.com",
            "ap-northeast-2": "paimodelgallery.ap-northeast-2.aliyuncs.com",
            "ap-northeast-1": "paimodelgallery.ap-northeast-1.aliyuncs.com"
        ]
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
            "version": "2026-06-03",
            "protocol": "HTTPS",
            "pathname": "/api/v2/modelgallery/models",
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
}
