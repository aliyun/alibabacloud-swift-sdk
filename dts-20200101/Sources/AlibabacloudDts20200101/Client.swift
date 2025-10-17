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
        self._endpointRule = "regional"
        self._endpointMap = [
            "cn-qingdao": "dts.aliyuncs.com",
            "cn-beijing": "dts.aliyuncs.com",
            "cn-zhangjiakou": "dts.aliyuncs.com",
            "cn-huhehaote": "dts.aliyuncs.com",
            "cn-hangzhou": "dts.aliyuncs.com",
            "cn-shanghai": "dts.aliyuncs.com",
            "cn-shenzhen": "dts.aliyuncs.com",
            "cn-hongkong": "dts.aliyuncs.com",
            "ap-southeast-1": "dts.aliyuncs.com",
            "ap-southeast-2": "dts.aliyuncs.com",
            "ap-southeast-3": "dts.aliyuncs.com",
            "ap-southeast-5": "dts.aliyuncs.com",
            "eu-west-1": "dts.aliyuncs.com",
            "us-west-1": "dts.aliyuncs.com",
            "us-east-1": "dts.aliyuncs.com",
            "eu-central-1": "dts.aliyuncs.com",
            "me-east-1": "dts.aliyuncs.com",
            "ap-south-1": "dts.aliyuncs.com",
            "cn-hangzhou-finance": "dts.aliyuncs.com",
            "cn-shanghai-finance-1": "dts.aliyuncs.com",
            "cn-shenzhen-finance-1": "dts.aliyuncs.com",
            "cn-north-2-gov-1": "dts.aliyuncs.com",
            "ap-northeast-2-pop": "dts.aliyuncs.com",
            "cn-beijing-finance-1": "dts.aliyuncs.com",
            "cn-beijing-finance-pop": "dts.aliyuncs.com",
            "cn-beijing-gov-1": "dts.aliyuncs.com",
            "cn-beijing-nu16-b01": "dts.aliyuncs.com",
            "cn-chengdu": "dts.aliyuncs.com",
            "cn-edge-1": "dts.aliyuncs.com",
            "cn-fujian": "dts.aliyuncs.com",
            "cn-haidian-cm12-c01": "dts.aliyuncs.com",
            "cn-hangzhou-bj-b01": "dts.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "dts.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "dts.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "dts.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "dts.aliyuncs.com",
            "cn-hangzhou-test-306": "dts.aliyuncs.com",
            "cn-hongkong-finance-pop": "dts.aliyuncs.com",
            "cn-huhehaote-nebula-1": "dts.aliyuncs.com",
            "cn-qingdao-nebula": "dts.aliyuncs.com",
            "cn-shanghai-et15-b01": "dts.aliyuncs.com",
            "cn-shanghai-et2-b01": "dts.aliyuncs.com",
            "cn-shanghai-inner": "dts.aliyuncs.com",
            "cn-shanghai-internal-test-1": "dts.aliyuncs.com",
            "cn-shenzhen-inner": "dts.aliyuncs.com",
            "cn-shenzhen-st4-d01": "dts.aliyuncs.com",
            "cn-shenzhen-su18-b01": "dts.aliyuncs.com",
            "cn-wuhan": "dts.aliyuncs.com",
            "cn-wulanchabu": "dts.aliyuncs.com",
            "cn-yushanfang": "dts.aliyuncs.com",
            "cn-zhangbei-na61-b01": "dts.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "dts.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "dts.aliyuncs.com",
            "eu-west-1-oxs": "dts.aliyuncs.com",
            "rus-west-1-pop": "dts.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("dts", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func _postOSSObject(_ bucketName: String, _ data: [String: Any]) async throws -> [String: Any] {
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
        var _lastRequest: Tea.TeaRequest = _request
        var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request)
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
    public func configureDtsJobWithOptions(_ request: ConfigureDtsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureDtsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkpoint)) {
            query["Checkpoint"] = request.checkpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataCheckConfigure)) {
            query["DataCheckConfigure"] = request.dataCheckConfigure ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataInitialization)) {
            query["DataInitialization"] = request.dataInitialization!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSynchronization)) {
            query["DataSynchronization"] = request.dataSynchronization!;
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            query["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayNotice)) {
            query["DelayNotice"] = request.delayNotice!;
        }
        if (!TeaUtils.Client.isUnset(request.delayPhone)) {
            query["DelayPhone"] = request.delayPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayRuleTime)) {
            query["DelayRuleTime"] = request.delayRuleTime!;
        }
        if (!TeaUtils.Client.isUnset(request.destCaCertificateOssUrl)) {
            query["DestCaCertificateOssUrl"] = request.destCaCertificateOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destCaCertificatePassword)) {
            query["DestCaCertificatePassword"] = request.destCaCertificatePassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destClientCertOssUrl)) {
            query["DestClientCertOssUrl"] = request.destClientCertOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destClientKeyOssUrl)) {
            query["DestClientKeyOssUrl"] = request.destClientKeyOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destClientPassword)) {
            query["DestClientPassword"] = request.destClientPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destPrimaryVswId)) {
            query["DestPrimaryVswId"] = request.destPrimaryVswId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destSecondaryVswId)) {
            query["DestSecondaryVswId"] = request.destSecondaryVswId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointDataBaseName)) {
            query["DestinationEndpointDataBaseName"] = request.destinationEndpointDataBaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointEngineName)) {
            query["DestinationEndpointEngineName"] = request.destinationEndpointEngineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointIP)) {
            query["DestinationEndpointIP"] = request.destinationEndpointIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointInstanceID)) {
            query["DestinationEndpointInstanceID"] = request.destinationEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointInstanceType)) {
            query["DestinationEndpointInstanceType"] = request.destinationEndpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointOracleSID)) {
            query["DestinationEndpointOracleSID"] = request.destinationEndpointOracleSID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointOwnerID)) {
            query["DestinationEndpointOwnerID"] = request.destinationEndpointOwnerID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointPassword)) {
            query["DestinationEndpointPassword"] = request.destinationEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointPort)) {
            query["DestinationEndpointPort"] = request.destinationEndpointPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointRegion)) {
            query["DestinationEndpointRegion"] = request.destinationEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointRole)) {
            query["DestinationEndpointRole"] = request.destinationEndpointRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointUserName)) {
            query["DestinationEndpointUserName"] = request.destinationEndpointUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disasterRecoveryJob)) {
            query["DisasterRecoveryJob"] = request.disasterRecoveryJob!;
        }
        if (!TeaUtils.Client.isUnset(request.dtsBisLabel)) {
            query["DtsBisLabel"] = request.dtsBisLabel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobName)) {
            query["DtsJobName"] = request.dtsJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorNotice)) {
            query["ErrorNotice"] = request.errorNotice!;
        }
        if (!TeaUtils.Client.isUnset(request.errorPhone)) {
            query["ErrorPhone"] = request.errorPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileOssUrl)) {
            query["FileOssUrl"] = request.fileOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            query["JobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDu)) {
            query["MaxDu"] = request.maxDu!;
        }
        if (!TeaUtils.Client.isUnset(request.minDu)) {
            query["MinDu"] = request.minDu!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointDatabaseName)) {
            query["SourceEndpointDatabaseName"] = request.sourceEndpointDatabaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointEngineName)) {
            query["SourceEndpointEngineName"] = request.sourceEndpointEngineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointIP)) {
            query["SourceEndpointIP"] = request.sourceEndpointIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceID)) {
            query["SourceEndpointInstanceID"] = request.sourceEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceType)) {
            query["SourceEndpointInstanceType"] = request.sourceEndpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointOracleSID)) {
            query["SourceEndpointOracleSID"] = request.sourceEndpointOracleSID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointOwnerID)) {
            query["SourceEndpointOwnerID"] = request.sourceEndpointOwnerID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPassword)) {
            query["SourceEndpointPassword"] = request.sourceEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPort)) {
            query["SourceEndpointPort"] = request.sourceEndpointPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRegion)) {
            query["SourceEndpointRegion"] = request.sourceEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRole)) {
            query["SourceEndpointRole"] = request.sourceEndpointRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointUserName)) {
            query["SourceEndpointUserName"] = request.sourceEndpointUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointVSwitchID)) {
            query["SourceEndpointVSwitchID"] = request.sourceEndpointVSwitchID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcCaCertificateOssUrl)) {
            query["SrcCaCertificateOssUrl"] = request.srcCaCertificateOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcCaCertificatePassword)) {
            query["SrcCaCertificatePassword"] = request.srcCaCertificatePassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcClientCertOssUrl)) {
            query["SrcClientCertOssUrl"] = request.srcClientCertOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcClientKeyOssUrl)) {
            query["SrcClientKeyOssUrl"] = request.srcClientKeyOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcClientPassword)) {
            query["SrcClientPassword"] = request.srcClientPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcPrimaryVswId)) {
            query["SrcPrimaryVswId"] = request.srcPrimaryVswId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcSecondaryVswId)) {
            query["SrcSecondaryVswId"] = request.srcSecondaryVswId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.structureInitialization)) {
            query["StructureInitialization"] = request.structureInitialization!;
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbList)) {
            body["DbList"] = request.dbList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reserve)) {
            body["Reserve"] = request.reserve ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureDtsJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureDtsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureDtsJob(_ request: ConfigureDtsJobRequest) async throws -> ConfigureDtsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureDtsJobWithOptions(request as! ConfigureDtsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureDtsJobAdvance(_ request: ConfigureDtsJobAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureDtsJobResponse {
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
            "Product": "Dts",
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
        var configureDtsJobReq: ConfigureDtsJobRequest = ConfigureDtsJobRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, configureDtsJobReq)
        if (!TeaUtils.Client.isUnset(request.fileOssUrlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.fileOssUrlObject!,
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any])
            configureDtsJobReq.fileOssUrl = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var configureDtsJobResp: ConfigureDtsJobResponse = try await configureDtsJobWithOptions(configureDtsJobReq as! ConfigureDtsJobRequest, runtime as! TeaUtils.RuntimeOptions)
        return configureDtsJobResp as! ConfigureDtsJobResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureMigrationJobWithOptions(_ request: ConfigureMigrationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkpoint)) {
            query["Checkpoint"] = request.checkpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobId)) {
            query["MigrationJobId"] = request.migrationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobName)) {
            query["MigrationJobName"] = request.migrationJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationReserved)) {
            query["MigrationReserved"] = request.migrationReserved ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpoint)) {
            query["DestinationEndpoint"] = request.destinationEndpoint!;
        }
        if (!TeaUtils.Client.isUnset(request.migrationMode)) {
            query["MigrationMode"] = request.migrationMode!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpoint)) {
            query["SourceEndpoint"] = request.sourceEndpoint!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.migrationObject)) {
            body["MigrationObject"] = request.migrationObject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureMigrationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureMigrationJob(_ request: ConfigureMigrationJobRequest) async throws -> ConfigureMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureMigrationJobWithOptions(request as! ConfigureMigrationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureMigrationJobAlertWithOptions(_ request: ConfigureMigrationJobAlertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureMigrationJobAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayAlertPhone)) {
            query["DelayAlertPhone"] = request.delayAlertPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayAlertStatus)) {
            query["DelayAlertStatus"] = request.delayAlertStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayOverSeconds)) {
            query["DelayOverSeconds"] = request.delayOverSeconds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorAlertPhone)) {
            query["ErrorAlertPhone"] = request.errorAlertPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorAlertStatus)) {
            query["ErrorAlertStatus"] = request.errorAlertStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobId)) {
            query["MigrationJobId"] = request.migrationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureMigrationJobAlert",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureMigrationJobAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureMigrationJobAlert(_ request: ConfigureMigrationJobAlertRequest) async throws -> ConfigureMigrationJobAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureMigrationJobAlertWithOptions(request as! ConfigureMigrationJobAlertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSubscriptionWithOptions(_ request: ConfigureSubscriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkpoint)) {
            query["Checkpoint"] = request.checkpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbList)) {
            query["DbList"] = request.dbList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            query["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayNotice)) {
            query["DelayNotice"] = request.delayNotice!;
        }
        if (!TeaUtils.Client.isUnset(request.delayPhone)) {
            query["DelayPhone"] = request.delayPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayRuleTime)) {
            query["DelayRuleTime"] = request.delayRuleTime!;
        }
        if (!TeaUtils.Client.isUnset(request.dtsBisLabel)) {
            query["DtsBisLabel"] = request.dtsBisLabel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobName)) {
            query["DtsJobName"] = request.dtsJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorNotice)) {
            query["ErrorNotice"] = request.errorNotice!;
        }
        if (!TeaUtils.Client.isUnset(request.errorPhone)) {
            query["ErrorPhone"] = request.errorPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDu)) {
            query["MaxDu"] = request.maxDu!;
        }
        if (!TeaUtils.Client.isUnset(request.minDu)) {
            query["MinDu"] = request.minDu!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reserve)) {
            query["Reserve"] = request.reserve ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointDatabaseName)) {
            query["SourceEndpointDatabaseName"] = request.sourceEndpointDatabaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointEngineName)) {
            query["SourceEndpointEngineName"] = request.sourceEndpointEngineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointIP)) {
            query["SourceEndpointIP"] = request.sourceEndpointIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceID)) {
            query["SourceEndpointInstanceID"] = request.sourceEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceType)) {
            query["SourceEndpointInstanceType"] = request.sourceEndpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointOracleSID)) {
            query["SourceEndpointOracleSID"] = request.sourceEndpointOracleSID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointOwnerID)) {
            query["SourceEndpointOwnerID"] = request.sourceEndpointOwnerID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPassword)) {
            query["SourceEndpointPassword"] = request.sourceEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPort)) {
            query["SourceEndpointPort"] = request.sourceEndpointPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRegion)) {
            query["SourceEndpointRegion"] = request.sourceEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRole)) {
            query["SourceEndpointRole"] = request.sourceEndpointRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointUserName)) {
            query["SourceEndpointUserName"] = request.sourceEndpointUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcCaCertificateOssUrl)) {
            query["SrcCaCertificateOssUrl"] = request.srcCaCertificateOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcCaCertificatePassword)) {
            query["SrcCaCertificatePassword"] = request.srcCaCertificatePassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcClientCertOssUrl)) {
            query["SrcClientCertOssUrl"] = request.srcClientCertOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcClientKeyOssUrl)) {
            query["SrcClientKeyOssUrl"] = request.srcClientKeyOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcClientPassword)) {
            query["SrcClientPassword"] = request.srcClientPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionDataTypeDDL)) {
            query["SubscriptionDataTypeDDL"] = request.subscriptionDataTypeDDL!;
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionDataTypeDML)) {
            query["SubscriptionDataTypeDML"] = request.subscriptionDataTypeDML!;
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceNetworkType)) {
            query["SubscriptionInstanceNetworkType"] = request.subscriptionInstanceNetworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceVPCId)) {
            query["SubscriptionInstanceVPCId"] = request.subscriptionInstanceVPCId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceVSwitchId)) {
            query["SubscriptionInstanceVSwitchId"] = request.subscriptionInstanceVSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureSubscription",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSubscription(_ request: ConfigureSubscriptionRequest) async throws -> ConfigureSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureSubscriptionWithOptions(request as! ConfigureSubscriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSubscriptionInstanceWithOptions(_ request: ConfigureSubscriptionInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureSubscriptionInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceName)) {
            query["SubscriptionInstanceName"] = request.subscriptionInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceNetworkType)) {
            query["SubscriptionInstanceNetworkType"] = request.subscriptionInstanceNetworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpoint)) {
            query["SourceEndpoint"] = request.sourceEndpoint!;
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionDataType)) {
            query["SubscriptionDataType"] = request.subscriptionDataType!;
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstance)) {
            query["SubscriptionInstance"] = request.subscriptionInstance!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.subscriptionObject)) {
            body["SubscriptionObject"] = request.subscriptionObject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureSubscriptionInstance",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureSubscriptionInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSubscriptionInstance(_ request: ConfigureSubscriptionInstanceRequest) async throws -> ConfigureSubscriptionInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureSubscriptionInstanceWithOptions(request as! ConfigureSubscriptionInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSubscriptionInstanceAlertWithOptions(_ request: ConfigureSubscriptionInstanceAlertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureSubscriptionInstanceAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayAlertPhone)) {
            query["DelayAlertPhone"] = request.delayAlertPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayAlertStatus)) {
            query["DelayAlertStatus"] = request.delayAlertStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayOverSeconds)) {
            query["DelayOverSeconds"] = request.delayOverSeconds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorAlertPhone)) {
            query["ErrorAlertPhone"] = request.errorAlertPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorAlertStatus)) {
            query["ErrorAlertStatus"] = request.errorAlertStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureSubscriptionInstanceAlert",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureSubscriptionInstanceAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSubscriptionInstanceAlert(_ request: ConfigureSubscriptionInstanceAlertRequest) async throws -> ConfigureSubscriptionInstanceAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureSubscriptionInstanceAlertWithOptions(request as! ConfigureSubscriptionInstanceAlertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSynchronizationJobWithOptions(_ request: ConfigureSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkpoint)) {
            query["Checkpoint"] = request.checkpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataInitialization)) {
            query["DataInitialization"] = request.dataInitialization!;
        }
        if (!TeaUtils.Client.isUnset(request.migrationReserved)) {
            query["MigrationReserved"] = request.migrationReserved ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.structureInitialization)) {
            query["StructureInitialization"] = request.structureInitialization!;
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobName)) {
            query["SynchronizationJobName"] = request.synchronizationJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpoint)) {
            query["DestinationEndpoint"] = request.destinationEndpoint!;
        }
        if (!TeaUtils.Client.isUnset(request.partitionKey)) {
            query["PartitionKey"] = request.partitionKey!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpoint)) {
            query["SourceEndpoint"] = request.sourceEndpoint!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.synchronizationObjects)) {
            body["SynchronizationObjects"] = request.synchronizationObjects ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureSynchronizationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSynchronizationJob(_ request: ConfigureSynchronizationJobRequest) async throws -> ConfigureSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureSynchronizationJobWithOptions(request as! ConfigureSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSynchronizationJobAlertWithOptions(_ request: ConfigureSynchronizationJobAlertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureSynchronizationJobAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayAlertPhone)) {
            query["DelayAlertPhone"] = request.delayAlertPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayAlertStatus)) {
            query["DelayAlertStatus"] = request.delayAlertStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayOverSeconds)) {
            query["DelayOverSeconds"] = request.delayOverSeconds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorAlertPhone)) {
            query["ErrorAlertPhone"] = request.errorAlertPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorAlertStatus)) {
            query["ErrorAlertStatus"] = request.errorAlertStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureSynchronizationJobAlert",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureSynchronizationJobAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSynchronizationJobAlert(_ request: ConfigureSynchronizationJobAlertRequest) async throws -> ConfigureSynchronizationJobAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureSynchronizationJobAlertWithOptions(request as! ConfigureSynchronizationJobAlertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSynchronizationJobReplicatorCompareWithOptions(_ request: ConfigureSynchronizationJobReplicatorCompareRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureSynchronizationJobReplicatorCompareResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationReplicatorCompareEnable)) {
            query["SynchronizationReplicatorCompareEnable"] = request.synchronizationReplicatorCompareEnable!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureSynchronizationJobReplicatorCompare",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureSynchronizationJobReplicatorCompareResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSynchronizationJobReplicatorCompare(_ request: ConfigureSynchronizationJobReplicatorCompareRequest) async throws -> ConfigureSynchronizationJobReplicatorCompareResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureSynchronizationJobReplicatorCompareWithOptions(request as! ConfigureSynchronizationJobReplicatorCompareRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertInstanceResourceGroupWithOptions(_ request: ConvertInstanceResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConvertInstanceResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            query["NewResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConvertInstanceResourceGroup",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConvertInstanceResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertInstanceResourceGroup(_ request: ConvertInstanceResourceGroupRequest) async throws -> ConvertInstanceResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await convertInstanceResourceGroupWithOptions(request as! ConvertInstanceResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countJobByConditionWithOptions(_ request: CountJobByConditionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CountJobByConditionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destDbType)) {
            query["DestDbType"] = request.destDbType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            query["JobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcDbType)) {
            query["SrcDbType"] = request.srcDbType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountJobByCondition",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountJobByConditionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countJobByCondition(_ request: CountJobByConditionRequest) async throws -> CountJobByConditionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await countJobByConditionWithOptions(request as! CountJobByConditionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerChannelWithOptions(_ request: CreateConsumerChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConsumerChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consumerGroupName)) {
            query["ConsumerGroupName"] = request.consumerGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupPassword)) {
            query["ConsumerGroupPassword"] = request.consumerGroupPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupUserName)) {
            query["ConsumerGroupUserName"] = request.consumerGroupUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConsumerChannel",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConsumerChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerChannel(_ request: CreateConsumerChannelRequest) async throws -> CreateConsumerChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createConsumerChannelWithOptions(request as! CreateConsumerChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerGroupWithOptions(_ request: CreateConsumerGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConsumerGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupName)) {
            query["ConsumerGroupName"] = request.consumerGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupPassword)) {
            query["ConsumerGroupPassword"] = request.consumerGroupPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupUserName)) {
            query["ConsumerGroupUserName"] = request.consumerGroupUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConsumerGroup",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConsumerGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConsumerGroup(_ request: CreateConsumerGroupRequest) async throws -> CreateConsumerGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createConsumerGroupWithOptions(request as! CreateConsumerGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDedicatedClusterMonitorRuleWithOptions(_ request: CreateDedicatedClusterMonitorRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDedicatedClusterMonitorRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cpuAlarmThreshold)) {
            query["CpuAlarmThreshold"] = request.cpuAlarmThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            query["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskAlarmThreshold)) {
            query["DiskAlarmThreshold"] = request.diskAlarmThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.duAlarmThreshold)) {
            query["DuAlarmThreshold"] = request.duAlarmThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memAlarmThreshold)) {
            query["MemAlarmThreshold"] = request.memAlarmThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.noticeSwitch)) {
            query["NoticeSwitch"] = request.noticeSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phones)) {
            query["Phones"] = request.phones ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDedicatedClusterMonitorRule",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDedicatedClusterMonitorRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDedicatedClusterMonitorRule(_ request: CreateDedicatedClusterMonitorRuleRequest) async throws -> CreateDedicatedClusterMonitorRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDedicatedClusterMonitorRuleWithOptions(request as! CreateDedicatedClusterMonitorRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDocParserJobWithOptions(_ request: CreateDocParserJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDocParserJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            query["FileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultType)) {
            query["ResultType"] = request.resultType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDocParserJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDocParserJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDocParserJob(_ request: CreateDocParserJobRequest) async throws -> CreateDocParserJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDocParserJobWithOptions(request as! CreateDocParserJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDocParserJobAdvance(_ request: CreateDocParserJobAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDocParserJobResponse {
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
            "Product": "Dts",
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
        var createDocParserJobReq: CreateDocParserJobRequest = CreateDocParserJobRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, createDocParserJobReq)
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any])
            createDocParserJobReq.fileUrl = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var createDocParserJobResp: CreateDocParserJobResponse = try await createDocParserJobWithOptions(createDocParserJobReq as! CreateDocParserJobRequest, runtime as! TeaUtils.RuntimeOptions)
        return createDocParserJobResp as! CreateDocParserJobResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDtsInstanceWithOptions(_ request: CreateDtsInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDtsInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoStart)) {
            query["AutoStart"] = request.autoStart!;
        }
        if (!TeaUtils.Client.isUnset(request.computeUnit)) {
            query["ComputeUnit"] = request.computeUnit!;
        }
        if (!TeaUtils.Client.isUnset(request.databaseCount)) {
            query["DatabaseCount"] = request.databaseCount!;
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointEngineName)) {
            query["DestinationEndpointEngineName"] = request.destinationEndpointEngineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationRegion)) {
            query["DestinationRegion"] = request.destinationRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsRegion)) {
            query["DtsRegion"] = request.dtsRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.du)) {
            query["Du"] = request.du!;
        }
        if (!TeaUtils.Client.isUnset(request.feeType)) {
            query["FeeType"] = request.feeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceClass)) {
            query["InstanceClass"] = request.instanceClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDu)) {
            query["MaxDu"] = request.maxDu!;
        }
        if (!TeaUtils.Client.isUnset(request.minDu)) {
            query["MinDu"] = request.minDu!;
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quantity)) {
            query["Quantity"] = request.quantity!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointEngineName)) {
            query["SourceEndpointEngineName"] = request.sourceEndpointEngineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceRegion)) {
            query["SourceRegion"] = request.sourceRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncArchitecture)) {
            query["SyncArchitecture"] = request.syncArchitecture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedTime)) {
            query["UsedTime"] = request.usedTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDtsInstance",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDtsInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDtsInstance(_ request: CreateDtsInstanceRequest) async throws -> CreateDtsInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDtsInstanceWithOptions(request as! CreateDtsInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createJobMonitorRuleWithOptions(_ request: CreateJobMonitorRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateJobMonitorRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.delayRuleTime)) {
            query["DelayRuleTime"] = request.delayRuleTime!;
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.noticeValue)) {
            query["NoticeValue"] = request.noticeValue!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.times)) {
            query["Times"] = request.times!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateJobMonitorRule",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateJobMonitorRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createJobMonitorRule(_ request: CreateJobMonitorRuleRequest) async throws -> CreateJobMonitorRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createJobMonitorRuleWithOptions(request as! CreateJobMonitorRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMigrationJobWithOptions(_ request: CreateMigrationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobClass)) {
            query["MigrationJobClass"] = request.migrationJobClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMigrationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMigrationJob(_ request: CreateMigrationJobRequest) async throws -> CreateMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMigrationJobWithOptions(request as! CreateMigrationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createReverseDtsJobWithOptions(_ request: CreateReverseDtsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateReverseDtsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shardPassword)) {
            query["ShardPassword"] = request.shardPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shardUsername)) {
            query["ShardUsername"] = request.shardUsername ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateReverseDtsJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateReverseDtsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createReverseDtsJob(_ request: CreateReverseDtsJobRequest) async throws -> CreateReverseDtsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createReverseDtsJobWithOptions(request as! CreateReverseDtsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubscriptionInstanceWithOptions(_ request: CreateSubscriptionInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSubscriptionInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedTime)) {
            query["UsedTime"] = request.usedTime!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpoint)) {
            query["SourceEndpoint"] = request.sourceEndpoint!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSubscriptionInstance",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSubscriptionInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubscriptionInstance(_ request: CreateSubscriptionInstanceRequest) async throws -> CreateSubscriptionInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSubscriptionInstanceWithOptions(request as! CreateSubscriptionInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSynchronizationJobWithOptions(_ request: CreateSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceCount)) {
            query["DBInstanceCount"] = request.DBInstanceCount!;
        }
        if (!TeaUtils.Client.isUnset(request.destRegion)) {
            query["DestRegion"] = request.destRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceRegion)) {
            query["SourceRegion"] = request.sourceRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobClass)) {
            query["SynchronizationJobClass"] = request.synchronizationJobClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topology)) {
            query["Topology"] = request.topology ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedTime)) {
            query["UsedTime"] = request.usedTime!;
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            query["networkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpoint)) {
            query["DestinationEndpoint"] = request.destinationEndpoint!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpoint)) {
            query["SourceEndpoint"] = request.sourceEndpoint!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSynchronizationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSynchronizationJob(_ request: CreateSynchronizationJobRequest) async throws -> CreateSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSynchronizationJobWithOptions(request as! CreateSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConsumerChannelWithOptions(_ request: DeleteConsumerChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConsumerChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consumerGroupId)) {
            query["ConsumerGroupId"] = request.consumerGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConsumerChannel",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConsumerChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConsumerChannel(_ request: DeleteConsumerChannelRequest) async throws -> DeleteConsumerChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteConsumerChannelWithOptions(request as! DeleteConsumerChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConsumerGroupWithOptions(_ request: DeleteConsumerGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConsumerGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupID)) {
            query["ConsumerGroupID"] = request.consumerGroupID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConsumerGroup",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConsumerGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConsumerGroup(_ request: DeleteConsumerGroupRequest) async throws -> DeleteConsumerGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteConsumerGroupWithOptions(request as! DeleteConsumerGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDtsJobWithOptions(_ request: DeleteDtsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDtsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            query["JobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDtsJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDtsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDtsJob(_ request: DeleteDtsJobRequest) async throws -> DeleteDtsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDtsJobWithOptions(request as! DeleteDtsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDtsJobsWithOptions(_ request: DeleteDtsJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDtsJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobIds)) {
            query["DtsJobIds"] = request.dtsJobIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDtsJobs",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDtsJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDtsJobs(_ request: DeleteDtsJobsRequest) async throws -> DeleteDtsJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDtsJobsWithOptions(request as! DeleteDtsJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMigrationJobWithOptions(_ request: DeleteMigrationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobId)) {
            query["MigrationJobId"] = request.migrationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMigrationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMigrationJob(_ request: DeleteMigrationJobRequest) async throws -> DeleteMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMigrationJobWithOptions(request as! DeleteMigrationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSubscriptionInstanceWithOptions(_ request: DeleteSubscriptionInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSubscriptionInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSubscriptionInstance",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSubscriptionInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSubscriptionInstance(_ request: DeleteSubscriptionInstanceRequest) async throws -> DeleteSubscriptionInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSubscriptionInstanceWithOptions(request as! DeleteSubscriptionInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSynchronizationJobWithOptions(_ request: DeleteSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSynchronizationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSynchronizationJob(_ request: DeleteSynchronizationJobRequest) async throws -> DeleteSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSynchronizationJobWithOptions(request as! DeleteSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelAccountWithOptions(_ request: DescribeChannelAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeChannelAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeChannelAccount",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeChannelAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelAccount(_ request: DescribeChannelAccountRequest) async throws -> DescribeChannelAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeChannelAccountWithOptions(request as! DescribeChannelAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCheckJobsWithOptions(_ request: DescribeCheckJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCheckJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkJobId)) {
            query["CheckJobId"] = request.checkJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            query["CheckType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobName)) {
            query["JobName"] = request.jobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCheckJobs",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCheckJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCheckJobs(_ request: DescribeCheckJobsRequest) async throws -> DescribeCheckJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCheckJobsWithOptions(request as! DescribeCheckJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterOperateLogsWithOptions(_ request: DescribeClusterOperateLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterOperateLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            body["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            body["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            body["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerID)) {
            body["OwnerID"] = request.ownerID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterOperateLogs",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterOperateLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterOperateLogs(_ request: DescribeClusterOperateLogsRequest) async throws -> DescribeClusterOperateLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterOperateLogsWithOptions(request as! DescribeClusterOperateLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterUsedUtilizationWithOptions(_ request: DescribeClusterUsedUtilizationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClusterUsedUtilizationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            body["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            body["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            body["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.env)) {
            body["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            body["MetricType"] = request.metricType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerID)) {
            body["OwnerID"] = request.ownerID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            body["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClusterUsedUtilization",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClusterUsedUtilizationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClusterUsedUtilization(_ request: DescribeClusterUsedUtilizationRequest) async throws -> DescribeClusterUsedUtilizationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClusterUsedUtilizationWithOptions(request as! DescribeClusterUsedUtilizationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConnectionStatusWithOptions(_ request: DescribeConnectionStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeConnectionStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationEndpointArchitecture)) {
            query["DestinationEndpointArchitecture"] = request.destinationEndpointArchitecture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointDatabaseName)) {
            query["DestinationEndpointDatabaseName"] = request.destinationEndpointDatabaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointEngineName)) {
            query["DestinationEndpointEngineName"] = request.destinationEndpointEngineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointIP)) {
            query["DestinationEndpointIP"] = request.destinationEndpointIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointInstanceID)) {
            query["DestinationEndpointInstanceID"] = request.destinationEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointInstanceType)) {
            query["DestinationEndpointInstanceType"] = request.destinationEndpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointOracleSID)) {
            query["DestinationEndpointOracleSID"] = request.destinationEndpointOracleSID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointPassword)) {
            query["DestinationEndpointPassword"] = request.destinationEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointPort)) {
            query["DestinationEndpointPort"] = request.destinationEndpointPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointRegion)) {
            query["DestinationEndpointRegion"] = request.destinationEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointUserName)) {
            query["DestinationEndpointUserName"] = request.destinationEndpointUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointArchitecture)) {
            query["SourceEndpointArchitecture"] = request.sourceEndpointArchitecture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointDatabaseName)) {
            query["SourceEndpointDatabaseName"] = request.sourceEndpointDatabaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointEngineName)) {
            query["SourceEndpointEngineName"] = request.sourceEndpointEngineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointIP)) {
            query["SourceEndpointIP"] = request.sourceEndpointIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceID)) {
            query["SourceEndpointInstanceID"] = request.sourceEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceType)) {
            query["SourceEndpointInstanceType"] = request.sourceEndpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointOracleSID)) {
            query["SourceEndpointOracleSID"] = request.sourceEndpointOracleSID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPassword)) {
            query["SourceEndpointPassword"] = request.sourceEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPort)) {
            query["SourceEndpointPort"] = request.sourceEndpointPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRegion)) {
            query["SourceEndpointRegion"] = request.sourceEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointUserName)) {
            query["SourceEndpointUserName"] = request.sourceEndpointUserName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeConnectionStatus",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeConnectionStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConnectionStatus(_ request: DescribeConnectionStatusRequest) async throws -> DescribeConnectionStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeConnectionStatusWithOptions(request as! DescribeConnectionStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConsumerChannelWithOptions(_ request: DescribeConsumerChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeConsumerChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentChannelId)) {
            query["ParentChannelId"] = request.parentChannelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeConsumerChannel",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeConsumerChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConsumerChannel(_ request: DescribeConsumerChannelRequest) async throws -> DescribeConsumerChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeConsumerChannelWithOptions(request as! DescribeConsumerChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConsumerGroupWithOptions(_ request: DescribeConsumerGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeConsumerGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeConsumerGroup",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeConsumerGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeConsumerGroup(_ request: DescribeConsumerGroupRequest) async throws -> DescribeConsumerGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeConsumerGroupWithOptions(request as! DescribeConsumerGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDTSIPWithOptions(_ request: DescribeDTSIPRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDTSIPResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationEndpointRegion)) {
            query["DestinationEndpointRegion"] = request.destinationEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRegion)) {
            query["SourceEndpointRegion"] = request.sourceEndpointRegion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDTSIP",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDTSIPResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDTSIP(_ request: DescribeDTSIPRequest) async throws -> DescribeDTSIPResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDTSIPWithOptions(request as! DescribeDTSIPRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataCheckReportUrlWithOptions(_ request: DescribeDataCheckReportUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDataCheckReportUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            query["CheckType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tbName)) {
            query["TbName"] = request.tbName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDataCheckReportUrl",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDataCheckReportUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataCheckReportUrl(_ request: DescribeDataCheckReportUrlRequest) async throws -> DescribeDataCheckReportUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDataCheckReportUrlWithOptions(request as! DescribeDataCheckReportUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataCheckTableDetailsWithOptions(_ request: DescribeDataCheckTableDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDataCheckTableDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            query["CheckType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["SchemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDataCheckTableDetails",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDataCheckTableDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataCheckTableDetails(_ request: DescribeDataCheckTableDetailsRequest) async throws -> DescribeDataCheckTableDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDataCheckTableDetailsWithOptions(request as! DescribeDataCheckTableDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataCheckTableDiffDetailsWithOptions(_ request: DescribeDataCheckTableDiffDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDataCheckTableDiffDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            query["CheckType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tbName)) {
            query["TbName"] = request.tbName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDataCheckTableDiffDetails",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDataCheckTableDiffDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataCheckTableDiffDetails(_ request: DescribeDataCheckTableDiffDetailsRequest) async throws -> DescribeDataCheckTableDiffDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDataCheckTableDiffDetailsWithOptions(request as! DescribeDataCheckTableDiffDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDedicatedClusterWithOptions(_ request: DescribeDedicatedClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDedicatedClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            query["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDedicatedCluster",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDedicatedClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDedicatedCluster(_ request: DescribeDedicatedClusterRequest) async throws -> DescribeDedicatedClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDedicatedClusterWithOptions(request as! DescribeDedicatedClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDedicatedClusterMonitorRuleWithOptions(_ request: DescribeDedicatedClusterMonitorRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDedicatedClusterMonitorRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            query["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDedicatedClusterMonitorRule",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDedicatedClusterMonitorRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDedicatedClusterMonitorRule(_ request: DescribeDedicatedClusterMonitorRuleRequest) async throws -> DescribeDedicatedClusterMonitorRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDedicatedClusterMonitorRuleWithOptions(request as! DescribeDedicatedClusterMonitorRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDocParserJobResultWithOptions(_ request: DescribeDocParserJobResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDocParserJobResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDocParserJobResult",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDocParserJobResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDocParserJobResult(_ request: DescribeDocParserJobResultRequest) async throws -> DescribeDocParserJobResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDocParserJobResultWithOptions(request as! DescribeDocParserJobResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDocParserJobStatusWithOptions(_ request: DescribeDocParserJobStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDocParserJobStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDocParserJobStatus",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDocParserJobStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDocParserJobStatus(_ request: DescribeDocParserJobStatusRequest) async throws -> DescribeDocParserJobStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDocParserJobStatusWithOptions(request as! DescribeDocParserJobStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDtsEtlJobVersionInfoWithOptions(_ request: DescribeDtsEtlJobVersionInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDtsEtlJobVersionInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDtsEtlJobVersionInfo",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDtsEtlJobVersionInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDtsEtlJobVersionInfo(_ request: DescribeDtsEtlJobVersionInfoRequest) async throws -> DescribeDtsEtlJobVersionInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDtsEtlJobVersionInfoWithOptions(request as! DescribeDtsEtlJobVersionInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDtsJobConfigWithOptions(_ request: DescribeDtsJobConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDtsJobConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forAcceleration)) {
            query["ForAcceleration"] = request.forAcceleration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.module)) {
            query["Module"] = request.module ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDtsJobConfig",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDtsJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDtsJobConfig(_ request: DescribeDtsJobConfigRequest) async throws -> DescribeDtsJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDtsJobConfigWithOptions(request as! DescribeDtsJobConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDtsJobDetailWithOptions(_ request: DescribeDtsJobDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDtsJobDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceID)) {
            query["DtsInstanceID"] = request.dtsInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncSubJobHistory)) {
            query["SyncSubJobHistory"] = request.syncSubJobHistory!;
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDtsJobDetail",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDtsJobDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDtsJobDetail(_ request: DescribeDtsJobDetailRequest) async throws -> DescribeDtsJobDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDtsJobDetailWithOptions(request as! DescribeDtsJobDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDtsJobsWithOptions(_ request: DescribeDtsJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDtsJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            query["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destProductType)) {
            query["DestProductType"] = request.destProductType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsBisLabel)) {
            query["DtsBisLabel"] = request.dtsBisLabel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            query["JobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderColumn)) {
            query["OrderColumn"] = request.orderColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderDirection)) {
            query["OrderDirection"] = request.orderDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcProductType)) {
            query["SrcProductType"] = request.srcProductType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withoutDbList)) {
            query["WithoutDbList"] = request.withoutDbList!;
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDtsJobs",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDtsJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDtsJobs(_ request: DescribeDtsJobsRequest) async throws -> DescribeDtsJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDtsJobsWithOptions(request as! DescribeDtsJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDtsServiceLogWithOptions(_ request: DescribeDtsServiceLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDtsServiceLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
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
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subJobType)) {
            query["SubJobType"] = request.subJobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDtsServiceLog",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDtsServiceLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDtsServiceLog(_ request: DescribeDtsServiceLogRequest) async throws -> DescribeDtsServiceLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDtsServiceLogWithOptions(request as! DescribeDtsServiceLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEndpointSwitchStatusWithOptions(_ request: DescribeEndpointSwitchStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEndpointSwitchStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEndpointSwitchStatus",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEndpointSwitchStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEndpointSwitchStatus(_ request: DescribeEndpointSwitchStatusRequest) async throws -> DescribeEndpointSwitchStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEndpointSwitchStatusWithOptions(request as! DescribeEndpointSwitchStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEtlJobLogsWithOptions(_ request: DescribeEtlJobLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEtlJobLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEtlJobLogs",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEtlJobLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEtlJobLogs(_ request: DescribeEtlJobLogsRequest) async throws -> DescribeEtlJobLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEtlJobLogsWithOptions(request as! DescribeEtlJobLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFullProcessListWithOptions(_ request: DescribeFullProcessListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFullProcessListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFullProcessList",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFullProcessListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFullProcessList(_ request: DescribeFullProcessListRequest) async throws -> DescribeFullProcessListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFullProcessListWithOptions(request as! DescribeFullProcessListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGadInstancesWithOptions(_ request: DescribeGadInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGadInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbEngineTypes)) {
            query["DbEngineTypes"] = request.dbEngineTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterDbInstanceId)) {
            query["MasterDbInstanceId"] = request.masterDbInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slaveDbInstanceId)) {
            query["SlaveDbInstanceId"] = request.slaveDbInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGadInstances",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGadInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGadInstances(_ request: DescribeGadInstancesRequest) async throws -> DescribeGadInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGadInstancesWithOptions(request as! DescribeGadInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInitializationStatusWithOptions(_ request: DescribeInitializationStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInitializationStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInitializationStatus",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInitializationStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInitializationStatus(_ request: DescribeInitializationStatusRequest) async throws -> DescribeInitializationStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInitializationStatusWithOptions(request as! DescribeInitializationStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobMonitorRuleWithOptions(_ request: DescribeJobMonitorRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeJobMonitorRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeJobMonitorRule",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeJobMonitorRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobMonitorRule(_ request: DescribeJobMonitorRuleRequest) async throws -> DescribeJobMonitorRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeJobMonitorRuleWithOptions(request as! DescribeJobMonitorRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetricListWithOptions(_ request: DescribeMetricListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMetricListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            body["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            body["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.env)) {
            body["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricName)) {
            body["MetricName"] = request.metricName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            body["MetricType"] = request.metricType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerID)) {
            body["OwnerID"] = request.ownerID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.param)) {
            body["Param"] = request.param ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMetricList",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMetricListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetricList(_ request: DescribeMetricListRequest) async throws -> DescribeMetricListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMetricListWithOptions(request as! DescribeMetricListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobAlertWithOptions(_ request: DescribeMigrationJobAlertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMigrationJobAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobId)) {
            query["MigrationJobId"] = request.migrationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMigrationJobAlert",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMigrationJobAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobAlert(_ request: DescribeMigrationJobAlertRequest) async throws -> DescribeMigrationJobAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMigrationJobAlertWithOptions(request as! DescribeMigrationJobAlertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobDetailWithOptions(_ request: DescribeMigrationJobDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMigrationJobDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobId)) {
            query["MigrationJobId"] = request.migrationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationMode)) {
            query["MigrationMode"] = request.migrationMode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMigrationJobDetail",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMigrationJobDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobDetail(_ request: DescribeMigrationJobDetailRequest) async throws -> DescribeMigrationJobDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMigrationJobDetailWithOptions(request as! DescribeMigrationJobDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobStatusWithOptions(_ request: DescribeMigrationJobStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMigrationJobStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobId)) {
            query["MigrationJobId"] = request.migrationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMigrationJobStatus",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMigrationJobStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobStatus(_ request: DescribeMigrationJobStatusRequest) async throws -> DescribeMigrationJobStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMigrationJobStatusWithOptions(request as! DescribeMigrationJobStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobsWithOptions(_ request: DescribeMigrationJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMigrationJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobName)) {
            query["MigrationJobName"] = request.migrationJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMigrationJobs",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMigrationJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMigrationJobs(_ request: DescribeMigrationJobsRequest) async throws -> DescribeMigrationJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMigrationJobsWithOptions(request as! DescribeMigrationJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePreCheckCreateGadOrderResultWithOptions(_ request: DescribePreCheckCreateGadOrderResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePreCheckCreateGadOrderResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePreCheckCreateGadOrderResult",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePreCheckCreateGadOrderResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePreCheckCreateGadOrderResult(_ request: DescribePreCheckCreateGadOrderResultRequest) async throws -> DescribePreCheckCreateGadOrderResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePreCheckCreateGadOrderResultWithOptions(request as! DescribePreCheckCreateGadOrderResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePreCheckStatusWithOptions(_ request: DescribePreCheckStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePreCheckStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobCode)) {
            query["JobCode"] = request.jobCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.structPhase)) {
            query["StructPhase"] = request.structPhase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.structType)) {
            query["StructType"] = request.structType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePreCheckStatus",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePreCheckStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePreCheckStatus(_ request: DescribePreCheckStatusRequest) async throws -> DescribePreCheckStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePreCheckStatusWithOptions(request as! DescribePreCheckStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubscriptionInstanceAlertWithOptions(_ request: DescribeSubscriptionInstanceAlertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSubscriptionInstanceAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSubscriptionInstanceAlert",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSubscriptionInstanceAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubscriptionInstanceAlert(_ request: DescribeSubscriptionInstanceAlertRequest) async throws -> DescribeSubscriptionInstanceAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSubscriptionInstanceAlertWithOptions(request as! DescribeSubscriptionInstanceAlertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubscriptionInstanceStatusWithOptions(_ request: DescribeSubscriptionInstanceStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSubscriptionInstanceStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSubscriptionInstanceStatus",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSubscriptionInstanceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubscriptionInstanceStatus(_ request: DescribeSubscriptionInstanceStatusRequest) async throws -> DescribeSubscriptionInstanceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSubscriptionInstanceStatusWithOptions(request as! DescribeSubscriptionInstanceStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubscriptionInstancesWithOptions(_ request: DescribeSubscriptionInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSubscriptionInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceName)) {
            query["SubscriptionInstanceName"] = request.subscriptionInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSubscriptionInstances",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSubscriptionInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubscriptionInstances(_ request: DescribeSubscriptionInstancesRequest) async throws -> DescribeSubscriptionInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSubscriptionInstancesWithOptions(request as! DescribeSubscriptionInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubscriptionMetaWithOptions(_ tmpReq: DescribeSubscriptionMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSubscriptionMetaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeSubscriptionMetaShrinkRequest = DescribeSubscriptionMetaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.subMigrationJobIds)) {
            request.subMigrationJobIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subMigrationJobIds, "SubMigrationJobIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.topics)) {
            request.topicsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.topics, "Topics", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sid)) {
            query["Sid"] = request.sid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subMigrationJobIdsShrink)) {
            query["SubMigrationJobIds"] = request.subMigrationJobIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicsShrink)) {
            query["Topics"] = request.topicsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSubscriptionMeta",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSubscriptionMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSubscriptionMeta(_ request: DescribeSubscriptionMetaRequest) async throws -> DescribeSubscriptionMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSubscriptionMetaWithOptions(request as! DescribeSubscriptionMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSyncStatusWithOptions(_ request: DescribeSyncStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSyncStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.direction)) {
            query["Direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSyncStatus",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSyncStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSyncStatus(_ request: DescribeSyncStatusRequest) async throws -> DescribeSyncStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSyncStatusWithOptions(request as! DescribeSyncStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobAlertWithOptions(_ request: DescribeSynchronizationJobAlertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSynchronizationJobAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSynchronizationJobAlert",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSynchronizationJobAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobAlert(_ request: DescribeSynchronizationJobAlertRequest) async throws -> DescribeSynchronizationJobAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSynchronizationJobAlertWithOptions(request as! DescribeSynchronizationJobAlertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobReplicatorCompareWithOptions(_ request: DescribeSynchronizationJobReplicatorCompareRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSynchronizationJobReplicatorCompareResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSynchronizationJobReplicatorCompare",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSynchronizationJobReplicatorCompareResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobReplicatorCompare(_ request: DescribeSynchronizationJobReplicatorCompareRequest) async throws -> DescribeSynchronizationJobReplicatorCompareResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSynchronizationJobReplicatorCompareWithOptions(request as! DescribeSynchronizationJobReplicatorCompareRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobStatusWithOptions(_ request: DescribeSynchronizationJobStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSynchronizationJobStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSynchronizationJobStatus",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSynchronizationJobStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobStatus(_ request: DescribeSynchronizationJobStatusRequest) async throws -> DescribeSynchronizationJobStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSynchronizationJobStatusWithOptions(request as! DescribeSynchronizationJobStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobStatusListWithOptions(_ request: DescribeSynchronizationJobStatusListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSynchronizationJobStatusListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobIdListJsonStr)) {
            query["SynchronizationJobIdListJsonStr"] = request.synchronizationJobIdListJsonStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSynchronizationJobStatusList",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSynchronizationJobStatusListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobStatusList(_ request: DescribeSynchronizationJobStatusListRequest) async throws -> DescribeSynchronizationJobStatusListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSynchronizationJobStatusListWithOptions(request as! DescribeSynchronizationJobStatusListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobsWithOptions(_ request: DescribeSynchronizationJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSynchronizationJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobName)) {
            query["SynchronizationJobName"] = request.synchronizationJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSynchronizationJobs",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSynchronizationJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobs(_ request: DescribeSynchronizationJobsRequest) async throws -> DescribeSynchronizationJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSynchronizationJobsWithOptions(request as! DescribeSynchronizationJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationObjectModifyStatusWithOptions(_ request: DescribeSynchronizationObjectModifyStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSynchronizationObjectModifyStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSynchronizationObjectModifyStatus",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSynchronizationObjectModifyStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationObjectModifyStatus(_ request: DescribeSynchronizationObjectModifyStatusRequest) async throws -> DescribeSynchronizationObjectModifyStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSynchronizationObjectModifyStatusWithOptions(request as! DescribeSynchronizationObjectModifyStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTagKeysWithOptions(_ request: DescribeTagKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTagKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTagKeys",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTagKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTagKeys(_ request: DescribeTagKeysRequest) async throws -> DescribeTagKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTagKeysWithOptions(request as! DescribeTagKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTagValuesWithOptions(_ request: DescribeTagValuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTagValuesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTagValues",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTagValuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTagValues(_ request: DescribeTagValuesRequest) async throws -> DescribeTagValuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTagValuesWithOptions(request as! DescribeTagValuesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachGadInstanceDbMemberWithOptions(_ request: DetachGadInstanceDbMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachGadInstanceDbMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slaveDbInstanceId)) {
            query["SlaveDbInstanceId"] = request.slaveDbInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachGadInstanceDbMember",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachGadInstanceDbMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachGadInstanceDbMember(_ request: DetachGadInstanceDbMemberRequest) async throws -> DetachGadInstanceDbMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachGadInstanceDbMemberWithOptions(request as! DetachGadInstanceDbMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initDtsRdsInstanceWithOptions(_ request: InitDtsRdsInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitDtsRdsInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointCenId)) {
            query["EndpointCenId"] = request.endpointCenId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointInstanceId)) {
            query["EndpointInstanceId"] = request.endpointInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointInstanceType)) {
            query["EndpointInstanceType"] = request.endpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointRegion)) {
            query["EndpointRegion"] = request.endpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitDtsRdsInstance",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitDtsRdsInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initDtsRdsInstance(_ request: InitDtsRdsInstanceRequest) async throws -> InitDtsRdsInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initDtsRdsInstanceWithOptions(request as! InitDtsRdsInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDedicatedClusterWithOptions(_ request: ListDedicatedClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDedicatedClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderColumn)) {
            query["OrderColumn"] = request.orderColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderDirection)) {
            query["OrderDirection"] = request.orderDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDedicatedCluster",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDedicatedClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDedicatedCluster(_ request: ListDedicatedClusterRequest) async throws -> ListDedicatedClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDedicatedClusterWithOptions(request as! ListDedicatedClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobStepWithOptions(_ request: ListJobStepRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobStepResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobStep",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobStepResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobStep(_ request: ListJobStepRequest) async throws -> ListJobStepResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listJobStepWithOptions(request as! ListJobStepRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyConsumerChannelWithOptions(_ request: ModifyConsumerChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyConsumerChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consumerGroupId)) {
            query["ConsumerGroupId"] = request.consumerGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupName)) {
            query["ConsumerGroupName"] = request.consumerGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupPassword)) {
            query["ConsumerGroupPassword"] = request.consumerGroupPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupUserName)) {
            query["ConsumerGroupUserName"] = request.consumerGroupUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyConsumerChannel",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyConsumerChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyConsumerChannel(_ request: ModifyConsumerChannelRequest) async throws -> ModifyConsumerChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyConsumerChannelWithOptions(request as! ModifyConsumerChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyConsumerGroupPasswordWithOptions(_ request: ModifyConsumerGroupPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyConsumerGroupPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupID)) {
            query["ConsumerGroupID"] = request.consumerGroupID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupName)) {
            query["ConsumerGroupName"] = request.consumerGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupPassword)) {
            query["ConsumerGroupPassword"] = request.consumerGroupPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupUserName)) {
            query["ConsumerGroupUserName"] = request.consumerGroupUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumerGroupNewPassword)) {
            query["consumerGroupNewPassword"] = request.consumerGroupNewPassword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyConsumerGroupPassword",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyConsumerGroupPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyConsumerGroupPassword(_ request: ModifyConsumerGroupPasswordRequest) async throws -> ModifyConsumerGroupPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyConsumerGroupPasswordWithOptions(request as! ModifyConsumerGroupPasswordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyConsumptionTimestampWithOptions(_ request: ModifyConsumptionTimestampRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyConsumptionTimestampResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumptionTimestamp)) {
            query["ConsumptionTimestamp"] = request.consumptionTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyConsumptionTimestamp",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyConsumptionTimestampResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyConsumptionTimestamp(_ request: ModifyConsumptionTimestampRequest) async throws -> ModifyConsumptionTimestampResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyConsumptionTimestampWithOptions(request as! ModifyConsumptionTimestampRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDedicatedClusterWithOptions(_ request: ModifyDedicatedClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDedicatedClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            query["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterName)) {
            query["DedicatedClusterName"] = request.dedicatedClusterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oversoldRatio)) {
            query["OversoldRatio"] = request.oversoldRatio!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDedicatedCluster",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDedicatedClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDedicatedCluster(_ request: ModifyDedicatedClusterRequest) async throws -> ModifyDedicatedClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDedicatedClusterWithOptions(request as! ModifyDedicatedClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobWithOptions(_ tmpReq: ModifyDtsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDtsJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyDtsJobShrinkRequest = ModifyDtsJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dbList)) {
            request.dbListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dbList, "DbList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataInitialization)) {
            query["DataInitialization"] = request.dataInitialization!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSynchronization)) {
            query["DataSynchronization"] = request.dataSynchronization!;
        }
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileOssUrl)) {
            query["FileOssUrl"] = request.fileOssUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.structureInitialization)) {
            query["StructureInitialization"] = request.structureInitialization!;
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbListShrink)) {
            body["DbList"] = request.dbListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.etlOperatorColumnReference)) {
            body["EtlOperatorColumnReference"] = request.etlOperatorColumnReference ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterTableName)) {
            body["FilterTableName"] = request.filterTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyTypeEnum)) {
            body["ModifyTypeEnum"] = request.modifyTypeEnum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reserved)) {
            body["Reserved"] = request.reserved ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDtsJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDtsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJob(_ request: ModifyDtsJobRequest) async throws -> ModifyDtsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDtsJobWithOptions(request as! ModifyDtsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobAdvance(_ request: ModifyDtsJobAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDtsJobResponse {
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
            "Product": "Dts",
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
        var modifyDtsJobReq: ModifyDtsJobRequest = ModifyDtsJobRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, modifyDtsJobReq)
        if (!TeaUtils.Client.isUnset(request.fileOssUrlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.fileOssUrlObject!,
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any])
            modifyDtsJobReq.fileOssUrl = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var modifyDtsJobResp: ModifyDtsJobResponse = try await modifyDtsJobWithOptions(modifyDtsJobReq as! ModifyDtsJobRequest, runtime as! TeaUtils.RuntimeOptions)
        return modifyDtsJobResp as! ModifyDtsJobResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobConfigWithOptions(_ request: ModifyDtsJobConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDtsJobConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDtsJobConfig",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDtsJobConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobConfig(_ request: ModifyDtsJobConfigRequest) async throws -> ModifyDtsJobConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDtsJobConfigWithOptions(request as! ModifyDtsJobConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobDedicatedClusterWithOptions(_ request: ModifyDtsJobDedicatedClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDtsJobDedicatedClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            query["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobIds)) {
            query["DtsJobIds"] = request.dtsJobIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDtsJobDedicatedCluster",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDtsJobDedicatedClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobDedicatedCluster(_ request: ModifyDtsJobDedicatedClusterRequest) async throws -> ModifyDtsJobDedicatedClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDtsJobDedicatedClusterWithOptions(request as! ModifyDtsJobDedicatedClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobDuLimitWithOptions(_ request: ModifyDtsJobDuLimitRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDtsJobDuLimitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duLimit)) {
            query["DuLimit"] = request.duLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDtsJobDuLimit",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDtsJobDuLimitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobDuLimit(_ request: ModifyDtsJobDuLimitRequest) async throws -> ModifyDtsJobDuLimitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDtsJobDuLimitWithOptions(request as! ModifyDtsJobDuLimitRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobEndpointWithOptions(_ request: ModifyDtsJobEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDtsJobEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunUid)) {
            query["AliyunUid"] = request.aliyunUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.database)) {
            query["Database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["DryRun"] = request.dryRun!;
        }
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpoint)) {
            query["Endpoint"] = request.endpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointInstanceId)) {
            query["EndpointInstanceId"] = request.endpointInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointInstanceType)) {
            query["EndpointInstanceType"] = request.endpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointIp)) {
            query["EndpointIp"] = request.endpointIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointPort)) {
            query["EndpointPort"] = request.endpointPort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointRegionId)) {
            query["EndpointRegionId"] = request.endpointRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyAccount)) {
            query["ModifyAccount"] = request.modifyAccount!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            query["RoleName"] = request.roleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shardPassword)) {
            query["ShardPassword"] = request.shardPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shardUsername)) {
            query["ShardUsername"] = request.shardUsername ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDtsJobEndpoint",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDtsJobEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobEndpoint(_ request: ModifyDtsJobEndpointRequest) async throws -> ModifyDtsJobEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDtsJobEndpointWithOptions(request as! ModifyDtsJobEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobNameWithOptions(_ request: ModifyDtsJobNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDtsJobNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobName)) {
            query["DtsJobName"] = request.dtsJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDtsJobName",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDtsJobNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobName(_ request: ModifyDtsJobNameRequest) async throws -> ModifyDtsJobNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDtsJobNameWithOptions(request as! ModifyDtsJobNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobPasswordWithOptions(_ request: ModifyDtsJobPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDtsJobPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpoint)) {
            query["Endpoint"] = request.endpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDtsJobPassword",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDtsJobPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDtsJobPassword(_ request: ModifyDtsJobPasswordRequest) async throws -> ModifyDtsJobPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDtsJobPasswordWithOptions(request as! ModifyDtsJobPasswordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDynamicConfigWithOptions(_ request: ModifyDynamicConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDynamicConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configList)) {
            query["ConfigList"] = request.configList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableLimit)) {
            query["EnableLimit"] = request.enableLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.jobCode)) {
            query["JobCode"] = request.jobCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDynamicConfig",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDynamicConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDynamicConfig(_ request: ModifyDynamicConfigRequest) async throws -> ModifyDynamicConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDynamicConfigWithOptions(request as! ModifyDynamicConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGadInstanceNameWithOptions(_ request: ModifyGadInstanceNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyGadInstanceNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyGadInstanceName",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyGadInstanceNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyGadInstanceName(_ request: ModifyGadInstanceNameRequest) async throws -> ModifyGadInstanceNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyGadInstanceNameWithOptions(request as! ModifyGadInstanceNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyJobStepCheckpointWithOptions(_ request: ModifyJobStepCheckpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyJobStepCheckpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobStepId)) {
            query["JobStepId"] = request.jobStepId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newCheckPoint)) {
            query["NewCheckPoint"] = request.newCheckPoint!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyJobStepCheckpoint",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyJobStepCheckpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyJobStepCheckpoint(_ request: ModifyJobStepCheckpointRequest) async throws -> ModifyJobStepCheckpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyJobStepCheckpointWithOptions(request as! ModifyJobStepCheckpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySubscriptionWithOptions(_ request: ModifySubscriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbList)) {
            query["DbList"] = request.dbList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyType)) {
            query["ModifyType"] = request.modifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reserved)) {
            query["Reserved"] = request.reserved ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionDataTypeDDL)) {
            query["SubscriptionDataTypeDDL"] = request.subscriptionDataTypeDDL!;
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionDataTypeDML)) {
            query["SubscriptionDataTypeDML"] = request.subscriptionDataTypeDML!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySubscription",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySubscription(_ request: ModifySubscriptionRequest) async throws -> ModifySubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySubscriptionWithOptions(request as! ModifySubscriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySubscriptionObjectWithOptions(_ request: ModifySubscriptionObjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySubscriptionObjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionObject)) {
            query["SubscriptionObject"] = request.subscriptionObject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySubscriptionObject",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySubscriptionObjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySubscriptionObject(_ request: ModifySubscriptionObjectRequest) async throws -> ModifySubscriptionObjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySubscriptionObjectWithOptions(request as! ModifySubscriptionObjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySynchronizationObjectWithOptions(_ request: ModifySynchronizationObjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySynchronizationObjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.synchronizationObjects)) {
            body["SynchronizationObjects"] = request.synchronizationObjects ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySynchronizationObject",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySynchronizationObjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySynchronizationObject(_ request: ModifySynchronizationObjectRequest) async throws -> ModifySynchronizationObjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySynchronizationObjectWithOptions(request as! ModifySynchronizationObjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func preCheckCreateGadOrderWithOptions(_ request: PreCheckCreateGadOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PreCheckCreateGadOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterDatabaseName)) {
            query["MasterDatabaseName"] = request.masterDatabaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterEngineArchType)) {
            query["MasterEngineArchType"] = request.masterEngineArchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterShardAccountName)) {
            query["MasterShardAccountName"] = request.masterShardAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterShardAccountPassword)) {
            query["MasterShardAccountPassword"] = request.masterShardAccountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slaveDatabaseName)) {
            query["SlaveDatabaseName"] = request.slaveDatabaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slaveDbInstanceId)) {
            query["SlaveDbInstanceId"] = request.slaveDbInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slaveDbInstanceRegion)) {
            query["SlaveDbInstanceRegion"] = request.slaveDbInstanceRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slaveEngineArchType)) {
            query["SlaveEngineArchType"] = request.slaveEngineArchType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PreCheckCreateGadOrder",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PreCheckCreateGadOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func preCheckCreateGadOrder(_ request: PreCheckCreateGadOrderRequest) async throws -> PreCheckCreateGadOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await preCheckCreateGadOrderWithOptions(request as! PreCheckCreateGadOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewInstanceWithOptions(_ request: RenewInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buyCount)) {
            query["BuyCount"] = request.buyCount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewInstance",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewInstance(_ request: RenewInstanceRequest) async throws -> RenewInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewInstanceWithOptions(request as! RenewInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetDtsJobWithOptions(_ request: ResetDtsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetDtsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetDtsJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetDtsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetDtsJob(_ request: ResetDtsJobRequest) async throws -> ResetDtsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetDtsJobWithOptions(request as! ResetDtsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetSynchronizationJobWithOptions(_ request: ResetSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetSynchronizationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetSynchronizationJob(_ request: ResetSynchronizationJobRequest) async throws -> ResetSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetSynchronizationJobWithOptions(request as! ResetSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reverseTwoWayDirectionWithOptions(_ request: ReverseTwoWayDirectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReverseTwoWayDirectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreErrorSubJob)) {
            query["IgnoreErrorSubJob"] = request.ignoreErrorSubJob!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReverseTwoWayDirection",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReverseTwoWayDirectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reverseTwoWayDirection(_ request: ReverseTwoWayDirectionRequest) async throws -> ReverseTwoWayDirectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reverseTwoWayDirectionWithOptions(request as! ReverseTwoWayDirectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func shieldPrecheckWithOptions(_ request: ShieldPrecheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ShieldPrecheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.precheckItems)) {
            query["PrecheckItems"] = request.precheckItems ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ShieldPrecheck",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ShieldPrecheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func shieldPrecheck(_ request: ShieldPrecheckRequest) async throws -> ShieldPrecheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await shieldPrecheckWithOptions(request as! ShieldPrecheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipFullJobTableWithOptions(_ request: SkipFullJobTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SkipFullJobTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobProgressId)) {
            query["JobProgressId"] = request.jobProgressId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SkipFullJobTable",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SkipFullJobTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipFullJobTable(_ request: SkipFullJobTableRequest) async throws -> SkipFullJobTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await skipFullJobTableWithOptions(request as! SkipFullJobTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipPreCheckWithOptions(_ request: SkipPreCheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SkipPreCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skip)) {
            query["Skip"] = request.skip!;
        }
        if (!TeaUtils.Client.isUnset(request.skipPreCheckItems)) {
            query["SkipPreCheckItems"] = request.skipPreCheckItems ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipPreCheckNames)) {
            query["SkipPreCheckNames"] = request.skipPreCheckNames ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SkipPreCheck",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SkipPreCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipPreCheck(_ request: SkipPreCheckRequest) async throws -> SkipPreCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await skipPreCheckWithOptions(request as! SkipPreCheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDtsJobWithOptions(_ request: StartDtsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartDtsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartDtsJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartDtsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDtsJob(_ request: StartDtsJobRequest) async throws -> StartDtsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startDtsJobWithOptions(request as! StartDtsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDtsJobsWithOptions(_ request: StartDtsJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartDtsJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobIds)) {
            query["DtsJobIds"] = request.dtsJobIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartDtsJobs",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartDtsJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDtsJobs(_ request: StartDtsJobsRequest) async throws -> StartDtsJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startDtsJobsWithOptions(request as! StartDtsJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startMigrationJobWithOptions(_ request: StartMigrationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobId)) {
            query["MigrationJobId"] = request.migrationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartMigrationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startMigrationJob(_ request: StartMigrationJobRequest) async throws -> StartMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startMigrationJobWithOptions(request as! StartMigrationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startReverseWriterWithOptions(_ request: StartReverseWriterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartReverseWriterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkPoint)) {
            query["CheckPoint"] = request.checkPoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartReverseWriter",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartReverseWriterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startReverseWriter(_ request: StartReverseWriterRequest) async throws -> StartReverseWriterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startReverseWriterWithOptions(request as! StartReverseWriterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSubscriptionInstanceWithOptions(_ request: StartSubscriptionInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSubscriptionInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionInstanceId)) {
            query["SubscriptionInstanceId"] = request.subscriptionInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartSubscriptionInstance",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSubscriptionInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSubscriptionInstance(_ request: StartSubscriptionInstanceRequest) async throws -> StartSubscriptionInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startSubscriptionInstanceWithOptions(request as! StartSubscriptionInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSynchronizationJobWithOptions(_ request: StartSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartSynchronizationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSynchronizationJob(_ request: StartSynchronizationJobRequest) async throws -> StartSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startSynchronizationJobWithOptions(request as! StartSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDedicatedClusterWithOptions(_ request: StopDedicatedClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopDedicatedClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterId)) {
            query["DedicatedClusterId"] = request.dedicatedClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dedicatedClusterName)) {
            query["DedicatedClusterName"] = request.dedicatedClusterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopDedicatedCluster",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopDedicatedClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDedicatedCluster(_ request: StopDedicatedClusterRequest) async throws -> StopDedicatedClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopDedicatedClusterWithOptions(request as! StopDedicatedClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDtsJobWithOptions(_ request: StopDtsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopDtsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopDtsJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopDtsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDtsJob(_ request: StopDtsJobRequest) async throws -> StopDtsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopDtsJobWithOptions(request as! StopDtsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDtsJobsWithOptions(_ request: StopDtsJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopDtsJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobIds)) {
            query["DtsJobIds"] = request.dtsJobIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopDtsJobs",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopDtsJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDtsJobs(_ request: StopDtsJobsRequest) async throws -> StopDtsJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopDtsJobsWithOptions(request as! StopDtsJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMigrationJobWithOptions(_ request: StopMigrationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobId)) {
            query["MigrationJobId"] = request.migrationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopMigrationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMigrationJob(_ request: StopMigrationJobRequest) async throws -> StopMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopMigrationJobWithOptions(request as! StopMigrationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func summaryJobDetailWithOptions(_ request: SummaryJobDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SummaryJobDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobCode)) {
            query["JobCode"] = request.jobCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.structType)) {
            query["StructType"] = request.structType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SummaryJobDetail",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SummaryJobDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func summaryJobDetail(_ request: SummaryJobDetailRequest) async throws -> SummaryJobDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await summaryJobDetailWithOptions(request as! SummaryJobDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendDtsJobWithOptions(_ request: SuspendDtsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendDtsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendDtsJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendDtsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendDtsJob(_ request: SuspendDtsJobRequest) async throws -> SuspendDtsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendDtsJobWithOptions(request as! SuspendDtsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendDtsJobsWithOptions(_ request: SuspendDtsJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendDtsJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobIds)) {
            query["DtsJobIds"] = request.dtsJobIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendDtsJobs",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendDtsJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendDtsJobs(_ request: SuspendDtsJobsRequest) async throws -> SuspendDtsJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendDtsJobsWithOptions(request as! SuspendDtsJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendMigrationJobWithOptions(_ request: SuspendMigrationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendMigrationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.migrationJobId)) {
            query["MigrationJobId"] = request.migrationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendMigrationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendMigrationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendMigrationJob(_ request: SuspendMigrationJobRequest) async throws -> SuspendMigrationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendMigrationJobWithOptions(request as! SuspendMigrationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendSynchronizationJobWithOptions(_ request: SuspendSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendSynchronizationJob",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendSynchronizationJob(_ request: SuspendSynchronizationJobRequest) async throws -> SuspendSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendSynchronizationJobWithOptions(request as! SuspendSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchPhysicalDtsJobToCloudWithOptions(_ request: SwitchPhysicalDtsJobToCloudRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchPhysicalDtsJobToCloudResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsInstanceId)) {
            query["DtsInstanceId"] = request.dtsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchPhysicalDtsJobToCloud",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchPhysicalDtsJobToCloudResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchPhysicalDtsJobToCloud(_ request: SwitchPhysicalDtsJobToCloudRequest) async throws -> SwitchPhysicalDtsJobToCloudResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchPhysicalDtsJobToCloudWithOptions(request as! SwitchPhysicalDtsJobToCloudRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchSynchronizationEndpointWithOptions(_ request: SwitchSynchronizationEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchSynchronizationEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpoint)) {
            query["Endpoint"] = request.endpoint!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpoint)) {
            query["SourceEndpoint"] = request.sourceEndpoint!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchSynchronizationEndpoint",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchSynchronizationEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchSynchronizationEndpoint(_ request: SwitchSynchronizationEndpointRequest) async throws -> SwitchSynchronizationEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchSynchronizationEndpointWithOptions(request as! SwitchSynchronizationEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferInstanceClassWithOptions(_ request: TransferInstanceClassRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferInstanceClassResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceClass)) {
            query["InstanceClass"] = request.instanceClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferInstanceClass",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferInstanceClassResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferInstanceClass(_ request: TransferInstanceClassRequest) async throws -> TransferInstanceClassResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await transferInstanceClassWithOptions(request as! TransferInstanceClassRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferPayTypeWithOptions(_ request: TransferPayTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferPayTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.buyCount)) {
            query["BuyCount"] = request.buyCount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dtsJobId)) {
            query["DtsJobId"] = request.dtsJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceClass)) {
            query["InstanceClass"] = request.instanceClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDu)) {
            query["MaxDu"] = request.maxDu!;
        }
        if (!TeaUtils.Client.isUnset(request.minDu)) {
            query["MinDu"] = request.minDu!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferPayType",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferPayTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferPayType(_ request: TransferPayTypeRequest) async throws -> TransferPayTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await transferPayTypeWithOptions(request as! TransferPayTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeTwoWayWithOptions(_ request: UpgradeTwoWayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeTwoWayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceClass)) {
            query["InstanceClass"] = request.instanceClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeTwoWay",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeTwoWayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeTwoWay(_ request: UpgradeTwoWayRequest) async throws -> UpgradeTwoWayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeTwoWayWithOptions(request as! UpgradeTwoWayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func whiteIpListWithOptions(_ request: WhiteIpListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> WhiteIpListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destAliyunUid)) {
            query["DestAliyunUid"] = request.destAliyunUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destPrimaryVswId)) {
            query["DestPrimaryVswId"] = request.destPrimaryVswId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destRoleName)) {
            query["DestRoleName"] = request.destRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destSecondaryVswId)) {
            query["DestSecondaryVswId"] = request.destSecondaryVswId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destVpcId)) {
            query["DestVpcId"] = request.destVpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationRegion)) {
            query["DestinationRegion"] = request.destinationRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcAliyunUid)) {
            query["SrcAliyunUid"] = request.srcAliyunUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcPrimaryVswId)) {
            query["SrcPrimaryVswId"] = request.srcPrimaryVswId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcRoleName)) {
            query["SrcRoleName"] = request.srcRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcSecondaryVswId)) {
            query["SrcSecondaryVswId"] = request.srcSecondaryVswId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcVpcId)) {
            query["SrcVpcId"] = request.srcVpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zeroEtlJob)) {
            query["ZeroEtlJob"] = request.zeroEtlJob!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "WhiteIpList",
            "version": "2020-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(WhiteIpListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func whiteIpList(_ request: WhiteIpListRequest) async throws -> WhiteIpListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await whiteIpListWithOptions(request as! WhiteIpListRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
