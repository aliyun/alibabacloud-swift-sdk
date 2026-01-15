import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("energyexpertexternal", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func _postOSSObject(_ bucketName: String, _ data: [String: Any], _ runtime: TeaUtils.RuntimeOptions) async throws -> [String: Any] {
        try runtime.validate()
        var _runtime: [String: Any] = [
            "timeouted": "retry",
            "key": TeaUtils.Client.defaultString(runtime.key, self._key),
            "cert": TeaUtils.Client.defaultString(runtime.cert, self._cert),
            "ca": TeaUtils.Client.defaultString(runtime.ca, self._ca),
            "readTimeout": TeaUtils.Client.defaultNumber(runtime.readTimeout, self._readTimeout),
            "connectTimeout": TeaUtils.Client.defaultNumber(runtime.connectTimeout, self._connectTimeout),
            "httpProxy": TeaUtils.Client.defaultString(runtime.httpProxy, self._httpProxy),
            "httpsProxy": TeaUtils.Client.defaultString(runtime.httpsProxy, self._httpsProxy),
            "noProxy": TeaUtils.Client.defaultString(runtime.noProxy, self._noProxy),
            "socks5Proxy": TeaUtils.Client.defaultString(runtime.socks5Proxy, self._socks5Proxy),
            "socks5NetWork": TeaUtils.Client.defaultString(runtime.socks5NetWork, self._socks5NetWork),
            "maxIdleConns": TeaUtils.Client.defaultNumber(runtime.maxIdleConns, self._maxIdleConns),
            "retry": [
                "retryable": runtime.autoretry!,
                "maxAttempts": TeaUtils.Client.defaultNumber(runtime.maxAttempts, 3)
            ],
            "backoff": [
                "policy": TeaUtils.Client.defaultString(runtime.backoffPolicy, "no"),
                "period": TeaUtils.Client.defaultNumber(runtime.backoffPeriod, 1)
            ],
            "ignoreSSL": AlibabacloudOpenApi.Client.defaultAny(runtime.ignoreSSL, false),
            "tlsMinVersion": self._tlsMinVersion ?? ""
        ]
        var _lastRequest: Tea.TeaRequest? = nil
        var _lastException: Tea.TeaError? = nil
        var _now: Int32 = Tea.TeaCore.timeNow()
        var _retryTimes: Int32 = 0
        while (Tea.TeaCore.allowRetry(_runtime["retry"], _retryTimes, _now)) {
            if (_retryTimes > 0) {
                var _backoffTime: Int32 = Tea.TeaCore.getBackoffTime(_runtime["backoff"], _retryTimes)
                if (_backoffTime > 0) {
                    Tea.TeaCore.sleep(_backoffTime)
                }
            }
            _retryTimes = _retryTimes + 1
            do {
                var _request: Tea.TeaRequest = Tea.TeaRequest()
                var form: [String: Any] = try TeaUtils.Client.assertAsMap(data)
                var boundary: String = TeaFileForm.Client.getBoundary()
                var host: String = try TeaUtils.Client.assertAsString(form["host"])
                _request.protocol_ = "HTTPS"
                _request.method = "POST"
                _request.pathname = "/"
                _request.headers = [
                    "host": host as! String,
                    "date": TeaUtils.Client.getDateUTCString(),
                    "user-agent": TeaUtils.Client.getUserAgent("")
                ]
                _request.headers["content-type"] = "multipart/form-data; boundary=" + (boundary as! String);
                _request.body = TeaFileForm.Client.toFileForm(form, boundary)
                _lastRequest = _request
                var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request, _runtime)
                var respMap: [String: Any]? = nil
                var bodyStr: String = try await TeaUtils.Client.readAsString(_response.body)
                if (TeaUtils.Client.is4xx(_response.statusCode) || TeaUtils.Client.is5xx(_response.statusCode)) {
                    respMap = DarabonbaXML.Client.parseXml(bodyStr, nil)
                    var err: [String: Any] = try TeaUtils.Client.assertAsMap(respMap["Error"])
                    throw Tea.ReuqestError([
                        "code": err["Code"]!,
                        "message": err["Message"]!,
                        "data": [
                            "httpCode": _response.statusCode,
                            "requestId": err["RequestId"]!,
                            "hostId": err["HostId"]!
                        ]
                    ])
                }
                respMap = DarabonbaXML.Client.parseXml(bodyStr, nil)
                return Tea.TeaConverter.merge([:], respMap)
            }
            catch {
                if (Tea.TeaCore.isRetryable(error)) {
                    _lastException = error as! Tea.RetryableError
                    continue
                }
                throw error
            }
        }
        throw Tea.UnretryableError(_lastRequest, _lastException)
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
    public func addFolderWithOptions(_ request: AddFolderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddFolderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.folderName)) {
            body["folderName"] = request.folderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentFolderId)) {
            body["parentFolderId"] = request.parentFolderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddFolder",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aidoc/folder/add",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddFolderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFolder(_ request: AddFolderRequest) async throws -> AddFolderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addFolderWithOptions(request as! AddFolderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func analyzeVlRealtimeWithOptions(_ request: AnalyzeVlRealtimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AnalyzeVlRealtimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            query["fileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["templateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AnalyzeVlRealtime",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aidoc/document/analyzeVlRealtime",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AnalyzeVlRealtimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func analyzeVlRealtime(_ request: AnalyzeVlRealtimeRequest) async throws -> AnalyzeVlRealtimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await analyzeVlRealtimeWithOptions(request as! AnalyzeVlRealtimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func analyzeVlRealtimeAdvance(_ request: AnalyzeVlRealtimeAdvanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AnalyzeVlRealtimeResponse {
        var credentialModel: AlibabaCloudCredentials.CredentialModel? = nil
        if (TeaUtils.Client.isUnset(self._credential)) {
            throw Tea.ReuqestError([
                "code": "InvalidCredentials",
                "message": "Please set up the credentials correctly. If you are setting them through environment variables, please ensure that ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET are set correctly. See https://help.aliyun.com/zh/sdk/developer-reference/configure-the-alibaba-cloud-accesskey-environment-variable-on-linux-macos-and-windows-systems for more details."
            ])
        }
        credentialModel = try await self._credential!.getCredential()
        var accessKeyId: String = credentialModel.accessKeyId ?? ""
        var accessKeySecret: String = credentialModel.accessKeySecret ?? ""
        var securityToken: String = credentialModel.securityToken ?? ""
        var credentialType: String = credentialModel.type ?? ""
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
        var authClient: AlibabacloudOpenApi.Client = try AlibabacloudOpenApi.Client(authConfig)
        var authRequest: [String: String] = [
            "Product": "energyExpertExternal",
            "RegionId": self._regionId ?? ""
        ]
        var authReq: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(authRequest)
        ])
        var authParams: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeFileUpload",
            "version": "2019-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var authResponse: [String: Any] = [:]
        var fileObj: TeaFileForm.FileField = TeaFileForm.FileField([:])
        var ossHeader: [String: Any] = [:]
        var tmpBody: [String: Any] = [:]
        var useAccelerate: Bool = false
        var authResponseBody: [String: String] = [:]
        var analyzeVlRealtimeReq: AnalyzeVlRealtimeRequest = AnalyzeVlRealtimeRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, analyzeVlRealtimeReq)
        if (!TeaUtils.Client.isUnset(request.fileUrlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.fileUrlObject!,
                "contentType": ""
            ])
            ossHeader = [
                "host": (authResponseBody["Bucket"] ?? "") + "." + (AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponseBody["Endpoint"], useAccelerate, self._endpointType)),
                "OSSAccessKeyId": authResponseBody["AccessKeyId"] ?? "",
                "policy": authResponseBody["EncodedPolicy"] ?? "",
                "Signature": authResponseBody["Signature"] ?? "",
                "key": authResponseBody["ObjectKey"] ?? "",
                "file": fileObj as! TeaFileForm.FileField,
                "success_action_status": "201"
            ]
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            analyzeVlRealtimeReq.fileUrl = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var analyzeVlRealtimeResp: AnalyzeVlRealtimeResponse = try await analyzeVlRealtimeWithOptions(analyzeVlRealtimeReq as! AnalyzeVlRealtimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
        return analyzeVlRealtimeResp as! AnalyzeVlRealtimeResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchSaveInstructionStatusWithOptions(_ request: BatchSaveInstructionStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchSaveInstructionStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.factoryId)) {
            body["factoryId"] = request.factoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pKey)) {
            body["pKey"] = request.pKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            body["statusList"] = request.statusList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchSaveInstructionStatus",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/hvac/batchSaveInstructionStatus",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchSaveInstructionStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchSaveInstructionStatus(_ request: BatchSaveInstructionStatusRequest) async throws -> BatchSaveInstructionStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchSaveInstructionStatusWithOptions(request as! BatchSaveInstructionStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdateSystemRunningPlanWithOptions(_ request: BatchUpdateSystemRunningPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchUpdateSystemRunningPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.controlType)) {
            body["controlType"] = request.controlType!;
        }
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["dateType"] = request.dateType!;
        }
        if (!TeaUtils.Client.isUnset(request.earliestStartupTime)) {
            body["earliestStartupTime"] = request.earliestStartupTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.factoryId)) {
            body["factoryId"] = request.factoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latestShutdownTime)) {
            body["latestShutdownTime"] = request.latestShutdownTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxCarbonDioxide)) {
            body["maxCarbonDioxide"] = request.maxCarbonDioxide!;
        }
        if (!TeaUtils.Client.isUnset(request.maxTem)) {
            body["maxTem"] = request.maxTem!;
        }
        if (!TeaUtils.Client.isUnset(request.minTem)) {
            body["minTem"] = request.minTem!;
        }
        if (!TeaUtils.Client.isUnset(request.seasonMode)) {
            body["seasonMode"] = request.seasonMode!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemId)) {
            body["systemId"] = request.systemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workingEndTime)) {
            body["workingEndTime"] = request.workingEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workingStartTime)) {
            body["workingStartTime"] = request.workingStartTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchUpdateSystemRunningPlan",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/hvac/batchUpdateSystemRunningPlan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchUpdateSystemRunningPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdateSystemRunningPlan(_ request: BatchUpdateSystemRunningPlanRequest) async throws -> BatchUpdateSystemRunningPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchUpdateSystemRunningPlanWithOptions(request as! BatchUpdateSystemRunningPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatWithOptions(_ request: ChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentIds)) {
            body["documentIds"] = request.documentIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.question)) {
            body["question"] = request.question ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Chat",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/chat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chat(_ request: ChatRequest) async throws -> ChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await chatWithOptions(request as! ChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatStreamWithOptions(_ request: ChatStreamRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatStreamResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentIds)) {
            body["documentIds"] = request.documentIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.question)) {
            body["question"] = request.question ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatStream",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/chat/stream",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatStreamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatStream(_ request: ChatStreamRequest) async throws -> ChatStreamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await chatStreamWithOptions(request as! ChatStreamRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChatSessionWithOptions(_ request: CreateChatSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChatSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            body["folderId"] = request.folderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChatSession",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/chat/session/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChatSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChatSession(_ request: CreateChatSessionRequest) async throws -> CreateChatSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createChatSessionWithOptions(request as! CreateChatSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDocumentWithOptions(_ request: DeleteDocumentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDocument",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aidoc/document/delete",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDocument(_ request: DeleteDocumentRequest) async throws -> DeleteDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDocumentWithOptions(request as! DeleteDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFolderWithOptions(_ request: DeleteFolderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFolderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            query["folderId"] = request.folderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFolder",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aidoc/folder/delete",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFolderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFolder(_ request: DeleteFolderRequest) async throws -> DeleteFolderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteFolderWithOptions(request as! DeleteFolderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detailDocumentWithOptions(_ request: DetailDocumentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DetailDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetailDocument",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aidoc/document/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetailDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detailDocument(_ request: DetailDocumentRequest) async throws -> DetailDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await detailDocumentWithOptions(request as! DetailDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editProhibitedDevicesWithOptions(_ request: EditProhibitedDevicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EditProhibitedDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.factoryId)) {
            body["factoryId"] = request.factoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hvacDeviceConfigVOList)) {
            body["hvacDeviceConfigVOList"] = request.hvacDeviceConfigVOList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.systemId)) {
            body["systemId"] = request.systemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EditProhibitedDevices",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/hvac/editProhibitedDevices",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EditProhibitedDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editProhibitedDevices(_ request: EditProhibitedDevicesRequest) async throws -> EditProhibitedDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await editProhibitedDevicesWithOptions(request as! EditProhibitedDevicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editUnfavorableAreaDevicesWithOptions(_ request: EditUnfavorableAreaDevicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EditUnfavorableAreaDevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.factoryId)) {
            body["factoryId"] = request.factoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hvacDeviceConfigVOList)) {
            body["hvacDeviceConfigVOList"] = request.hvacDeviceConfigVOList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.systemId)) {
            body["systemId"] = request.systemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EditUnfavorableAreaDevices",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/hvac/editUnfavorableAreaDevices",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EditUnfavorableAreaDevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editUnfavorableAreaDevices(_ request: EditUnfavorableAreaDevicesRequest) async throws -> EditUnfavorableAreaDevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await editUnfavorableAreaDevicesWithOptions(request as! EditUnfavorableAreaDevicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateResultWithOptions(_ request: GenerateResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateResult",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/generate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateResult(_ request: GenerateResultRequest) async throws -> GenerateResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateResultWithOptions(request as! GenerateResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAreaElecConstituteWithOptions(_ request: GetAreaElecConstituteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAreaElecConstituteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.year)) {
            body["year"] = request.year!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAreaElecConstitute",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/analysis/elec/area",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAreaElecConstituteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAreaElecConstitute(_ request: GetAreaElecConstituteRequest) async throws -> GetAreaElecConstituteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAreaElecConstituteWithOptions(request as! GetAreaElecConstituteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCarbonEmissionTrendWithOptions(_ request: GetCarbonEmissionTrendRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCarbonEmissionTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleCode)) {
            body["moduleCode"] = request.moduleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleType)) {
            body["moduleType"] = request.moduleType!;
        }
        if (!TeaUtils.Client.isUnset(request.trendType)) {
            body["trendType"] = request.trendType!;
        }
        if (!TeaUtils.Client.isUnset(request.yearList)) {
            body["yearList"] = request.yearList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCarbonEmissionTrend",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/analysis/trend",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCarbonEmissionTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCarbonEmissionTrend(_ request: GetCarbonEmissionTrendRequest) async throws -> GetCarbonEmissionTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCarbonEmissionTrendWithOptions(request as! GetCarbonEmissionTrendRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatFolderListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChatFolderListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChatFolderList",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/chat/folder/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChatFolderListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatFolderList() async throws -> GetChatFolderListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getChatFolderListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatListWithOptions(_ request: GetChatListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChatListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["currentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChatList",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/chat/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChatListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatList(_ request: GetChatListRequest) async throws -> GetChatListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getChatListWithOptions(request as! GetChatListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatSessionListWithOptions(_ request: GetChatSessionListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChatSessionListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["currentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChatSessionList",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/chat/session/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChatSessionListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatSessionList(_ request: GetChatSessionListRequest) async throws -> GetChatSessionListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getChatSessionListWithOptions(request as! GetChatSessionListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataItemListWithOptions(_ request: GetDataItemListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataItemListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataItemList",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/data/item/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataItemListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataItemList(_ request: GetDataItemListRequest) async throws -> GetDataItemListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDataItemListWithOptions(request as! GetDataItemListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataQualityAnalysisWithOptions(_ request: GetDataQualityAnalysisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataQualityAnalysisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataQualityEvaluationType)) {
            body["dataQualityEvaluationType"] = request.dataQualityEvaluationType!;
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataQualityAnalysis",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/data/quality/analysis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataQualityAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataQualityAnalysis(_ request: GetDataQualityAnalysisRequest) async throws -> GetDataQualityAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDataQualityAnalysisWithOptions(request as! GetDataQualityAnalysisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceInfoWithOptions(_ request: GetDeviceInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["deviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ds)) {
            query["ds"] = request.ds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.factoryId)) {
            query["factoryId"] = request.factoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceInfo",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/external/getDeviceInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceInfo(_ request: GetDeviceInfoRequest) async throws -> GetDeviceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDeviceInfoWithOptions(request as! GetDeviceInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceListWithOptions(_ request: GetDeviceListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeviceListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.factoryId)) {
            query["factoryId"] = request.factoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeviceList",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/external/getDeviceList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeviceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeviceList(_ request: GetDeviceListRequest) async throws -> GetDeviceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDeviceListWithOptions(request as! GetDeviceListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocExtractionResultWithOptions(_ request: GetDocExtractionResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocExtractionResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocExtractionResult",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/getDocExtractionResult",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocExtractionResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocExtractionResult(_ request: GetDocExtractionResultRequest) async throws -> GetDocExtractionResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDocExtractionResultWithOptions(request as! GetDocExtractionResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocParsingResultWithOptions(_ request: GetDocParsingResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocParsingResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.returnFormat)) {
            body["returnFormat"] = request.returnFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocParsingResult",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/getDocParsingResult",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocParsingResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocParsingResult(_ request: GetDocParsingResultRequest) async throws -> GetDocParsingResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDocParsingResultWithOptions(request as! GetDocParsingResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentAnalyzeResultWithOptions(_ request: GetDocumentAnalyzeResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentAnalyzeResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["jobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentAnalyzeResult",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aidoc/document/getDocumentAnalyzeResult",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocumentAnalyzeResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentAnalyzeResult(_ request: GetDocumentAnalyzeResultRequest) async throws -> GetDocumentAnalyzeResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDocumentAnalyzeResultWithOptions(request as! GetDocumentAnalyzeResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getElecConstituteWithOptions(_ request: GetElecConstituteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetElecConstituteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.year)) {
            body["year"] = request.year!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetElecConstitute",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/analysis/elec/constitute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetElecConstituteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getElecConstitute(_ request: GetElecConstituteRequest) async throws -> GetElecConstituteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getElecConstituteWithOptions(request as! GetElecConstituteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getElecTrendWithOptions(_ request: GetElecTrendRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetElecTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.yearList)) {
            body["yearList"] = request.yearList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetElecTrend",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/analysis/elec/trend",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetElecTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getElecTrend(_ request: GetElecTrendRequest) async throws -> GetElecTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getElecTrendWithOptions(request as! GetElecTrendRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEmissionSourceConstituteWithOptions(_ request: GetEmissionSourceConstituteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEmissionSourceConstituteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleCode)) {
            body["moduleCode"] = request.moduleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleType)) {
            body["moduleType"] = request.moduleType!;
        }
        if (!TeaUtils.Client.isUnset(request.year)) {
            body["year"] = request.year!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEmissionSourceConstitute",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/analysis/constitute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEmissionSourceConstituteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEmissionSourceConstitute(_ request: GetEmissionSourceConstituteRequest) async throws -> GetEmissionSourceConstituteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEmissionSourceConstituteWithOptions(request as! GetEmissionSourceConstituteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEmissionSummaryWithOptions(_ request: GetEmissionSummaryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEmissionSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleCode)) {
            body["moduleCode"] = request.moduleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleType)) {
            body["moduleType"] = request.moduleType!;
        }
        if (!TeaUtils.Client.isUnset(request.year)) {
            body["year"] = request.year!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEmissionSummary",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/analysis/summary",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEmissionSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEmissionSummary(_ request: GetEmissionSummaryRequest) async throws -> GetEmissionSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEmissionSummaryWithOptions(request as! GetEmissionSummaryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEpdInventoryConstituteWithOptions(_ request: GetEpdInventoryConstituteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEpdInventoryConstituteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEpdInventoryConstitute",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/epd/inventory/constitute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEpdInventoryConstituteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEpdInventoryConstitute(_ request: GetEpdInventoryConstituteRequest) async throws -> GetEpdInventoryConstituteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEpdInventoryConstituteWithOptions(request as! GetEpdInventoryConstituteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEpdSummaryWithOptions(_ request: GetEpdSummaryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEpdSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEpdSummary",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/epd/summary",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEpdSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEpdSummary(_ request: GetEpdSummaryRequest) async throws -> GetEpdSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEpdSummaryWithOptions(request as! GetEpdSummaryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFootprintListWithOptions(_ request: GetFootprintListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFootprintListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["currentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFootprintList",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/product/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFootprintListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFootprintList(_ request: GetFootprintListRequest) async throws -> GetFootprintListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFootprintListWithOptions(request as! GetFootprintListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGasConstituteWithOptions(_ request: GetGasConstituteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGasConstituteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleCode)) {
            body["moduleCode"] = request.moduleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleType)) {
            body["moduleType"] = request.moduleType!;
        }
        if (!TeaUtils.Client.isUnset(request.year)) {
            body["year"] = request.year!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGasConstitute",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/analysis/gas/constitute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGasConstituteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGasConstitute(_ request: GetGasConstituteRequest) async throws -> GetGasConstituteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGasConstituteWithOptions(request as! GetGasConstituteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGwpBenchmarkListWithOptions(_ request: GetGwpBenchmarkListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGwpBenchmarkListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGwpBenchmarkList",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/gwp/benchmark/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGwpBenchmarkListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGwpBenchmarkList(_ request: GetGwpBenchmarkListRequest) async throws -> GetGwpBenchmarkListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGwpBenchmarkListWithOptions(request as! GetGwpBenchmarkListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGwpBenchmarkSummaryWithOptions(_ request: GetGwpBenchmarkSummaryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGwpBenchmarkSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGwpBenchmarkSummary",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/gwp/benchmark/summary",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGwpBenchmarkSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGwpBenchmarkSummary(_ request: GetGwpBenchmarkSummaryRequest) async throws -> GetGwpBenchmarkSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGwpBenchmarkSummaryWithOptions(request as! GetGwpBenchmarkSummaryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGwpInventoryConstituteWithOptions(_ request: GetGwpInventoryConstituteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGwpInventoryConstituteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGwpInventoryConstitute",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/gwp/inventory/constitute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGwpInventoryConstituteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGwpInventoryConstitute(_ request: GetGwpInventoryConstituteRequest) async throws -> GetGwpInventoryConstituteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGwpInventoryConstituteWithOptions(request as! GetGwpInventoryConstituteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGwpInventorySummaryWithOptions(_ request: GetGwpInventorySummaryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGwpInventorySummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGwpInventorySummary",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/gwp/inventory/summary",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGwpInventorySummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGwpInventorySummary(_ request: GetGwpInventorySummaryRequest) async throws -> GetGwpInventorySummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGwpInventorySummaryWithOptions(request as! GetGwpInventorySummaryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInventoryListWithOptions(_ request: GetInventoryListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInventoryListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emissionType)) {
            body["emissionType"] = request.emissionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.group)) {
            body["group"] = request.group ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.methodType)) {
            body["methodType"] = request.methodType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInventoryList",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/inventory/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInventoryListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInventoryList(_ request: GetInventoryListRequest) async throws -> GetInventoryListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInventoryListWithOptions(request as! GetInventoryListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrgAndFactoryWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrgAndFactoryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrgAndFactory",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/external/getOrgAndFactory",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrgAndFactoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrgAndFactory() async throws -> GetOrgAndFactoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOrgAndFactoryWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrgConstituteWithOptions(_ request: GetOrgConstituteRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrgConstituteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleCode)) {
            body["moduleCode"] = request.moduleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleType)) {
            body["moduleType"] = request.moduleType!;
        }
        if (!TeaUtils.Client.isUnset(request.year)) {
            body["year"] = request.year!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrgConstitute",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/analysis/org",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrgConstituteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrgConstitute(_ request: GetOrgConstituteRequest) async throws -> GetOrgConstituteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOrgConstituteWithOptions(request as! GetOrgConstituteRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPcrInfoWithOptions(_ request: GetPcrInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPcrInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPcrInfo",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/pcr/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPcrInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPcrInfo(_ request: GetPcrInfoRequest) async throws -> GetPcrInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPcrInfoWithOptions(request as! GetPcrInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReductionProposalWithOptions(_ request: GetReductionProposalRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetReductionProposalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataQualityEvaluationType)) {
            body["dataQualityEvaluationType"] = request.dataQualityEvaluationType!;
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetReductionProposal",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/reduction/proposal",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetReductionProposalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReductionProposal(_ request: GetReductionProposalRequest) async throws -> GetReductionProposalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getReductionProposalWithOptions(request as! GetReductionProposalRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVLExtractionResultWithOptions(_ request: GetVLExtractionResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVLExtractionResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVLExtractionResult",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/getVLExtractionResult",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVLExtractionResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVLExtractionResult(_ request: GetVLExtractionResultRequest) async throws -> GetVLExtractionResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getVLExtractionResultWithOptions(request as! GetVLExtractionResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isCompletedWithOptions(_ request: IsCompletedRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> IsCompletedResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["productId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IsCompleted",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/footprint/result/completed",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IsCompletedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isCompleted(_ request: IsCompletedRequest) async throws -> IsCompletedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await isCompletedWithOptions(request as! IsCompletedRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushDeviceDataWithOptions(_ request: PushDeviceDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PushDeviceDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["deviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.devices)) {
            body["devices"] = request.devices ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushDeviceData",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/data/increment/push",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushDeviceDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushDeviceData(_ request: PushDeviceDataRequest) async throws -> PushDeviceDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pushDeviceDataWithOptions(request as! PushDeviceDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushItemDataWithOptions(_ request: PushItemDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PushItemDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.items)) {
            body["items"] = request.items!;
        }
        if (!TeaUtils.Client.isUnset(request.year)) {
            body["year"] = request.year ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushItemData",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/data/item/push",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushItemDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushItemData(_ request: PushItemDataRequest) async throws -> PushItemDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pushItemDataWithOptions(request as! PushItemDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recalculateCarbonEmissionWithOptions(_ request: RecalculateCarbonEmissionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RecalculateCarbonEmissionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.year)) {
            body["year"] = request.year ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecalculateCarbonEmission",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/emission/data/item/recalculate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecalculateCarbonEmissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recalculateCarbonEmission(_ request: RecalculateCarbonEmissionRequest) async throws -> RecalculateCarbonEmissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await recalculateCarbonEmissionWithOptions(request as! RecalculateCarbonEmissionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retrieveWithOptions(_ request: RetrieveRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RetrieveResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentIds)) {
            body["documentIds"] = request.documentIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.folderIds)) {
            body["folderIds"] = request.folderIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.preRetrieveTopK)) {
            body["preRetrieveTopK"] = request.preRetrieveTopK!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rerankerThreshold)) {
            body["rerankerThreshold"] = request.rerankerThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.topK)) {
            body["topK"] = request.topK!;
        }
        if (!TeaUtils.Client.isUnset(request.useReranker)) {
            body["useReranker"] = request.useReranker!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Retrieve",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/knowledgebase/retrieve",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetrieveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retrieve(_ request: RetrieveRequest) async throws -> RetrieveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await retrieveWithOptions(request as! RetrieveRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendDocumentAskQuestionWithOptions(_ request: SendDocumentAskQuestionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendDocumentAskQuestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            body["folderId"] = request.folderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendDocumentAskQuestion",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aidoc/document/sendDocumentAskQuestion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendDocumentAskQuestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendDocumentAskQuestion(_ request: SendDocumentAskQuestionRequest) async throws -> SendDocumentAskQuestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendDocumentAskQuestionWithOptions(request as! SendDocumentAskQuestionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setRunningPlanWithOptions(_ request: SetRunningPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SetRunningPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.controlType)) {
            body["controlType"] = request.controlType!;
        }
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            body["dateType"] = request.dateType!;
        }
        if (!TeaUtils.Client.isUnset(request.earliestStartupTime)) {
            body["earliestStartupTime"] = request.earliestStartupTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.factoryId)) {
            body["factoryId"] = request.factoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latestShutdownTime)) {
            body["latestShutdownTime"] = request.latestShutdownTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxCarbonDioxide)) {
            body["maxCarbonDioxide"] = request.maxCarbonDioxide!;
        }
        if (!TeaUtils.Client.isUnset(request.maxTem)) {
            body["maxTem"] = request.maxTem!;
        }
        if (!TeaUtils.Client.isUnset(request.minTem)) {
            body["minTem"] = request.minTem!;
        }
        if (!TeaUtils.Client.isUnset(request.pKey)) {
            body["pKey"] = request.pKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seasonMode)) {
            body["seasonMode"] = request.seasonMode!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisticsTime)) {
            body["statisticsTime"] = request.statisticsTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemId)) {
            body["systemId"] = request.systemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workingEndTime)) {
            body["workingEndTime"] = request.workingEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workingStartTime)) {
            body["workingStartTime"] = request.workingStartTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetRunningPlan",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/carbon/hvac/setRunningPlan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetRunningPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setRunningPlan(_ request: SetRunningPlanRequest) async throws -> SetRunningPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await setRunningPlanWithOptions(request as! SetRunningPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocExtractionTaskWithOptions(_ request: SubmitDocExtractionTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocExtractionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extractType)) {
            query["extractType"] = request.extractType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            query["fileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            query["folderId"] = request.folderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["templateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitDocExtractionTask",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/submitDocExtractionTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitDocExtractionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocExtractionTask(_ request: SubmitDocExtractionTaskRequest) async throws -> SubmitDocExtractionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitDocExtractionTaskWithOptions(request as! SubmitDocExtractionTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocExtractionTaskAdvance(_ request: SubmitDocExtractionTaskAdvanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocExtractionTaskResponse {
        var credentialModel: AlibabaCloudCredentials.CredentialModel? = nil
        if (TeaUtils.Client.isUnset(self._credential)) {
            throw Tea.ReuqestError([
                "code": "InvalidCredentials",
                "message": "Please set up the credentials correctly. If you are setting them through environment variables, please ensure that ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET are set correctly. See https://help.aliyun.com/zh/sdk/developer-reference/configure-the-alibaba-cloud-accesskey-environment-variable-on-linux-macos-and-windows-systems for more details."
            ])
        }
        credentialModel = try await self._credential!.getCredential()
        var accessKeyId: String = credentialModel.accessKeyId ?? ""
        var accessKeySecret: String = credentialModel.accessKeySecret ?? ""
        var securityToken: String = credentialModel.securityToken ?? ""
        var credentialType: String = credentialModel.type ?? ""
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
        var authClient: AlibabacloudOpenApi.Client = try AlibabacloudOpenApi.Client(authConfig)
        var authRequest: [String: String] = [
            "Product": "energyExpertExternal",
            "RegionId": self._regionId ?? ""
        ]
        var authReq: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(authRequest)
        ])
        var authParams: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeFileUpload",
            "version": "2019-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var authResponse: [String: Any] = [:]
        var fileObj: TeaFileForm.FileField = TeaFileForm.FileField([:])
        var ossHeader: [String: Any] = [:]
        var tmpBody: [String: Any] = [:]
        var useAccelerate: Bool = false
        var authResponseBody: [String: String] = [:]
        var submitDocExtractionTaskReq: SubmitDocExtractionTaskRequest = SubmitDocExtractionTaskRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, submitDocExtractionTaskReq)
        if (!TeaUtils.Client.isUnset(request.fileUrlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.fileUrlObject!,
                "contentType": ""
            ])
            ossHeader = [
                "host": (authResponseBody["Bucket"] ?? "") + "." + (AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponseBody["Endpoint"], useAccelerate, self._endpointType)),
                "OSSAccessKeyId": authResponseBody["AccessKeyId"] ?? "",
                "policy": authResponseBody["EncodedPolicy"] ?? "",
                "Signature": authResponseBody["Signature"] ?? "",
                "key": authResponseBody["ObjectKey"] ?? "",
                "file": fileObj as! TeaFileForm.FileField,
                "success_action_status": "201"
            ]
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            submitDocExtractionTaskReq.fileUrl = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var submitDocExtractionTaskResp: SubmitDocExtractionTaskResponse = try await submitDocExtractionTaskWithOptions(submitDocExtractionTaskReq as! SubmitDocExtractionTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
        return submitDocExtractionTaskResp as! SubmitDocExtractionTaskResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocParsingTaskWithOptions(_ request: SubmitDocParsingTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocParsingTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            query["fileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            query["folderId"] = request.folderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needAnalyzeImg)) {
            query["needAnalyzeImg"] = request.needAnalyzeImg!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitDocParsingTask",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/submitDocParsingTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitDocParsingTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocParsingTask(_ request: SubmitDocParsingTaskRequest) async throws -> SubmitDocParsingTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitDocParsingTaskWithOptions(request as! SubmitDocParsingTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocParsingTaskAdvance(_ request: SubmitDocParsingTaskAdvanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocParsingTaskResponse {
        var credentialModel: AlibabaCloudCredentials.CredentialModel? = nil
        if (TeaUtils.Client.isUnset(self._credential)) {
            throw Tea.ReuqestError([
                "code": "InvalidCredentials",
                "message": "Please set up the credentials correctly. If you are setting them through environment variables, please ensure that ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET are set correctly. See https://help.aliyun.com/zh/sdk/developer-reference/configure-the-alibaba-cloud-accesskey-environment-variable-on-linux-macos-and-windows-systems for more details."
            ])
        }
        credentialModel = try await self._credential!.getCredential()
        var accessKeyId: String = credentialModel.accessKeyId ?? ""
        var accessKeySecret: String = credentialModel.accessKeySecret ?? ""
        var securityToken: String = credentialModel.securityToken ?? ""
        var credentialType: String = credentialModel.type ?? ""
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
        var authClient: AlibabacloudOpenApi.Client = try AlibabacloudOpenApi.Client(authConfig)
        var authRequest: [String: String] = [
            "Product": "energyExpertExternal",
            "RegionId": self._regionId ?? ""
        ]
        var authReq: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(authRequest)
        ])
        var authParams: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeFileUpload",
            "version": "2019-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var authResponse: [String: Any] = [:]
        var fileObj: TeaFileForm.FileField = TeaFileForm.FileField([:])
        var ossHeader: [String: Any] = [:]
        var tmpBody: [String: Any] = [:]
        var useAccelerate: Bool = false
        var authResponseBody: [String: String] = [:]
        var submitDocParsingTaskReq: SubmitDocParsingTaskRequest = SubmitDocParsingTaskRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, submitDocParsingTaskReq)
        if (!TeaUtils.Client.isUnset(request.fileUrlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.fileUrlObject!,
                "contentType": ""
            ])
            ossHeader = [
                "host": (authResponseBody["Bucket"] ?? "") + "." + (AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponseBody["Endpoint"], useAccelerate, self._endpointType)),
                "OSSAccessKeyId": authResponseBody["AccessKeyId"] ?? "",
                "policy": authResponseBody["EncodedPolicy"] ?? "",
                "Signature": authResponseBody["Signature"] ?? "",
                "key": authResponseBody["ObjectKey"] ?? "",
                "file": fileObj as! TeaFileForm.FileField,
                "success_action_status": "201"
            ]
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            submitDocParsingTaskReq.fileUrl = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var submitDocParsingTaskResp: SubmitDocParsingTaskResponse = try await submitDocParsingTaskWithOptions(submitDocParsingTaskReq as! SubmitDocParsingTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
        return submitDocParsingTaskResp as! SubmitDocParsingTaskResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocumentAnalyzeJobWithOptions(_ request: SubmitDocumentAnalyzeJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocumentAnalyzeJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.analysisType)) {
            query["analysisType"] = request.analysisType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            query["fileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            query["folderId"] = request.folderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["templateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitDocumentAnalyzeJob",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aidoc/document/submitDocumentAnalyzeJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitDocumentAnalyzeJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocumentAnalyzeJob(_ request: SubmitDocumentAnalyzeJobRequest) async throws -> SubmitDocumentAnalyzeJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitDocumentAnalyzeJobWithOptions(request as! SubmitDocumentAnalyzeJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocumentAnalyzeJobAdvance(_ request: SubmitDocumentAnalyzeJobAdvanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocumentAnalyzeJobResponse {
        var credentialModel: AlibabaCloudCredentials.CredentialModel? = nil
        if (TeaUtils.Client.isUnset(self._credential)) {
            throw Tea.ReuqestError([
                "code": "InvalidCredentials",
                "message": "Please set up the credentials correctly. If you are setting them through environment variables, please ensure that ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET are set correctly. See https://help.aliyun.com/zh/sdk/developer-reference/configure-the-alibaba-cloud-accesskey-environment-variable-on-linux-macos-and-windows-systems for more details."
            ])
        }
        credentialModel = try await self._credential!.getCredential()
        var accessKeyId: String = credentialModel.accessKeyId ?? ""
        var accessKeySecret: String = credentialModel.accessKeySecret ?? ""
        var securityToken: String = credentialModel.securityToken ?? ""
        var credentialType: String = credentialModel.type ?? ""
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
        var authClient: AlibabacloudOpenApi.Client = try AlibabacloudOpenApi.Client(authConfig)
        var authRequest: [String: String] = [
            "Product": "energyExpertExternal",
            "RegionId": self._regionId ?? ""
        ]
        var authReq: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(authRequest)
        ])
        var authParams: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeFileUpload",
            "version": "2019-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var authResponse: [String: Any] = [:]
        var fileObj: TeaFileForm.FileField = TeaFileForm.FileField([:])
        var ossHeader: [String: Any] = [:]
        var tmpBody: [String: Any] = [:]
        var useAccelerate: Bool = false
        var authResponseBody: [String: String] = [:]
        var submitDocumentAnalyzeJobReq: SubmitDocumentAnalyzeJobRequest = SubmitDocumentAnalyzeJobRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, submitDocumentAnalyzeJobReq)
        if (!TeaUtils.Client.isUnset(request.fileUrlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.fileUrlObject!,
                "contentType": ""
            ])
            ossHeader = [
                "host": (authResponseBody["Bucket"] ?? "") + "." + (AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponseBody["Endpoint"], useAccelerate, self._endpointType)),
                "OSSAccessKeyId": authResponseBody["AccessKeyId"] ?? "",
                "policy": authResponseBody["EncodedPolicy"] ?? "",
                "Signature": authResponseBody["Signature"] ?? "",
                "key": authResponseBody["ObjectKey"] ?? "",
                "file": fileObj as! TeaFileForm.FileField,
                "success_action_status": "201"
            ]
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            submitDocumentAnalyzeJobReq.fileUrl = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var submitDocumentAnalyzeJobResp: SubmitDocumentAnalyzeJobResponse = try await submitDocumentAnalyzeJobWithOptions(submitDocumentAnalyzeJobReq as! SubmitDocumentAnalyzeJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
        return submitDocumentAnalyzeJobResp as! SubmitDocumentAnalyzeJobResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitVLExtractionTaskWithOptions(_ request: SubmitVLExtractionTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitVLExtractionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            query["fileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            query["folderId"] = request.folderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["templateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitVLExtractionTask",
            "version": "2022-09-23",
            "protocol": "HTTPS",
            "pathname": "/api/v2/aidoc/document/submitVLExtractionTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitVLExtractionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitVLExtractionTask(_ request: SubmitVLExtractionTaskRequest) async throws -> SubmitVLExtractionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitVLExtractionTaskWithOptions(request as! SubmitVLExtractionTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitVLExtractionTaskAdvance(_ request: SubmitVLExtractionTaskAdvanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitVLExtractionTaskResponse {
        var credentialModel: AlibabaCloudCredentials.CredentialModel? = nil
        if (TeaUtils.Client.isUnset(self._credential)) {
            throw Tea.ReuqestError([
                "code": "InvalidCredentials",
                "message": "Please set up the credentials correctly. If you are setting them through environment variables, please ensure that ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET are set correctly. See https://help.aliyun.com/zh/sdk/developer-reference/configure-the-alibaba-cloud-accesskey-environment-variable-on-linux-macos-and-windows-systems for more details."
            ])
        }
        credentialModel = try await self._credential!.getCredential()
        var accessKeyId: String = credentialModel.accessKeyId ?? ""
        var accessKeySecret: String = credentialModel.accessKeySecret ?? ""
        var securityToken: String = credentialModel.securityToken ?? ""
        var credentialType: String = credentialModel.type ?? ""
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
        var authClient: AlibabacloudOpenApi.Client = try AlibabacloudOpenApi.Client(authConfig)
        var authRequest: [String: String] = [
            "Product": "energyExpertExternal",
            "RegionId": self._regionId ?? ""
        ]
        var authReq: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(authRequest)
        ])
        var authParams: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeFileUpload",
            "version": "2019-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var authResponse: [String: Any] = [:]
        var fileObj: TeaFileForm.FileField = TeaFileForm.FileField([:])
        var ossHeader: [String: Any] = [:]
        var tmpBody: [String: Any] = [:]
        var useAccelerate: Bool = false
        var authResponseBody: [String: String] = [:]
        var submitVLExtractionTaskReq: SubmitVLExtractionTaskRequest = SubmitVLExtractionTaskRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, submitVLExtractionTaskReq)
        if (!TeaUtils.Client.isUnset(request.fileUrlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.fileUrlObject!,
                "contentType": ""
            ])
            ossHeader = [
                "host": (authResponseBody["Bucket"] ?? "") + "." + (AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponseBody["Endpoint"], useAccelerate, self._endpointType)),
                "OSSAccessKeyId": authResponseBody["AccessKeyId"] ?? "",
                "policy": authResponseBody["EncodedPolicy"] ?? "",
                "Signature": authResponseBody["Signature"] ?? "",
                "key": authResponseBody["ObjectKey"] ?? "",
                "file": fileObj as! TeaFileForm.FileField,
                "success_action_status": "201"
            ]
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            submitVLExtractionTaskReq.fileUrl = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var submitVLExtractionTaskResp: SubmitVLExtractionTaskResponse = try await submitVLExtractionTaskWithOptions(submitVLExtractionTaskReq as! SubmitVLExtractionTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
        return submitVLExtractionTaskResp as! SubmitVLExtractionTaskResponse
    }
}
