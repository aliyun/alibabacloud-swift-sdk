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
            "ap-northeast-1": "maxcompute.aliyuncs.com",
            "ap-northeast-2-pop": "maxcompute.aliyuncs.com",
            "ap-south-1": "maxcompute.aliyuncs.com",
            "ap-southeast-1": "maxcompute.aliyuncs.com",
            "ap-southeast-2": "maxcompute.aliyuncs.com",
            "ap-southeast-3": "maxcompute.aliyuncs.com",
            "ap-southeast-5": "maxcompute.aliyuncs.com",
            "cn-beijing": "maxcompute.aliyuncs.com",
            "cn-beijing-finance-1": "maxcompute.aliyuncs.com",
            "cn-beijing-finance-pop": "maxcompute.aliyuncs.com",
            "cn-beijing-gov-1": "maxcompute.aliyuncs.com",
            "cn-beijing-nu16-b01": "maxcompute.aliyuncs.com",
            "cn-chengdu": "maxcompute.aliyuncs.com",
            "cn-edge-1": "maxcompute.aliyuncs.com",
            "cn-fujian": "maxcompute.aliyuncs.com",
            "cn-haidian-cm12-c01": "maxcompute.aliyuncs.com",
            "cn-hangzhou": "maxcompute.aliyuncs.com",
            "cn-hangzhou-bj-b01": "maxcompute.aliyuncs.com",
            "cn-hangzhou-finance": "maxcompute.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "maxcompute.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "maxcompute.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "maxcompute.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "maxcompute.aliyuncs.com",
            "cn-hangzhou-test-306": "maxcompute.aliyuncs.com",
            "cn-hongkong": "maxcompute.aliyuncs.com",
            "cn-hongkong-finance-pop": "maxcompute.aliyuncs.com",
            "cn-huhehaote": "maxcompute.aliyuncs.com",
            "cn-north-2-gov-1": "maxcompute.aliyuncs.com",
            "cn-qingdao": "maxcompute.aliyuncs.com",
            "cn-qingdao-nebula": "maxcompute.aliyuncs.com",
            "cn-shanghai": "maxcompute.aliyuncs.com",
            "cn-shanghai-et15-b01": "maxcompute.aliyuncs.com",
            "cn-shanghai-et2-b01": "maxcompute.aliyuncs.com",
            "cn-shanghai-finance-1": "maxcompute.aliyuncs.com",
            "cn-shanghai-inner": "maxcompute.aliyuncs.com",
            "cn-shanghai-internal-test-1": "maxcompute.aliyuncs.com",
            "cn-shenzhen": "maxcompute.aliyuncs.com",
            "cn-shenzhen-finance-1": "maxcompute.aliyuncs.com",
            "cn-shenzhen-inner": "maxcompute.aliyuncs.com",
            "cn-shenzhen-st4-d01": "maxcompute.aliyuncs.com",
            "cn-shenzhen-su18-b01": "maxcompute.aliyuncs.com",
            "cn-wuhan": "maxcompute.aliyuncs.com",
            "cn-yushanfang": "maxcompute.aliyuncs.com",
            "cn-zhangbei-na61-b01": "maxcompute.aliyuncs.com",
            "cn-zhangjiakou": "maxcompute.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "maxcompute.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "maxcompute.aliyuncs.com",
            "eu-central-1": "maxcompute.aliyuncs.com",
            "eu-west-1": "maxcompute.aliyuncs.com",
            "eu-west-1-oxs": "maxcompute.aliyuncs.com",
            "me-east-1": "maxcompute.aliyuncs.com",
            "rus-west-1-pop": "maxcompute.aliyuncs.com",
            "us-east-1": "maxcompute.aliyuncs.com",
            "us-west-1": "maxcompute.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("maxcompute", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createPackageWithOptions(_ projectName: String, _ request: CreatePackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isInstall)) {
            query["isInstall"] = request.isInstall!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePackage",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/packages",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPackage(_ projectName: String, _ request: CreatePackageRequest) async throws -> CreatePackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPackageWithOptions(projectName as! String, request as! CreatePackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProjectWithOptions(_ request: CreateProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProject",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProject(_ request: CreateProjectRequest) async throws -> CreateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProjectWithOptions(request as! CreateProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQuotaPlanWithOptions(_ nickname: String, _ request: CreateQuotaPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateQuotaPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname) + "/plans",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQuotaPlan(_ nickname: String, _ request: CreateQuotaPlanRequest) async throws -> CreateQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createQuotaPlanWithOptions(nickname as! String, request as! CreateQuotaPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQuotaScheduleWithOptions(_ nickname: String, _ request: CreateQuotaScheduleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateQuotaScheduleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateQuotaSchedule",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname) + "/schedule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateQuotaScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQuotaSchedule(_ nickname: String, _ request: CreateQuotaScheduleRequest) async throws -> CreateQuotaScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createQuotaScheduleWithOptions(nickname as! String, request as! CreateQuotaScheduleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRoleWithOptions(_ projectName: String, _ request: CreateRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRole",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/roles",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRole(_ projectName: String, _ request: CreateRoleRequest) async throws -> CreateRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRoleWithOptions(projectName as! String, request as! CreateRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteQuotaPlanWithOptions(_ nickname: String, _ planName: String, _ request: DeleteQuotaPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteQuotaPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname) + "/plans/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(planName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteQuotaPlan(_ nickname: String, _ planName: String, _ request: DeleteQuotaPlanRequest) async throws -> DeleteQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteQuotaPlanWithOptions(nickname as! String, planName as! String, request as! DeleteQuotaPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobResourceUsageWithOptions(_ tmpReq: GetJobResourceUsageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobResourceUsageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetJobResourceUsageShrinkRequest = GetJobResourceUsageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.jobOwnerList)) {
            request.jobOwnerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.jobOwnerList, "jobOwnerList", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.quotaNicknameList)) {
            request.quotaNicknameListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.quotaNicknameList, "quotaNicknameList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.date)) {
            query["date"] = request.date ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobOwnerListShrink)) {
            query["jobOwnerList"] = request.jobOwnerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.quotaNicknameListShrink)) {
            query["quotaNicknameList"] = request.quotaNicknameListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJobResourceUsage",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/resourceUsage",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJobResourceUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobResourceUsage(_ request: GetJobResourceUsageRequest) async throws -> GetJobResourceUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJobResourceUsageWithOptions(request as! GetJobResourceUsageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPackageWithOptions(_ projectName: String, _ packageName: String, _ request: GetPackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceProject)) {
            query["sourceProject"] = request.sourceProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPackage",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/packages/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(packageName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPackage(_ projectName: String, _ packageName: String, _ request: GetPackageRequest) async throws -> GetPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPackageWithOptions(projectName as! String, packageName as! String, request as! GetPackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectWithOptions(_ projectName: String, _ request: GetProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["verbose"] = request.verbose!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProject",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProject(_ projectName: String, _ request: GetProjectRequest) async throws -> GetProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProjectWithOptions(projectName as! String, request as! GetProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaWithOptions(_ nickname: String, _ request: GetQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.akProven)) {
            query["AkProven"] = request.akProven ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mock)) {
            query["mock"] = request.mock!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQuota",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuota(_ nickname: String, _ request: GetQuotaRequest) async throws -> GetQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQuotaWithOptions(nickname as! String, request as! GetQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaPlanWithOptions(_ nickname: String, _ planName: String, _ request: GetQuotaPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQuotaPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname) + "/plans/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(planName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaPlan(_ nickname: String, _ planName: String, _ request: GetQuotaPlanRequest) async throws -> GetQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQuotaPlanWithOptions(nickname as! String, planName as! String, request as! GetQuotaPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaScheduleWithOptions(_ nickname: String, _ request: GetQuotaScheduleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQuotaScheduleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayTimezone)) {
            query["displayTimezone"] = request.displayTimezone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQuotaSchedule",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname) + "/schedule",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQuotaScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaSchedule(_ nickname: String, _ request: GetQuotaScheduleRequest) async throws -> GetQuotaScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQuotaScheduleWithOptions(nickname as! String, request as! GetQuotaScheduleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRoleAclWithOptions(_ projectName: String, _ roleName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRoleAclResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRoleAcl",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/roles/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(roleName) + "/roleAcl",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRoleAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRoleAcl(_ projectName: String, _ roleName: String) async throws -> GetRoleAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRoleAclWithOptions(projectName as! String, roleName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRoleAclOnObjectWithOptions(_ projectName: String, _ roleName: String, _ request: GetRoleAclOnObjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRoleAclOnObjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.objectName)) {
            query["objectName"] = request.objectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            query["objectType"] = request.objectType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRoleAclOnObject",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/roles/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(roleName) + "/acl",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRoleAclOnObjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRoleAclOnObject(_ projectName: String, _ roleName: String, _ request: GetRoleAclOnObjectRequest) async throws -> GetRoleAclOnObjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRoleAclOnObjectWithOptions(projectName as! String, roleName as! String, request as! GetRoleAclOnObjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRolePolicyWithOptions(_ projectName: String, _ roleName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRolePolicyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRolePolicy",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/roles/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(roleName) + "/policy",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRolePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRolePolicy(_ projectName: String, _ roleName: String) async throws -> GetRolePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRolePolicyWithOptions(projectName as! String, roleName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRunningJobsWithOptions(_ tmpReq: GetRunningJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRunningJobsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetRunningJobsShrinkRequest = GetRunningJobsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.jobOwnerList)) {
            request.jobOwnerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.jobOwnerList, "jobOwnerList", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.quotaNicknameList)) {
            request.quotaNicknameListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.quotaNicknameList, "quotaNicknameList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.jobOwnerListShrink)) {
            query["jobOwnerList"] = request.jobOwnerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.quotaNicknameListShrink)) {
            query["quotaNicknameList"] = request.quotaNicknameListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            query["to"] = request.to!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRunningJobs",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/runningJobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRunningJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRunningJobs(_ request: GetRunningJobsRequest) async throws -> GetRunningJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRunningJobsWithOptions(request as! GetRunningJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableInfoWithOptions(_ projectName: String, _ tableName: String, _ request: GetTableInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["schemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableInfo",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/tables/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(tableName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableInfo(_ projectName: String, _ tableName: String, _ request: GetTableInfoRequest) async throws -> GetTableInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableInfoWithOptions(projectName as! String, tableName as! String, request as! GetTableInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrustedProjectsWithOptions(_ projectName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrustedProjectsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrustedProjects",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/trustedProjects",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrustedProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrustedProjects(_ projectName: String) async throws -> GetTrustedProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTrustedProjectsWithOptions(projectName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killJobsWithOptions(_ request: KillJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> KillJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KillJobs",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/kill",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KillJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killJobs(_ request: KillJobsRequest) async throws -> KillJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await killJobsWithOptions(request as! KillJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionsWithOptions(_ projectName: String, _ request: ListFunctionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFunctionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxItem)) {
            query["maxItem"] = request.maxItem!;
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["schemaName"] = request.schemaName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFunctions",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/functions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFunctionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctions(_ projectName: String, _ request: ListFunctionsRequest) async throws -> ListFunctionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFunctionsWithOptions(projectName as! String, request as! ListFunctionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobInfosWithOptions(_ request: ListJobInfosRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascOrder)) {
            query["ascOrder"] = request.ascOrder!;
        }
        if (!TeaUtils.Client.isUnset(request.orderColumn)) {
            query["orderColumn"] = request.orderColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobInfos",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobInfos(_ request: ListJobInfosRequest) async throws -> ListJobInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJobInfosWithOptions(request as! ListJobInfosRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPackagesWithOptions(_ projectName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPackagesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPackages",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/packages",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPackagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPackages(_ projectName: String) async throws -> ListPackagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPackagesWithOptions(projectName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectUsersWithOptions(_ projectName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectUsersResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjectUsers",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/users",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectUsers(_ projectName: String) async throws -> ListProjectUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectUsersWithOptions(projectName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectsWithOptions(_ request: ListProjectsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listSystemCatalog)) {
            query["listSystemCatalog"] = request.listSystemCatalog!;
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxItem)) {
            query["maxItem"] = request.maxItem!;
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaName)) {
            query["quotaName"] = request.quotaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaNickName)) {
            query["quotaNickName"] = request.quotaNickName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleTags)) {
            query["saleTags"] = request.saleTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjects",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjects(_ request: ListProjectsRequest) async throws -> ListProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectsWithOptions(request as! ListProjectsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotasWithOptions(_ request: ListQuotasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQuotasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billingType)) {
            query["billingType"] = request.billingType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxItem)) {
            query["maxItem"] = request.maxItem!;
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            query["productId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleTags)) {
            query["saleTags"] = request.saleTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQuotas",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQuotasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotas(_ request: ListQuotasRequest) async throws -> ListQuotasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQuotasWithOptions(request as! ListQuotasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotasPlansWithOptions(_ nickname: String, _ request: ListQuotasPlansRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQuotasPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQuotasPlans",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname) + "/plans",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQuotasPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotasPlans(_ nickname: String, _ request: ListQuotasPlansRequest) async throws -> ListQuotasPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQuotasPlansWithOptions(nickname as! String, request as! ListQuotasPlansRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourcesWithOptions(_ projectName: String, _ request: ListResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxItem)) {
            query["maxItem"] = request.maxItem!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["schemaName"] = request.schemaName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResources",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResources(_ projectName: String, _ request: ListResourcesRequest) async throws -> ListResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourcesWithOptions(projectName as! String, request as! ListResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRolesWithOptions(_ projectName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRolesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRoles",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/roles",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRoles(_ projectName: String) async throws -> ListRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRolesWithOptions(projectName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTablesWithOptions(_ projectName: String, _ request: ListTablesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxItem)) {
            query["maxItem"] = request.maxItem!;
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["schemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTables",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/tables",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTables(_ projectName: String, _ request: ListTablesRequest) async throws -> ListTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTablesWithOptions(projectName as! String, request as! ListTablesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ request: ListUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/users",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsers(_ request: ListUsersRequest) async throws -> ListUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUsersWithOptions(request as! ListUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersByRoleWithOptions(_ projectName: String, _ roleName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersByRoleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsersByRole",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/roles/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(roleName) + "/users",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUsersByRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersByRole(_ projectName: String, _ roleName: String) async throws -> ListUsersByRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUsersByRoleWithOptions(projectName as! String, roleName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePackageWithOptions(_ projectName: String, _ packageName: String, _ request: UpdatePackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePackageResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePackage",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/packages/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(packageName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePackage(_ projectName: String, _ packageName: String, _ request: UpdatePackageRequest) async throws -> UpdatePackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePackageWithOptions(projectName as! String, packageName as! String, request as! UpdatePackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectIpWhiteListWithOptions(_ projectName: String, _ request: UpdateProjectIpWhiteListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectIpWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProjectIpWhiteList",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName) + "/ipWhiteList",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectIpWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectIpWhiteList(_ projectName: String, _ request: UpdateProjectIpWhiteListRequest) async throws -> UpdateProjectIpWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProjectIpWhiteListWithOptions(projectName as! String, request as! UpdateProjectIpWhiteListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaWithOptions(_ nickname: String, _ request: UpdateQuotaRequest, _ headers: UpdateQuotaHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.akProven)) {
            realHeaders["AkProven"] = TeaUtils.Client.toJSONString(headers.akProven);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateQuota",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuota(_ nickname: String, _ request: UpdateQuotaRequest) async throws -> UpdateQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateQuotaHeaders = UpdateQuotaHeaders([:])
        return try await updateQuotaWithOptions(nickname as! String, request as! UpdateQuotaRequest, headers as! UpdateQuotaHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaPlanWithOptions(_ nickname: String, _ planName: String, _ request: UpdateQuotaPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateQuotaPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname) + "/plans/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(planName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaPlan(_ nickname: String, _ planName: String, _ request: UpdateQuotaPlanRequest) async throws -> UpdateQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateQuotaPlanWithOptions(nickname as! String, planName as! String, request as! UpdateQuotaPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaScheduleWithOptions(_ nickname: String, _ request: UpdateQuotaScheduleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateQuotaScheduleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateQuotaSchedule",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname) + "/schedule",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateQuotaScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaSchedule(_ nickname: String, _ request: UpdateQuotaScheduleRequest) async throws -> UpdateQuotaScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateQuotaScheduleWithOptions(nickname as! String, request as! UpdateQuotaScheduleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
