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
            "ap-northeast-2-pop": "mts.aliyuncs.com",
            "ap-southeast-2": "mts.aliyuncs.com",
            "ap-southeast-3": "mts.aliyuncs.com",
            "cn-beijing-finance-1": "mts.aliyuncs.com",
            "cn-beijing-finance-pop": "mts.aliyuncs.com",
            "cn-beijing-gov-1": "mts.aliyuncs.com",
            "cn-beijing-nu16-b01": "mts.aliyuncs.com",
            "cn-chengdu": "mts.aliyuncs.com",
            "cn-edge-1": "mts.aliyuncs.com",
            "cn-fujian": "mts.aliyuncs.com",
            "cn-haidian-cm12-c01": "mts.aliyuncs.com",
            "cn-hangzhou-bj-b01": "mts.aliyuncs.com",
            "cn-hangzhou-finance": "mts.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "mts.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "mts.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "mts.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "mts.aliyuncs.com",
            "cn-hangzhou-test-306": "mts.aliyuncs.com",
            "cn-hongkong-finance-pop": "mts.aliyuncs.com",
            "cn-huhehaote-nebula-1": "mts.aliyuncs.com",
            "cn-north-2-gov-1": "mts.aliyuncs.com",
            "cn-qingdao-nebula": "mts.aliyuncs.com",
            "cn-shanghai-et15-b01": "mts.aliyuncs.com",
            "cn-shanghai-et2-b01": "mts.aliyuncs.com",
            "cn-shanghai-finance-1": "mts.aliyuncs.com",
            "cn-shanghai-inner": "mts.aliyuncs.com",
            "cn-shanghai-internal-test-1": "mts.aliyuncs.com",
            "cn-shenzhen-finance-1": "mts.aliyuncs.com",
            "cn-shenzhen-inner": "mts.aliyuncs.com",
            "cn-shenzhen-st4-d01": "mts.aliyuncs.com",
            "cn-shenzhen-su18-b01": "mts.aliyuncs.com",
            "cn-wuhan": "mts.aliyuncs.com",
            "cn-wulanchabu": "mts.aliyuncs.com",
            "cn-yushanfang": "mts.aliyuncs.com",
            "cn-zhangbei": "mts.aliyuncs.com",
            "cn-zhangbei-na61-b01": "mts.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "mts.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "mts.aliyuncs.com",
            "eu-west-1-oxs": "mts.aliyuncs.com",
            "me-east-1": "mts.aliyuncs.com",
            "rus-west-1-pop": "mts.aliyuncs.com",
            "us-east-1": "mts.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("mts", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func queryCopyright(_ request: QueryCopyrightRequest) async throws -> QueryCopyrightResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryCopyrightWithOptions(request as! QueryCopyrightRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCopyrightWithOptions(_ request: QueryCopyrightRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCopyrightResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            body["CreateTimeEnd"] = request.createTimeEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            body["CreateTimeStart"] = request.createTimeStart!;
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            body["Level"] = request.level!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCopyright",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/queryCopyrightJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCopyrightResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCopyrightExtract(_ request: QueryCopyrightExtractRequest) async throws -> QueryCopyrightExtractResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryCopyrightExtractWithOptions(request as! QueryCopyrightExtractRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCopyrightExtractWithOptions(_ request: QueryCopyrightExtractRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCopyrightExtractResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCopyrightExtract",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/queryCopyrightExtract",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCopyrightExtractResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTraceAb(_ request: QueryTraceAbRequest) async throws -> QueryTraceAbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryTraceAbWithOptions(request as! QueryTraceAbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTraceAbWithOptions(_ request: QueryTraceAbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTraceAbResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaId)) {
            body["MediaId"] = request.mediaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTraceAb",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/queryTraceAb",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTraceAbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTraceExtract(_ request: QueryTraceExtractRequest) async throws -> QueryTraceExtractResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryTraceExtractWithOptions(request as! QueryTraceExtractRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTraceExtractWithOptions(_ request: QueryTraceExtractRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTraceExtractResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTraceExtract",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/queryTraceExtract",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTraceExtractResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTraceMu(_ request: QueryTraceMuRequest) async throws -> QueryTraceMuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryTraceMuWithOptions(request as! QueryTraceMuRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTraceMuWithOptions(_ request: QueryTraceMuRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTraceMuResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            body["CreateTimeEnd"] = request.createTimeEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            body["CreateTimeStart"] = request.createTimeStart!;
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            body["Level"] = request.level!;
        }
        if (!TeaUtils.Client.isUnset(request.messageId)) {
            body["MessageId"] = request.messageId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTraceMu",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/queryTraceM3u8",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTraceMuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitCopyrightExtract(_ request: SubmitCopyrightExtractRequest) async throws -> SubmitCopyrightExtractResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitCopyrightExtractWithOptions(request as! SubmitCopyrightExtractRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitCopyrightExtractWithOptions(_ request: SubmitCopyrightExtractRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitCopyrightExtractResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callBack)) {
            body["CallBack"] = request.callBack ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["Input"] = request.input ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            body["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitCopyrightExtract",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/submitCopyrightExtract",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitCopyrightExtractResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitCopyrightJob(_ request: SubmitCopyrightJobRequest) async throws -> SubmitCopyrightJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitCopyrightJobWithOptions(request as! SubmitCopyrightJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitCopyrightJobWithOptions(_ request: SubmitCopyrightJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitCopyrightJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callBack)) {
            body["CallBack"] = request.callBack ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["Input"] = request.input ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            body["Level"] = request.level!;
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            body["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            body["Output"] = request.output ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.totalTime)) {
            body["TotalTime"] = request.totalTime!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            body["UserData"] = request.userData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibleMessage)) {
            body["VisibleMessage"] = request.visibleMessage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitCopyrightJob",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/submitCopyrightJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitCopyrightJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitImageCopyright(_ request: SubmitImageCopyrightRequest) async throws -> SubmitImageCopyrightResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitImageCopyrightWithOptions(request as! SubmitImageCopyrightRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitImageCopyrightWithOptions(_ request: SubmitImageCopyrightRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitImageCopyrightResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["Input"] = request.input ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            body["Level"] = request.level!;
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            body["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            body["Output"] = request.output ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitImageCopyright",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/submitImageCopyright",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitImageCopyrightResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTraceAb(_ request: SubmitTraceAbRequest) async throws -> SubmitTraceAbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitTraceAbWithOptions(request as! SubmitTraceAbRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTraceAbWithOptions(_ request: SubmitTraceAbRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitTraceAbResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callBack)) {
            body["CallBack"] = request.callBack ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cipherBase64ed)) {
            body["CipherBase64ed"] = request.cipherBase64ed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["Input"] = request.input ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            body["Level"] = request.level!;
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            body["Output"] = request.output ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.totalTime)) {
            body["TotalTime"] = request.totalTime!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            body["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitTraceAb",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/submitTraceAb",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitTraceAbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTraceExtract(_ request: SubmitTraceExtractRequest) async throws -> SubmitTraceExtractResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitTraceExtractWithOptions(request as! SubmitTraceExtractRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTraceExtractWithOptions(_ request: SubmitTraceExtractRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitTraceExtractResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callBack)) {
            body["CallBack"] = request.callBack ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["Input"] = request.input ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            body["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitTraceExtract",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/submitTraceExtract",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitTraceExtractResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTracemu(_ request: SubmitTracemuRequest) async throws -> SubmitTracemuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitTracemuWithOptions(request as! SubmitTracemuRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTracemuWithOptions(_ request: SubmitTracemuRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitTracemuResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyUri)) {
            body["KeyUri"] = request.keyUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaId)) {
            body["MediaId"] = request.mediaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            body["Output"] = request.output ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trace)) {
            body["Trace"] = request.trace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitTracemu",
            "version": "2021-07-28",
            "protocol": "HTTPS",
            "pathname": "/submitTraceM3u8",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitTracemuResponse(), tmp)
    }
}
