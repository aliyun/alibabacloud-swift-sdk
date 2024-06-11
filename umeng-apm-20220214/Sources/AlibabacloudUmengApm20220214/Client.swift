import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("umeng-apm", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func deleteSymRecordsWithOptions(_ tmpReq: DeleteSymRecordsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSymRecordsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteSymRecordsShrinkRequest = DeleteSymRecordsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.appVersions)) {
            request.appVersionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.appVersions, "appVersions", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersionsShrink)) {
            body["appVersions"] = request.appVersionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            body["fileType"] = request.fileType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSymRecords",
            "version": "2022-02-14",
            "protocol": "HTTPS",
            "pathname": "/deleteSymRecords",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSymRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSymRecords(_ request: DeleteSymRecordsRequest) async throws -> DeleteSymRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSymRecordsWithOptions(request as! DeleteSymRecordsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getH5PageTrendWithOptions(_ request: GetH5PageTrendRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetH5PageTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["appVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["endDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["startDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeUnit)) {
            query["timeUnit"] = request.timeUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetH5PageTrend",
            "version": "2022-02-14",
            "protocol": "HTTPS",
            "pathname": "/stat/getH5PageTrend",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetH5PageTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getH5PageTrend(_ request: GetH5PageTrendRequest) async throws -> GetH5PageTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getH5PageTrendWithOptions(request as! GetH5PageTrendRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLaunchTrendWithOptions(_ request: GetLaunchTrendRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLaunchTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["appVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["endDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["startDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeUnit)) {
            query["timeUnit"] = request.timeUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLaunchTrend",
            "version": "2022-02-14",
            "protocol": "HTTPS",
            "pathname": "/stat/getLaunchTrend",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLaunchTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLaunchTrend(_ request: GetLaunchTrendRequest) async throws -> GetLaunchTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLaunchTrendWithOptions(request as! GetLaunchTrendRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNativePageTrendWithOptions(_ request: GetNativePageTrendRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNativePageTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["appVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["endDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["startDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeUnit)) {
            query["timeUnit"] = request.timeUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNativePageTrend",
            "version": "2022-02-14",
            "protocol": "HTTPS",
            "pathname": "/stat/getNativePageTrend",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNativePageTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNativePageTrend(_ request: GetNativePageTrendRequest) async throws -> GetNativePageTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getNativePageTrendWithOptions(request as! GetNativePageTrendRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNetworkTrendWithOptions(_ request: GetNetworkTrendRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNetworkTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["appVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["endDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["startDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeUnit)) {
            query["timeUnit"] = request.timeUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNetworkTrend",
            "version": "2022-02-14",
            "protocol": "HTTPS",
            "pathname": "/stat/getNetworkTrend",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNetworkTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNetworkTrend(_ request: GetNetworkTrendRequest) async throws -> GetNetworkTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getNetworkTrendWithOptions(request as! GetNetworkTrendRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStatTrendWithOptions(_ request: GetStatTrendRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStatTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["appVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["endDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["startDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStatTrend",
            "version": "2022-02-14",
            "protocol": "HTTPS",
            "pathname": "/stat/getStatTrend",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStatTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStatTrend(_ request: GetStatTrendRequest) async throws -> GetStatTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getStatTrendWithOptions(request as! GetStatTrendRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSymUploadParamWithOptions(_ request: GetSymUploadParamRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSymUploadParamResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["appVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            query["fileType"] = request.fileType!;
        }
        if (!TeaUtils.Client.isUnset(request.flutterName)) {
            query["flutterName"] = request.flutterName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSymUploadParam",
            "version": "2022-02-14",
            "protocol": "HTTPS",
            "pathname": "/getSymUploadParam",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSymUploadParamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSymUploadParam(_ request: GetSymUploadParamRequest) async throws -> GetSymUploadParamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSymUploadParamWithOptions(request as! GetSymUploadParamRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTodayStatTrendWithOptions(_ request: GetTodayStatTrendRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTodayStatTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["appVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTodayStatTrend",
            "version": "2022-02-14",
            "protocol": "HTTPS",
            "pathname": "/stat/getTodayStatTrend",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTodayStatTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTodayStatTrend(_ request: GetTodayStatTrendRequest) async throws -> GetTodayStatTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTodayStatTrendWithOptions(request as! GetTodayStatTrendRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlertPlanWithOptions(_ request: UpdateAlertPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAlertPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["planId"] = request.planId!;
        }
        if (!TeaUtils.Client.isUnset(request.versions)) {
            query["versions"] = request.versions ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAlertPlan",
            "version": "2022-02-14",
            "protocol": "HTTPS",
            "pathname": "/updateAlertPlan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAlertPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAlertPlan(_ request: UpdateAlertPlanRequest) async throws -> UpdateAlertPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAlertPlanWithOptions(request as! UpdateAlertPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadSymbolFileWithOptions(_ request: UploadSymbolFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadSymbolFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["appVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            query["fileType"] = request.fileType!;
        }
        if (!TeaUtils.Client.isUnset(request.flutterName)) {
            query["flutterName"] = request.flutterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossUrl)) {
            query["ossUrl"] = request.ossUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadSymbolFile",
            "version": "2022-02-14",
            "protocol": "HTTPS",
            "pathname": "/uploadSymbolFile",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadSymbolFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadSymbolFile(_ request: UploadSymbolFileRequest) async throws -> UploadSymbolFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await uploadSymbolFileWithOptions(request as! UploadSymbolFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadSymbolFileAdvance(_ request: UploadSymbolFileAdvanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadSymbolFileResponse {
        var accessKeyId: String = try await self._credential!.getAccessKeyId()
        var accessKeySecret: String = try await self._credential!.getAccessKeySecret()
        var securityToken: String = try await self._credential!.getSecurityToken()
        var credentialType: String = self._credential!.getType()
        var openPlatformEndpoint: String = self._openPlatformEndpoint ?? ""
        if (TeaUtils.Client.empty(openPlatformEndpoint)) {
            openPlatformEndpoint = "openplatform.aliyuncs.com"
        }
        if (TeaUtils.Client.isUnset(credentialType)) {
            credentialType = "access_key"
        }
        var authConfig: AlibabacloudOpenApi.Config = AlibabacloudOpenApi.Config([
            "accessKeyId": accessKeyId as! String,
            "accessKeySecret": accessKeySecret as! String,
            "securityToken": securityToken as! String,
            "type": credentialType as! String,
            "endpoint": openPlatformEndpoint as! String,
            "protocol": self._protocol ?? "",
            "regionId": self._regionId ?? ""
        ])
        var authClient: AlibabacloudOpenPlatform20191219.Client = try AlibabacloudOpenPlatform20191219.Client(authConfig)
        var authRequest: AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest = AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest([
            "product": "umeng-apm",
            "regionId": self._regionId ?? ""
        ])
        var authResponse: AlibabacloudOpenPlatform20191219.AuthorizeFileUploadResponse = AlibabacloudOpenPlatform20191219.AuthorizeFileUploadResponse([:])
        var ossConfig: AlibabaCloudOssSdk.Config = AlibabaCloudOssSdk.Config([
            "accessKeyId": accessKeyId as! String,
            "accessKeySecret": accessKeySecret as! String,
            "type": "access_key",
            "protocol": self._protocol ?? "",
            "regionId": self._regionId ?? ""
        ])
        var ossClient: AlibabaCloudOssSdk.Client = try AlibabaCloudOssSdk.Client(ossConfig)
        var fileObj: TeaFileForm.FileField = TeaFileForm.FileField([:])
        var ossHeader: AlibabaCloudOssSdk.PostObjectRequest.Header = AlibabaCloudOssSdk.PostObjectRequest.Header([:])
        var uploadRequest: AlibabaCloudOssSdk.PostObjectRequest = AlibabaCloudOssSdk.PostObjectRequest([:])
        var ossRuntime: AlibabaCloudOSSUtil.RuntimeOptions = AlibabaCloudOSSUtil.RuntimeOptions([:])
        AlibabaCloudOpenApiUtil.Client.convert(runtime, ossRuntime)
        var uploadSymbolFileReq: UploadSymbolFileRequest = UploadSymbolFileRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, uploadSymbolFileReq)
        if (!TeaUtils.Client.isUnset(request.ossUrlObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.ossUrlObject!,
                "contentType": ""
            ])
            ossHeader = AlibabaCloudOssSdk.PostObjectRequest.Header([
                "accessKeyId": authResponse.body!.accessKeyId ?? "",
                "policy": authResponse.body!.encodedPolicy ?? "",
                "signature": authResponse.body!.signature ?? "",
                "key": authResponse.body!.objectKey ?? "",
                "file": fileObj as! TeaFileForm.FileField,
                "successActionStatus": "201"
            ])
            uploadRequest = AlibabaCloudOssSdk.PostObjectRequest([
                "bucketName": authResponse.body!.bucket ?? "",
                "header": ossHeader as! AlibabaCloudOssSdk.PostObjectRequest.Header
            ])
            try await ossClient.postObject(uploadRequest as! AlibabaCloudOssSdk.PostObjectRequest, ossRuntime as! AlibabaCloudOSSUtil.RuntimeOptions)
            uploadSymbolFileReq.ossUrl = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var uploadSymbolFileResp: UploadSymbolFileResponse = try await uploadSymbolFileWithOptions(uploadSymbolFileReq as! UploadSymbolFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
        return uploadSymbolFileResp as! UploadSymbolFileResponse
    }
}
